/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : wlc

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2014-05-10 13:50:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wlc_attend
-- ----------------------------
DROP TABLE IF EXISTS `wlc_attend`;
CREATE TABLE `wlc_attend` (
  `attend_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '签到人',
  `date` date NOT NULL COMMENT '签到日期',
  `clockin` time DEFAULT NULL COMMENT '上班打卡时间',
  `clockout` time DEFAULT NULL COMMENT '下班打卡时间',
  `comment` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`attend_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9810 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wlc_attend
-- ----------------------------
INSERT INTO `wlc_attend` VALUES ('131', '2', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('132', '2', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('133', '2', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('134', '2', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('135', '2', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('136', '3', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('137', '3', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('138', '3', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('139', '3', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('140', '3', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('141', '4', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('142', '4', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('143', '4', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('144', '4', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('145', '4', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('146', '5', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('147', '5', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('148', '5', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('149', '5', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('150', '5', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('151', '10', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('152', '10', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('153', '10', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('154', '10', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('155', '10', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('156', '11', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('157', '11', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('158', '11', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('159', '11', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('160', '11', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('161', '12', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('162', '12', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('163', '12', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('164', '12', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('165', '12', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('166', '13', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('167', '13', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('168', '13', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('169', '13', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('170', '13', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('171', '14', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('172', '14', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('173', '14', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('174', '14', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('175', '14', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('176', '15', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('177', '15', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('178', '15', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('179', '15', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('180', '15', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('181', '16', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('182', '16', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('183', '16', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('184', '16', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('185', '16', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('186', '17', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('187', '17', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('188', '17', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('189', '17', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('190', '17', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('191', '18', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('192', '18', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('193', '18', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('194', '18', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('195', '18', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('196', '19', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('197', '19', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('198', '19', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('199', '19', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('200', '19', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('201', '20', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('202', '20', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('203', '20', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('204', '20', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('205', '20', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('206', '21', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('207', '21', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('208', '21', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('209', '21', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('210', '21', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('211', '22', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('212', '22', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('213', '22', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('214', '22', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('215', '22', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('216', '23', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('217', '23', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('218', '23', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('219', '23', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('220', '23', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('221', '33', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('222', '33', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('223', '33', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('224', '33', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('225', '33', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('226', '34', '2014-03-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('227', '34', '2014-03-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('228', '34', '2014-03-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('229', '34', '2014-03-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('230', '34', '2014-03-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('232', '2', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('233', '3', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('234', '4', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('235', '5', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('236', '10', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('237', '11', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('238', '12', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('239', '13', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('240', '14', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('241', '15', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('242', '16', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('243', '17', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('244', '18', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('245', '19', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('246', '20', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('247', '21', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('248', '22', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('249', '23', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('250', '33', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('251', '34', '2014-03-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('315', '2', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('316', '3', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('317', '4', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('318', '5', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('319', '10', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('320', '11', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('321', '12', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('322', '13', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('323', '14', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('324', '15', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('325', '16', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('326', '17', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('327', '18', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('328', '19', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('329', '20', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('330', '21', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('331', '22', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('332', '23', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('333', '33', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('334', '34', '2014-03-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('336', '2', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('337', '3', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('338', '4', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('339', '5', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('340', '10', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('341', '11', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('342', '12', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('343', '13', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('344', '14', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('345', '15', '2014-03-08', '22:23:22', '23:22:22', null);
INSERT INTO `wlc_attend` VALUES ('346', '16', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('347', '17', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('348', '18', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('349', '19', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('350', '20', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('351', '21', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('352', '22', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('353', '23', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('354', '33', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('355', '34', '2014-03-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('357', '10', '2014-03-09', '00:49:33', null, null);
INSERT INTO `wlc_attend` VALUES ('358', '2', '2014-03-09', '23:15:15', '23:15:16', null);
INSERT INTO `wlc_attend` VALUES ('359', '3', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('360', '4', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('361', '5', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('362', '11', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('363', '12', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('364', '13', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('365', '14', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('366', '15', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('367', '16', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('368', '17', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('369', '18', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('370', '19', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('371', '20', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('372', '21', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('373', '22', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('374', '23', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('375', '33', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('376', '34', '2014-03-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('377', '2', '2014-03-10', '08:01:58', '17:30:00', null);
INSERT INTO `wlc_attend` VALUES ('379', '5', '2014-03-10', '12:24:09', '23:12:27', null);
INSERT INTO `wlc_attend` VALUES ('380', '3', '2014-03-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('381', '4', '2014-03-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('382', '10', '2014-03-10', '08:00:10', '08:00:11', null);
INSERT INTO `wlc_attend` VALUES ('383', '11', '2014-03-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('384', '12', '2014-03-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('385', '13', '2014-03-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('386', '14', '2014-03-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('387', '15', '2014-03-10', '22:22:23', '23:22:22', null);
INSERT INTO `wlc_attend` VALUES ('388', '16', '2014-03-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('389', '17', '2014-03-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('390', '18', '2014-03-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('391', '19', '2014-03-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('392', '20', '2014-03-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('393', '21', '2014-03-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('394', '22', '2014-03-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('395', '23', '2014-03-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('396', '33', '2014-03-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('397', '34', '2014-03-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('398', '2', '2014-03-11', '09:18:59', '17:30:58', null);
INSERT INTO `wlc_attend` VALUES ('399', '3', '2014-03-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('400', '4', '2014-03-11', '08:33:33', null, null);
INSERT INTO `wlc_attend` VALUES ('401', '5', '2014-03-11', '08:07:28', '21:51:08', null);
INSERT INTO `wlc_attend` VALUES ('402', '10', '2014-03-11', '08:00:10', null, null);
INSERT INTO `wlc_attend` VALUES ('403', '11', '2014-03-11', '08:00:11', null, null);
INSERT INTO `wlc_attend` VALUES ('404', '12', '2014-03-11', '09:00:10', null, null);
INSERT INTO `wlc_attend` VALUES ('405', '13', '2014-03-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('406', '14', '2014-03-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('407', '15', '2014-03-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('408', '16', '2014-03-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('409', '17', '2014-03-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('410', '18', '2014-03-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('411', '19', '2014-03-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('412', '20', '2014-03-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('413', '21', '2014-03-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('414', '22', '2014-03-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('415', '23', '2014-03-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('416', '33', '2014-03-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('417', '34', '2014-03-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('418', '2', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('419', '3', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('420', '4', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('421', '5', '2014-03-12', '17:29:57', '20:08:41', null);
INSERT INTO `wlc_attend` VALUES ('422', '10', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('423', '11', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('424', '12', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('425', '13', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('426', '14', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('427', '15', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('428', '16', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('429', '17', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('430', '18', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('431', '19', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('432', '20', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('433', '21', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('434', '22', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('435', '23', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('436', '33', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('437', '34', '2014-03-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('438', '2', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('439', '3', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('440', '4', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('441', '5', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('442', '10', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('443', '11', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('444', '12', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('445', '13', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('446', '14', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('447', '15', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('448', '16', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('449', '17', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('450', '18', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('451', '19', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('452', '20', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('453', '21', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('454', '22', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('455', '23', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('456', '33', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('457', '34', '2014-03-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('458', '2', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('459', '3', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('460', '4', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('461', '5', '2014-03-14', '22:34:07', '22:34:08', null);
INSERT INTO `wlc_attend` VALUES ('462', '10', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('463', '11', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('464', '12', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('465', '13', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('466', '14', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('467', '15', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('468', '16', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('469', '17', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('470', '18', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('471', '19', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('472', '20', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('473', '21', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('474', '22', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('475', '23', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('476', '33', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('477', '34', '2014-03-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('478', '2', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('479', '3', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('480', '4', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('481', '5', '2014-03-15', '00:22:57', '20:15:59', null);
INSERT INTO `wlc_attend` VALUES ('482', '10', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('483', '11', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('484', '12', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('485', '13', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('486', '14', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('487', '15', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('488', '16', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('489', '17', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('490', '18', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('491', '19', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('492', '20', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('493', '21', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('494', '22', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('495', '23', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('496', '33', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('497', '34', '2014-03-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('498', '2', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('499', '3', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('500', '4', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('501', '5', '2014-03-16', '01:01:17', '18:19:31', null);
INSERT INTO `wlc_attend` VALUES ('502', '10', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('503', '11', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('504', '12', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('505', '13', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('506', '14', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('507', '15', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('508', '16', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('509', '17', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('510', '18', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('511', '19', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('512', '20', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('513', '21', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('514', '22', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('515', '23', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('516', '33', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('517', '34', '2014-03-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('518', '2', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('519', '3', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('520', '4', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('521', '5', '2014-03-17', '17:43:55', '17:43:55', null);
INSERT INTO `wlc_attend` VALUES ('522', '10', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('523', '11', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('524', '12', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('525', '13', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('526', '14', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('527', '15', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('528', '16', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('529', '17', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('530', '18', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('531', '19', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('532', '20', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('533', '21', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('534', '22', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('535', '23', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('536', '33', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('537', '34', '2014-03-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('538', '2', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('539', '3', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('540', '4', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('541', '5', '2014-03-18', '13:24:08', null, null);
INSERT INTO `wlc_attend` VALUES ('542', '10', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('543', '11', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('544', '12', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('545', '13', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('546', '14', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('547', '15', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('548', '16', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('549', '17', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('550', '18', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('551', '19', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('552', '20', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('553', '21', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('554', '22', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('555', '23', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('556', '33', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('557', '34', '2014-03-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('558', '2', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('559', '3', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('560', '4', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('561', '5', '2014-03-19', '23:46:54', '23:46:55', null);
INSERT INTO `wlc_attend` VALUES ('562', '10', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('563', '11', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('564', '12', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('565', '13', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('566', '14', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('567', '15', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('568', '16', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('569', '17', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('570', '18', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('571', '19', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('572', '20', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('573', '21', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('574', '22', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('575', '23', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('576', '33', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('577', '34', '2014-03-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('578', '2', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('579', '3', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('580', '4', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('581', '5', '2014-03-20', '21:58:27', '21:58:28', null);
INSERT INTO `wlc_attend` VALUES ('582', '10', '2014-03-20', '08:11:11', '17:30:22', null);
INSERT INTO `wlc_attend` VALUES ('583', '11', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('584', '12', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('585', '13', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('586', '14', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('587', '15', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('588', '16', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('589', '17', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('590', '18', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('591', '19', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('592', '20', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('593', '21', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('594', '22', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('595', '23', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('596', '33', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('597', '34', '2014-03-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('598', '2', '2014-03-21', '23:07:48', '23:07:48', null);
INSERT INTO `wlc_attend` VALUES ('599', '3', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('600', '4', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('601', '5', '2014-03-21', '11:25:34', '20:50:04', null);
INSERT INTO `wlc_attend` VALUES ('602', '10', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('603', '11', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('604', '12', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('605', '13', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('606', '14', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('607', '15', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('608', '16', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('609', '17', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('610', '18', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('611', '19', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('612', '20', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('613', '21', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('614', '22', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('615', '23', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('616', '33', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('617', '34', '2014-03-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('618', '2', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('619', '3', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('620', '4', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('621', '5', '2014-03-22', '10:34:26', null, null);
INSERT INTO `wlc_attend` VALUES ('622', '10', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('623', '11', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('624', '12', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('625', '13', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('626', '14', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('627', '15', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('628', '16', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('629', '17', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('630', '18', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('631', '19', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('632', '20', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('633', '21', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('634', '22', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('635', '23', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('636', '33', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('637', '34', '2014-03-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('638', '2', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('639', '3', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('640', '4', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('641', '5', '2014-03-23', '08:59:45', '17:37:36', null);
INSERT INTO `wlc_attend` VALUES ('642', '10', '2014-03-23', null, '17:31:00', null);
INSERT INTO `wlc_attend` VALUES ('643', '11', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('644', '12', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('645', '13', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('646', '14', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('647', '15', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('648', '16', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('649', '17', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('650', '18', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('651', '19', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('652', '20', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('653', '21', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('654', '22', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('655', '23', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('656', '33', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('657', '34', '2014-03-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('658', '2', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('659', '3', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('660', '4', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('661', '5', '2014-03-24', '08:53:23', null, null);
INSERT INTO `wlc_attend` VALUES ('662', '10', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('663', '11', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('664', '12', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('665', '13', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('666', '14', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('667', '15', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('668', '16', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('669', '17', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('670', '18', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('671', '19', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('672', '20', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('673', '21', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('674', '22', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('675', '23', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('676', '33', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('677', '34', '2014-03-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('678', '2', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('679', '3', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('680', '4', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('681', '5', '2014-03-25', '02:57:28', null, null);
INSERT INTO `wlc_attend` VALUES ('682', '10', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('683', '11', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('684', '12', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('685', '13', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('686', '14', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('687', '15', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('688', '16', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('689', '17', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('690', '18', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('691', '19', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('692', '20', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('693', '21', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('694', '22', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('695', '23', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('696', '33', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('697', '34', '2014-03-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('698', '2', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('699', '3', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('700', '4', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('701', '5', '2014-03-26', '20:07:16', '20:07:16', null);
INSERT INTO `wlc_attend` VALUES ('702', '10', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('703', '11', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('704', '12', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('705', '13', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('706', '14', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('707', '15', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('708', '16', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('709', '17', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('710', '18', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('711', '19', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('712', '20', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('713', '21', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('714', '22', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('715', '23', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('716', '33', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('717', '34', '2014-03-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('718', '2', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('719', '2', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('720', '3', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('721', '3', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('722', '4', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('723', '4', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('724', '5', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('725', '5', '2014-03-28', '10:13:16', null, null);
INSERT INTO `wlc_attend` VALUES ('726', '10', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('727', '10', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('728', '11', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('729', '11', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('730', '12', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('731', '12', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('732', '13', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('733', '13', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('734', '14', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('735', '14', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('736', '15', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('737', '15', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('738', '16', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('739', '16', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('740', '17', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('741', '17', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('742', '18', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('743', '18', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('744', '19', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('745', '19', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('746', '20', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('747', '20', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('748', '21', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('749', '21', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('750', '22', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('751', '22', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('752', '23', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('753', '23', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('754', '33', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('755', '33', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('756', '34', '2014-03-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('757', '34', '2014-03-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('758', '2', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('759', '3', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('760', '4', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('761', '5', '2014-03-29', '16:00:48', null, null);
INSERT INTO `wlc_attend` VALUES ('762', '10', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('763', '11', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('764', '12', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('765', '13', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('766', '14', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('767', '15', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('768', '16', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('769', '17', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('770', '18', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('771', '19', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('772', '20', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('773', '21', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('774', '22', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('775', '23', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('776', '33', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('777', '34', '2014-03-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('778', '2', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('779', '3', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('780', '4', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('781', '5', '2014-03-30', '08:01:21', '23:14:09', null);
INSERT INTO `wlc_attend` VALUES ('782', '10', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('783', '11', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('784', '12', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('785', '13', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('786', '14', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('787', '15', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('788', '16', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('789', '17', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('790', '18', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('791', '19', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('792', '20', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('793', '21', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('794', '22', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('795', '23', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('796', '33', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('797', '34', '2014-03-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('798', '2', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('799', '3', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('800', '4', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('801', '5', '2014-03-31', '08:31:34', null, null);
INSERT INTO `wlc_attend` VALUES ('802', '10', '2014-03-31', '08:00:00', null, null);
INSERT INTO `wlc_attend` VALUES ('803', '11', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('804', '12', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('805', '13', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('806', '14', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('807', '15', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('808', '16', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('809', '17', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('810', '18', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('811', '19', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('812', '20', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('813', '21', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('814', '22', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('815', '23', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('816', '33', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('817', '34', '2014-03-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('818', '2', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('819', '2', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('820', '3', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('821', '3', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('822', '4', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('823', '4', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('824', '5', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('825', '5', '2014-04-02', '10:25:41', null, null);
INSERT INTO `wlc_attend` VALUES ('826', '10', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('827', '10', '2014-04-02', '08:00:10', null, null);
INSERT INTO `wlc_attend` VALUES ('828', '11', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('829', '11', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('830', '12', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('831', '12', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('832', '13', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('833', '13', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('834', '14', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('835', '14', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('836', '15', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('837', '15', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('838', '16', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('839', '16', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('840', '17', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('841', '17', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('842', '18', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('843', '18', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('844', '19', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('845', '19', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('846', '20', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('847', '20', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('848', '21', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('849', '21', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('850', '22', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('851', '22', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('852', '23', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('853', '23', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('854', '33', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('855', '33', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('856', '34', '2014-04-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('857', '34', '2014-04-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('858', '2', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('859', '3', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('860', '4', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('861', '5', '2014-04-03', '08:42:42', null, null);
INSERT INTO `wlc_attend` VALUES ('862', '10', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('863', '11', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('864', '12', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('865', '13', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('866', '14', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('867', '15', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('868', '16', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('869', '17', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('870', '18', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('871', '19', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('872', '20', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('873', '21', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('874', '22', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('875', '23', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('876', '33', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('877', '34', '2014-04-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('878', '2', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('879', '3', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('880', '4', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('881', '5', '2014-04-04', '22:05:48', '22:05:50', null);
INSERT INTO `wlc_attend` VALUES ('882', '10', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('883', '11', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('884', '12', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('885', '13', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('886', '14', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('887', '15', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('888', '16', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('889', '17', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('890', '18', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('891', '19', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('892', '20', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('893', '21', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('894', '22', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('895', '23', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('896', '33', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('897', '34', '2014-04-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9346', '2', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9347', '3', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9348', '4', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9349', '5', '2014-04-05', '12:31:13', '21:54:52', null);
INSERT INTO `wlc_attend` VALUES ('9350', '10', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9351', '11', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9352', '12', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9353', '13', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9354', '14', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9355', '15', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9356', '16', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9357', '17', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9358', '18', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9359', '19', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9360', '20', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9361', '21', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9362', '22', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9363', '23', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9364', '33', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9365', '34', '2014-04-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9366', '2', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9367', '3', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9368', '4', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9369', '5', '2014-04-06', '10:08:53', null, null);
INSERT INTO `wlc_attend` VALUES ('9370', '10', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9371', '11', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9372', '12', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9373', '13', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9374', '14', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9375', '15', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9376', '16', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9377', '17', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9378', '18', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9379', '19', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9380', '20', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9381', '21', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9382', '22', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9383', '23', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9384', '33', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9385', '34', '2014-04-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9386', '2', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9387', '2', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9388', '3', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9389', '3', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9390', '4', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9391', '4', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9392', '5', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9393', '5', '2014-04-08', '14:15:49', '22:58:12', null);
INSERT INTO `wlc_attend` VALUES ('9394', '10', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9395', '10', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9396', '11', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9397', '11', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9398', '12', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9399', '12', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9400', '13', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9401', '13', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9402', '14', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9403', '14', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9404', '15', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9405', '15', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9406', '16', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9407', '16', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9408', '17', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9409', '17', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9410', '18', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9411', '18', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9412', '19', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9413', '19', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9414', '20', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9415', '20', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9416', '21', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9417', '21', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9418', '22', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9419', '22', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9420', '23', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9421', '23', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9422', '33', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9423', '33', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9424', '34', '2014-04-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9425', '34', '2014-04-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9426', '2', '2014-04-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9427', '3', '2014-04-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9428', '4', '2014-04-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9429', '5', '2014-04-09', '10:42:03', '23:41:21', null);
INSERT INTO `wlc_attend` VALUES ('9430', '10', '2014-04-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9431', '11', '2014-04-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9432', '12', '2014-04-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9433', '13', '2014-04-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9434', '14', '2014-04-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9435', '15', '2014-04-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9436', '16', '2014-04-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9437', '17', '2014-04-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9438', '2', '2014-04-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9439', '3', '2014-04-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9440', '4', '2014-04-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9441', '5', '2014-04-10', '07:50:38', '21:44:08', null);
INSERT INTO `wlc_attend` VALUES ('9442', '10', '2014-04-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9443', '11', '2014-04-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9444', '12', '2014-04-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9445', '13', '2014-04-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9446', '14', '2014-04-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9447', '15', '2014-04-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9448', '16', '2014-04-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9449', '17', '2014-04-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9450', '2', '2014-04-11', '00:02:57', null, null);
INSERT INTO `wlc_attend` VALUES ('9451', '3', '2014-04-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9452', '4', '2014-04-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9453', '5', '2014-04-11', '08:01:16', null, null);
INSERT INTO `wlc_attend` VALUES ('9454', '10', '2014-04-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9455', '11', '2014-04-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9456', '12', '2014-04-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9457', '13', '2014-04-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9458', '14', '2014-04-11', '08:59:25', null, null);
INSERT INTO `wlc_attend` VALUES ('9459', '15', '2014-04-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9460', '16', '2014-04-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9461', '17', '2014-04-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9462', '2', '2014-04-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9463', '2', '2014-04-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9464', '2', '2014-04-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9465', '3', '2014-04-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9466', '3', '2014-04-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9467', '3', '2014-04-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9468', '4', '2014-04-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9469', '4', '2014-04-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9470', '4', '2014-04-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9471', '5', '2014-04-12', null, null, '水水水水水');
INSERT INTO `wlc_attend` VALUES ('9472', '5', '2014-04-13', null, null, '大2打算打算打算大叔大叔大叔大叔');
INSERT INTO `wlc_attend` VALUES ('9473', '5', '2014-04-14', '23:44:57', '23:49:51', '啊啊');
INSERT INTO `wlc_attend` VALUES ('9474', '10', '2014-04-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9475', '10', '2014-04-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9476', '10', '2014-04-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9477', '11', '2014-04-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9478', '11', '2014-04-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9479', '11', '2014-04-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9480', '12', '2014-04-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9481', '12', '2014-04-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9482', '12', '2014-04-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9483', '13', '2014-04-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9484', '13', '2014-04-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9485', '13', '2014-04-14', '08:00:00', null, null);
INSERT INTO `wlc_attend` VALUES ('9486', '14', '2014-04-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9487', '14', '2014-04-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9488', '14', '2014-04-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9489', '15', '2014-04-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9490', '15', '2014-04-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9491', '15', '2014-04-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9492', '16', '2014-04-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9493', '16', '2014-04-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9494', '16', '2014-04-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9495', '17', '2014-04-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9496', '17', '2014-04-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9497', '17', '2014-04-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9498', '2', '2014-04-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9499', '3', '2014-04-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9500', '4', '2014-04-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9501', '5', '2014-04-15', '08:11:17', '11:31:41', null);
INSERT INTO `wlc_attend` VALUES ('9502', '10', '2014-04-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9503', '11', '2014-04-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9504', '12', '2014-04-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9505', '13', '2014-04-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9506', '14', '2014-04-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9507', '15', '2014-04-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9508', '16', '2014-04-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9509', '17', '2014-04-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9510', '2', '2014-04-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9511', '3', '2014-04-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9512', '4', '2014-04-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9513', '5', '2014-04-16', '08:36:59', '23:29:25', null);
INSERT INTO `wlc_attend` VALUES ('9514', '10', '2014-04-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9515', '11', '2014-04-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9516', '12', '2014-04-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9517', '13', '2014-04-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9518', '14', '2014-04-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9519', '15', '2014-04-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9520', '16', '2014-04-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9521', '17', '2014-04-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9522', '2', '2014-04-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9523', '3', '2014-04-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9524', '4', '2014-04-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9525', '5', '2014-04-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9526', '10', '2014-04-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9527', '11', '2014-04-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9528', '12', '2014-04-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9529', '13', '2014-04-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9530', '14', '2014-04-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9531', '15', '2014-04-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9532', '16', '2014-04-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9533', '17', '2014-04-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9534', '2', '2014-04-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9535', '3', '2014-04-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9536', '4', '2014-04-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9537', '5', '2014-04-18', '08:46:02', '23:48:44', null);
INSERT INTO `wlc_attend` VALUES ('9538', '10', '2014-04-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9539', '11', '2014-04-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9540', '12', '2014-04-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9541', '13', '2014-04-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9542', '14', '2014-04-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9543', '15', '2014-04-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9544', '16', '2014-04-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9545', '17', '2014-04-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9546', '2', '2014-04-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9547', '3', '2014-04-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9548', '4', '2014-04-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9549', '5', '2014-04-19', '00:08:57', '12:22:45', null);
INSERT INTO `wlc_attend` VALUES ('9550', '10', '2014-04-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9551', '11', '2014-04-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9552', '12', '2014-04-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9553', '13', '2014-04-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9554', '14', '2014-04-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9555', '15', '2014-04-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9556', '16', '2014-04-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9557', '17', '2014-04-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9558', '2', '2014-04-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9559', '3', '2014-04-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9560', '4', '2014-04-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9561', '5', '2014-04-20', '23:01:01', '23:01:04', null);
INSERT INTO `wlc_attend` VALUES ('9562', '10', '2014-04-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9563', '11', '2014-04-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9564', '12', '2014-04-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9565', '13', '2014-04-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9566', '14', '2014-04-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9567', '15', '2014-04-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9568', '16', '2014-04-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9569', '17', '2014-04-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9570', '2', '2014-04-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9571', '3', '2014-04-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9572', '4', '2014-04-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9573', '5', '2014-04-21', '08:29:28', '08:33:32', 'test');
INSERT INTO `wlc_attend` VALUES ('9574', '10', '2014-04-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9575', '11', '2014-04-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9576', '12', '2014-04-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9577', '13', '2014-04-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9578', '14', '2014-04-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9579', '15', '2014-04-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9580', '16', '2014-04-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9581', '17', '2014-04-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9582', '2', '2014-04-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9583', '3', '2014-04-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9584', '4', '2014-04-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9585', '5', '2014-04-22', '14:11:42', '14:11:53', null);
INSERT INTO `wlc_attend` VALUES ('9586', '10', '2014-04-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9587', '11', '2014-04-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9588', '12', '2014-04-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9589', '13', '2014-04-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9590', '14', '2014-04-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9591', '15', '2014-04-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9592', '16', '2014-04-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9593', '17', '2014-04-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9594', '2', '2014-04-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9595', '2', '2014-04-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9596', '2', '2014-04-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9597', '2', '2014-04-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9598', '2', '2014-04-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9599', '2', '2014-04-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9600', '3', '2014-04-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9601', '3', '2014-04-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9602', '3', '2014-04-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9603', '3', '2014-04-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9604', '3', '2014-04-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9605', '3', '2014-04-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9606', '4', '2014-04-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9607', '4', '2014-04-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9608', '4', '2014-04-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9609', '4', '2014-04-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9610', '4', '2014-04-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9611', '4', '2014-04-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9612', '5', '2014-04-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9613', '5', '2014-04-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9614', '5', '2014-04-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9615', '5', '2014-04-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9616', '5', '2014-04-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9617', '5', '2014-04-28', '10:07:31', '10:07:45', null);
INSERT INTO `wlc_attend` VALUES ('9618', '10', '2014-04-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9619', '10', '2014-04-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9620', '10', '2014-04-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9621', '10', '2014-04-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9622', '10', '2014-04-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9623', '10', '2014-04-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9624', '11', '2014-04-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9625', '11', '2014-04-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9626', '11', '2014-04-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9627', '11', '2014-04-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9628', '11', '2014-04-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9629', '11', '2014-04-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9630', '12', '2014-04-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9631', '12', '2014-04-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9632', '12', '2014-04-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9633', '12', '2014-04-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9634', '12', '2014-04-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9635', '12', '2014-04-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9636', '13', '2014-04-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9637', '13', '2014-04-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9638', '13', '2014-04-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9639', '13', '2014-04-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9640', '13', '2014-04-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9641', '13', '2014-04-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9642', '14', '2014-04-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9643', '14', '2014-04-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9644', '14', '2014-04-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9645', '14', '2014-04-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9646', '14', '2014-04-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9647', '14', '2014-04-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9648', '15', '2014-04-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9649', '15', '2014-04-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9650', '15', '2014-04-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9651', '15', '2014-04-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9652', '15', '2014-04-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9653', '15', '2014-04-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9654', '16', '2014-04-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9655', '16', '2014-04-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9656', '16', '2014-04-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9657', '16', '2014-04-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9658', '16', '2014-04-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9659', '16', '2014-04-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9660', '17', '2014-04-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9661', '17', '2014-04-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9662', '17', '2014-04-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9663', '17', '2014-04-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9664', '17', '2014-04-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9665', '17', '2014-04-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9666', '2', '2014-04-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9667', '3', '2014-04-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9668', '4', '2014-04-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9669', '5', '2014-04-29', '07:40:19', null, null);
INSERT INTO `wlc_attend` VALUES ('9670', '10', '2014-04-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9671', '11', '2014-04-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9672', '12', '2014-04-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9673', '13', '2014-04-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9674', '14', '2014-04-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9675', '15', '2014-04-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9676', '16', '2014-04-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9677', '17', '2014-04-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9678', '2', '2014-04-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9679', '3', '2014-04-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9680', '4', '2014-04-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9681', '5', '2014-04-30', '12:55:59', null, null);
INSERT INTO `wlc_attend` VALUES ('9682', '10', '2014-04-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9683', '11', '2014-04-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9684', '12', '2014-04-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9685', '13', '2014-04-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9686', '14', '2014-04-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9687', '15', '2014-04-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9688', '16', '2014-04-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9689', '17', '2014-04-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9690', '2', '2014-05-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9691', '3', '2014-05-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9692', '4', '2014-05-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9693', '5', '2014-05-01', '10:49:48', '21:03:32', null);
INSERT INTO `wlc_attend` VALUES ('9694', '10', '2014-05-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9695', '11', '2014-05-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9696', '12', '2014-05-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9697', '13', '2014-05-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9698', '14', '2014-05-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9699', '15', '2014-05-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9700', '16', '2014-05-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9701', '17', '2014-05-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9702', '2', '2014-05-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9703', '3', '2014-05-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9704', '4', '2014-05-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9705', '5', '2014-05-02', '10:48:49', null, null);
INSERT INTO `wlc_attend` VALUES ('9706', '10', '2014-05-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9707', '11', '2014-05-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9708', '12', '2014-05-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9709', '13', '2014-05-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9710', '14', '2014-05-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9711', '15', '2014-05-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9712', '16', '2014-05-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9713', '17', '2014-05-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9714', '2', '2014-05-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9715', '2', '2014-05-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9716', '3', '2014-05-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9717', '3', '2014-05-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9718', '4', '2014-05-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9719', '4', '2014-05-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9720', '5', '2014-05-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9721', '5', '2014-05-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9722', '10', '2014-05-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9723', '10', '2014-05-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9724', '11', '2014-05-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9725', '11', '2014-05-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9726', '12', '2014-05-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9727', '12', '2014-05-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9728', '13', '2014-05-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9729', '13', '2014-05-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9730', '14', '2014-05-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9731', '14', '2014-05-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9732', '15', '2014-05-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9733', '15', '2014-05-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9734', '16', '2014-05-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9735', '16', '2014-05-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9736', '17', '2014-05-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9737', '17', '2014-05-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9738', '2', '2014-05-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9739', '3', '2014-05-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9740', '4', '2014-05-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9741', '5', '2014-05-05', null, null, '====');
INSERT INTO `wlc_attend` VALUES ('9742', '10', '2014-05-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9743', '11', '2014-05-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9744', '12', '2014-05-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9745', '13', '2014-05-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9746', '14', '2014-05-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9747', '15', '2014-05-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9748', '16', '2014-05-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9749', '17', '2014-05-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9750', '2', '2014-05-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9751', '3', '2014-05-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9752', '4', '2014-05-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9753', '5', '2014-05-06', '10:17:38', '10:17:41', null);
INSERT INTO `wlc_attend` VALUES ('9754', '10', '2014-05-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9755', '11', '2014-05-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9756', '12', '2014-05-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9757', '13', '2014-05-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9758', '14', '2014-05-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9759', '15', '2014-05-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9760', '16', '2014-05-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9761', '17', '2014-05-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9762', '2', '2014-05-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9763', '3', '2014-05-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9764', '4', '2014-05-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9765', '5', '2014-05-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9766', '10', '2014-05-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9767', '11', '2014-05-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9768', '12', '2014-05-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9769', '13', '2014-05-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9770', '14', '2014-05-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9771', '15', '2014-05-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9772', '16', '2014-05-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9773', '17', '2014-05-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9774', '2', '2014-05-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9775', '3', '2014-05-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9776', '4', '2014-05-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9777', '5', '2014-05-08', '17:56:47', null, null);
INSERT INTO `wlc_attend` VALUES ('9778', '10', '2014-05-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9779', '11', '2014-05-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9780', '12', '2014-05-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9781', '13', '2014-05-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9782', '14', '2014-05-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9783', '15', '2014-05-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9784', '16', '2014-05-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9785', '17', '2014-05-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9786', '2', '2014-05-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9787', '3', '2014-05-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9788', '4', '2014-05-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9789', '5', '2014-05-09', '08:52:58', null, null);
INSERT INTO `wlc_attend` VALUES ('9790', '10', '2014-05-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9791', '11', '2014-05-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9792', '12', '2014-05-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9793', '13', '2014-05-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9794', '14', '2014-05-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9795', '15', '2014-05-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9796', '16', '2014-05-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9797', '17', '2014-05-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9798', '2', '2014-05-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9799', '3', '2014-05-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9800', '4', '2014-05-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9801', '5', '2014-05-10', '13:48:34', '13:48:36', null);
INSERT INTO `wlc_attend` VALUES ('9802', '10', '2014-05-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9803', '11', '2014-05-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9804', '12', '2014-05-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9805', '13', '2014-05-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9806', '14', '2014-05-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9807', '15', '2014-05-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9808', '16', '2014-05-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9809', '17', '2014-05-10', null, null, null);

-- ----------------------------
-- Table structure for wlc_borrow
-- ----------------------------
DROP TABLE IF EXISTS `wlc_borrow`;
CREATE TABLE `wlc_borrow` (
  `borrow_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '申请人',
  `date` date NOT NULL COMMENT '申请日期',
  `start_date` date NOT NULL COMMENT '开始时间',
  `end_date` date DEFAULT NULL,
  `goods_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '物品名称',
  `reason` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '请假原因',
  `check_status` smallint(6) NOT NULL DEFAULT '1' COMMENT '审核状态：1未审核2审核通过\r\n3审核驳回\r\n',
  `check_datetime` datetime DEFAULT NULL COMMENT '审核时间',
  `check_comment` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '批注注释',
  `return` smallint(6) DEFAULT '1' COMMENT '是否归还 1为未归还 2为已归还',
  PRIMARY KEY (`borrow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wlc_borrow
-- ----------------------------
INSERT INTO `wlc_borrow` VALUES ('4', '5', '2014-03-13', '2014-03-03', null, '[\"1\"]', ' dasdsaasdas', '2', '2014-03-20 08:23:38', 'aaa', '1');
INSERT INTO `wlc_borrow` VALUES ('5', '5', '2014-03-11', '2014-03-03', null, '[\"1\"]', ' dasdsaasdas', '3', '1970-01-01 08:00:00', '1395694155', '1');
INSERT INTO `wlc_borrow` VALUES ('10', '15', '2014-03-14', '2014-03-05', null, '[\"3\"]', '3', '2', '2014-03-22 23:17:20', '', '1');
INSERT INTO `wlc_borrow` VALUES ('13', '12', '2014-03-11', '2014-03-03', null, '[\"2\"]', ' dasdsaasdas', '3', '2014-03-21 08:23:55', 'bbbb', '1');
INSERT INTO `wlc_borrow` VALUES ('14', '11', '2014-03-10', '2014-03-03', null, '[\"4\"]', ' dasdsaasdas', '3', '2014-03-19 22:16:19', '', '1');
INSERT INTO `wlc_borrow` VALUES ('15', '12', '2014-03-10', '2014-03-03', null, '[\"1\"]', ' dasdsaasdas', '2', '2014-03-19 22:10:18', '', '1');
INSERT INTO `wlc_borrow` VALUES ('18', '5', '2014-03-10', '2014-03-03', null, '[\"7\"]', ' dasdsaasdas大叔大叔', '2', '2014-03-20 00:53:44', '', '1');
INSERT INTO `wlc_borrow` VALUES ('20', '7', '2014-03-23', '2014-03-03', null, '[\"1\"]', ' cdfdsfsdfsddsfdsfdsfds', '2', '2014-03-25 04:54:03', null, '1');
INSERT INTO `wlc_borrow` VALUES ('21', '7', '2014-03-23', '2014-03-13', null, '[\"5\"]', ' ╮(╯_╰)╭╮(╯_╰)╭寂寞', '3', '2014-05-10 13:24:40', '', '1');
INSERT INTO `wlc_borrow` VALUES ('22', '5', '2014-03-23', '2014-03-03', null, '[\"1\"]', '宿舍宿舍宿舍宿舍', '1', '2014-03-25 04:53:50', null, '1');
INSERT INTO `wlc_borrow` VALUES ('25', '5', '2014-03-24', '2014-03-03', null, '[\"6\"]', '大大叔大叔', '2', '2014-03-25 04:53:43', null, '1');
INSERT INTO `wlc_borrow` VALUES ('28', '14', '2014-04-11', '2014-04-01', '2014-04-29', '[\"1\"]', '111', '2', '2014-04-11 00:51:51', '', '2');
INSERT INTO `wlc_borrow` VALUES ('29', '14', '2014-04-11', '2014-04-01', null, '[\"1\"]', '测试测试测试', '2', '2014-04-11 09:01:43', '', '1');
INSERT INTO `wlc_borrow` VALUES ('30', '5', '2014-04-17', '2014-04-01', '2014-04-29', '[\"1\"]', 'test232323232131', '2', '2014-04-18 07:36:00', 'sddfs ', '2');
INSERT INTO `wlc_borrow` VALUES ('31', '5', '2014-04-29', '2014-04-09', null, '[\"1\",\"8\",\"13\"]', '大叔大叔', '1', null, null, '1');
INSERT INTO `wlc_borrow` VALUES ('36', '5', '2014-05-10', '2014-05-22', '2014-05-10', '[\"1\",\"2\",\"3\",\"4\",\"14\"]', 'fsdfsd fsdfdsf ', '2', '2014-05-10 12:31:22', '', '2');

-- ----------------------------
-- Table structure for wlc_department
-- ----------------------------
DROP TABLE IF EXISTS `wlc_department`;
CREATE TABLE `wlc_department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '科室名',
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wlc_department
-- ----------------------------
INSERT INTO `wlc_department` VALUES ('1', '基金工作科');
INSERT INTO `wlc_department` VALUES ('2', '校友工作科');
INSERT INTO `wlc_department` VALUES ('3', '校企合作科');
INSERT INTO `wlc_department` VALUES ('4', '综合办公室');

-- ----------------------------
-- Table structure for wlc_errand
-- ----------------------------
DROP TABLE IF EXISTS `wlc_errand`;
CREATE TABLE `wlc_errand` (
  `errand_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '申请人',
  `date` date NOT NULL COMMENT '申请日期',
  `start_date` date NOT NULL COMMENT '开始时间',
  `start_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `place` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '出差地点',
  `reason` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '请假原因',
  `cost` text COLLATE utf8_bin COMMENT '消费金额',
  `attachment_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `attachment_path` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `check_status` smallint(6) NOT NULL DEFAULT '1' COMMENT '审核状态：\r\n1申请;\r\n2待审核\r\n3审核通过;\r\n4审核驳回;\r\n\r\n ',
  `checker_id` int(11) DEFAULT NULL COMMENT '申请审核人id',
  `check_datetime` datetime DEFAULT NULL COMMENT '申请审核时间',
  `check_comment` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '申请审核批注',
  PRIMARY KEY (`errand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wlc_errand
-- ----------------------------
INSERT INTO `wlc_errand` VALUES ('4', '5', '2014-03-13', '2014-03-03', '01:00:00', '2014-03-19', '02:00:00', null, ' dasdsaasdas', null, null, null, '2', '8', '2014-03-20 08:23:38', 'aaa');
INSERT INTO `wlc_errand` VALUES ('5', '5', '2014-03-11', '2014-03-03', '05:00:00', '2014-03-19', '06:00:00', null, ' dasdsaasdas', null, null, null, '2', '8', '2014-03-14 08:23:43', 'aaaa');
INSERT INTO `wlc_errand` VALUES ('10', '15', '2014-03-14', '2014-03-05', '00:00:00', '2014-03-13', '00:00:00', null, ' dsadasdsadas', null, null, null, '2', '7', '2014-03-22 23:17:20', '');
INSERT INTO `wlc_errand` VALUES ('13', '12', '2014-03-11', '2014-03-03', '00:00:00', '2014-03-19', '00:00:00', null, ' dasdsaasdas', null, null, null, '3', '7', '2014-03-21 08:23:55', 'bbbb');
INSERT INTO `wlc_errand` VALUES ('14', '11', '2014-03-10', '2014-03-03', '00:00:00', '2014-03-19', '00:00:00', null, ' dasdsaasdas', null, null, null, '1', '7', '2014-03-19 22:16:19', '');
INSERT INTO `wlc_errand` VALUES ('15', '12', '2014-03-10', '2014-03-03', '00:00:00', '2014-03-19', '00:00:00', null, ' dasdsaasdas', null, null, null, '1', '7', '2014-03-19 22:10:18', '');
INSERT INTO `wlc_errand` VALUES ('18', '5', '2014-03-10', '2014-03-03', '00:00:00', '2014-03-27', '00:00:00', null, ' dasdsaasdas大叔大叔', null, null, null, '1', '7', '2014-03-20 00:53:44', '通过！');
INSERT INTO `wlc_errand` VALUES ('22', '7', '2014-03-28', '2014-03-03', '00:00:00', '2014-05-01', '06:00:00', '北京', 'ssssss', 0x5B5D, null, null, '2', '7', '2014-03-29 01:16:24', '是');
INSERT INTO `wlc_errand` VALUES ('36', '5', '2014-04-10', '2014-04-01', '02:00:00', '2014-04-02', '00:00:00', '北京', '测试测试', 0x5B7B2274797065223A22E4BAA4E9809AE5B7A5E585B7222C2264657461696C223A22E9A39EE69CBA222C22636F7374223A22393939227D2C7B2274797065223A22E4BAA4E9809AE5B7A5E585B7222C2264657461696C223A22E781ABE8BDA6222C22636F7374223A2238383838227D5D, null, null, '2', '8', '2014-04-10 08:48:21', null);
INSERT INTO `wlc_errand` VALUES ('40', '9', '2014-04-15', '2014-04-01', '00:00:00', '2014-04-02', '00:00:00', '11', '3333333333', 0x5B5D, null, null, '3', '6', '2014-04-15 11:12:59', null);
INSERT INTO `wlc_errand` VALUES ('111', '8', '2014-04-15', '2014-04-01', '04:00:00', '2014-04-02', '05:00:00', '22', '2232131232', 0x5B7B2274797065223A22E5B882E5A496E5B7AEE69785E8B4B9222C2264657461696C223A22E5AEBFE8888D222C22636F7374223A22323232227D5D, '学活场地申请系统 需求分析 (1).doc', '/Attachments/534eaef2209ea.doc', '3', '6', '2014-04-17 11:10:23', null);
INSERT INTO `wlc_errand` VALUES ('114', '5', '2014-04-18', '2014-04-01', '00:00:00', '2014-04-02', '00:00:00', '北京', '测试测试', 0x5B7B2274797065223A22E5B882E5A496E5B7AEE69785E8B4B9222C2264657461696C223A223232222C22636F7374223A223232227D5D, '出差总结表.doc', '/Attachments/535080d55c895.doc', '3', '6', '2014-04-18 09:33:39', '');

-- ----------------------------
-- Table structure for wlc_extra
-- ----------------------------
DROP TABLE IF EXISTS `wlc_extra`;
CREATE TABLE `wlc_extra` (
  `extra_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '申请人',
  `date` date NOT NULL COMMENT '申请日期',
  `start_date` date NOT NULL COMMENT '开始时间',
  `start_time` time NOT NULL COMMENT '开始时间',
  `end_date` date NOT NULL,
  `end_time` time NOT NULL COMMENT '结束时间',
  `reason` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '请假原因',
  `checker_id` int(11) DEFAULT NULL COMMENT '审核人id',
  `check_status` smallint(6) NOT NULL DEFAULT '1' COMMENT '审核状态：1未审核2审核通过\r\n3审核驳回\r\n',
  `check_datetime` datetime DEFAULT NULL COMMENT '审核时间',
  `check_comment` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '批注注释',
  `report` smallint(6) DEFAULT '1' COMMENT '1为未销假 2为已销假',
  PRIMARY KEY (`extra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wlc_extra
-- ----------------------------
INSERT INTO `wlc_extra` VALUES ('4', '5', '2014-03-13', '2014-03-03', '04:00:00', '2014-03-19', '17:00:00', ' dasdsaasdas', '8', '2', '2014-03-20 08:23:38', 'aaa', '2');
INSERT INTO `wlc_extra` VALUES ('5', '5', '2014-03-11', '2014-03-03', '04:00:00', '2014-03-19', '17:00:00', ' dasdsaasdas', '8', '3', '2014-03-14 08:23:43', 'aaaa', '1');
INSERT INTO `wlc_extra` VALUES ('13', '12', '2014-03-11', '2014-03-03', '04:00:00', '2014-03-19', '17:00:00', ' dasdsaasdas', '8', '3', '2014-03-21 08:23:55', 'bbbb', '1');
INSERT INTO `wlc_extra` VALUES ('14', '11', '2014-03-10', '2014-03-03', '04:00:00', '2014-03-19', '17:00:00', ' dasdsaasdas', '7', '3', '2014-03-19 22:16:19', '', '1');
INSERT INTO `wlc_extra` VALUES ('15', '12', '2014-03-10', '2014-03-03', '04:00:00', '2014-03-19', '17:00:00', ' dasdsaasdas', '7', '2', '2014-03-19 22:10:18', '', '2');
INSERT INTO `wlc_extra` VALUES ('18', '5', '2014-03-10', '2014-03-03', '04:00:00', '2014-03-27', '21:00:00', ' dasdsaasdas大叔大叔', '7', '2', '2014-03-20 00:53:44', '', '1');
INSERT INTO `wlc_extra` VALUES ('23', '14', '2014-04-11', '2014-04-01', '00:00:00', '2014-04-06', '09:00:00', '我要请假！', '7', '2', '2014-04-11 00:19:19', '同意！', '2');
INSERT INTO `wlc_extra` VALUES ('29', '5', '2014-04-18', '2014-04-01', '01:00:00', '2014-04-04', '04:00:00', 'test擦擦擦擦擦', '6', '2', '2014-04-18 19:20:00', '而我认为搭档', '1');
INSERT INTO `wlc_extra` VALUES ('30', '6', '2014-04-18', '2014-04-01', '00:00:00', '2014-04-02', '05:00:00', '大叔大叔萨达似懂非懂', '6', '3', '2014-04-18 10:46:49', '大叔大叔', '1');
INSERT INTO `wlc_extra` VALUES ('33', '6', '2014-04-18', '2014-04-01', '01:00:00', '2014-04-11', '10:00:00', '撒大叔大叔', '7', '2', '2014-04-18 19:25:27', 'dsa', '1');

-- ----------------------------
-- Table structure for wlc_goods
-- ----------------------------
DROP TABLE IF EXISTS `wlc_goods`;
CREATE TABLE `wlc_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goods_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `goods_parts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wlc_goods
-- ----------------------------
INSERT INTO `wlc_goods` VALUES ('1', '0607406s', '松下数码相机', '数据线1条、充电器1个、电池1个');
INSERT INTO `wlc_goods` VALUES ('2', '1215718s', '尼康D700单反相机', '数据线1条、充电器1个、充电线1条、读卡器1个、三脚架一个');
INSERT INTO `wlc_goods` VALUES ('3', '1301672s', '佳能摄像机', '充电线1条、数据线1条、接口线1条');
INSERT INTO `wlc_goods` VALUES ('4', '2014001', '佳能数码相机', '充电器1个');
INSERT INTO `wlc_goods` VALUES ('5', '0805724s', '投影仪', '接口线1条');
INSERT INTO `wlc_goods` VALUES ('6', '1213677s', '联想笔记本', '充电线1条');
INSERT INTO `wlc_goods` VALUES ('7', 'PC2012001', '联想笔记本', '充电器1个');
INSERT INTO `wlc_goods` VALUES ('8', '1200893S', '便携式计算机', '充电线1条');
INSERT INTO `wlc_goods` VALUES ('9', '1200892S', '便携式计算机', '充电线1条');
INSERT INTO `wlc_goods` VALUES ('10', '1200891S', '便携式计算机', '充电线1条');
INSERT INTO `wlc_goods` VALUES ('11', '1220491S', '便携式计算机', '充电线1条');
INSERT INTO `wlc_goods` VALUES ('12', '1303001S', '便携式计算机', '充电线1条');
INSERT INTO `wlc_goods` VALUES ('13', 'Lyb2013001', 'Sony录音笔', '');
INSERT INTO `wlc_goods` VALUES ('14', 'Lyb2013002', 'Sony录音笔', '');

-- ----------------------------
-- Table structure for wlc_leave
-- ----------------------------
DROP TABLE IF EXISTS `wlc_leave`;
CREATE TABLE `wlc_leave` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '申请人',
  `date` date NOT NULL COMMENT '申请日期',
  `type` smallint(6) NOT NULL COMMENT '请假类型：\r\n0-婚假; \r\n1-丧假; \r\n2-产假; \r\n3-事假; \r\n4-病假; \r\n5-休假; \r\n6-其他;',
  `start_date` date NOT NULL COMMENT '开始时间',
  `start_time` time NOT NULL COMMENT '开始时间',
  `end_date` date NOT NULL,
  `end_time` time NOT NULL COMMENT '结束时间',
  `reason` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '请假原因',
  `checker_id` int(11) DEFAULT NULL COMMENT '审核人id',
  `check_status` smallint(6) NOT NULL DEFAULT '1' COMMENT '审核状态：1未审核2审核通过\r\n3审核驳回\r\n',
  `check_datetime` datetime DEFAULT NULL COMMENT '审核时间',
  `check_comment` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '批注注释',
  `report` smallint(6) DEFAULT '1' COMMENT '1为未销假 2为已销假',
  PRIMARY KEY (`leave_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wlc_leave
-- ----------------------------
INSERT INTO `wlc_leave` VALUES ('4', '5', '2014-03-13', '2', '2014-03-03', '04:00:00', '2014-03-19', '17:00:00', ' dasdsaasdas', '8', '2', '2014-03-20 08:23:38', 'aaa', '2');
INSERT INTO `wlc_leave` VALUES ('5', '5', '2014-03-11', '3', '2014-03-03', '04:00:00', '2014-03-19', '17:00:00', ' dasdsaasdas', '8', '3', '2014-03-14 08:23:43', 'aaaa', '1');
INSERT INTO `wlc_leave` VALUES ('13', '12', '2014-03-11', '3', '2014-03-03', '04:00:00', '2014-03-19', '17:00:00', ' dasdsaasdas', '8', '3', '2014-03-21 08:23:55', 'bbbb', '1');
INSERT INTO `wlc_leave` VALUES ('14', '11', '2014-03-10', '4', '2014-03-03', '04:00:00', '2014-03-19', '17:00:00', ' dasdsaasdas', '7', '3', '2014-03-19 22:16:19', '', '1');
INSERT INTO `wlc_leave` VALUES ('15', '12', '2014-03-10', '5', '2014-03-03', '04:00:00', '2014-03-19', '17:00:00', ' dasdsaasdas', '7', '2', '2014-03-19 22:10:18', '', '2');
INSERT INTO `wlc_leave` VALUES ('18', '5', '2014-03-10', '3', '2014-03-03', '04:00:00', '2014-03-27', '20:00:00', ' dasdsaasdas大叔大叔', '7', '2', '2014-03-20 00:53:44', '', '1');
INSERT INTO `wlc_leave` VALUES ('23', '14', '2014-04-11', '0', '2014-04-01', '00:00:00', '2014-04-06', '09:00:00', '我要请假！', '7', '2', '2014-04-11 00:19:19', '同意！', '2');
INSERT INTO `wlc_leave` VALUES ('29', '5', '2014-04-18', '0', '2014-04-01', '01:00:00', '2014-04-04', '05:00:00', 'test擦擦擦擦擦', '6', '2', '2014-04-18 09:34:58', '', '2');
INSERT INTO `wlc_leave` VALUES ('30', '5', '2014-04-18', '0', '2014-04-01', '00:00:00', '2014-04-02', '05:00:00', '大叔大叔萨达似懂非懂', '6', '1', '2014-04-18 10:46:49', '大叔大叔', '1');

-- ----------------------------
-- Table structure for wlc_order
-- ----------------------------
DROP TABLE IF EXISTS `wlc_order`;
CREATE TABLE `wlc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订餐Id',
  `user_id` int(11) NOT NULL COMMENT '申请人',
  `date` date DEFAULT NULL COMMENT '申请时间',
  `place` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '订餐地点',
  `reason` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '订餐原因',
  `number` int(11) NOT NULL COMMENT '加班人数',
  `standard` int(11) NOT NULL COMMENT '每人餐标',
  `check_status` int(11) DEFAULT '1' COMMENT '审批状态 1为待审批 2为审批通过 3为审批驳回',
  `checker_id` int(11) DEFAULT NULL COMMENT '申请审核人id',
  `check_datetime` datetime DEFAULT NULL COMMENT '审批时间',
  `check_comment` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wlc_order
-- ----------------------------
INSERT INTO `wlc_order` VALUES ('1', '5', '2014-03-21', '爱仕达', '爱仕达', '22', '22', '2', '7', '2014-03-22 00:33:49', '333');
INSERT INTO `wlc_order` VALUES ('3', '11', '2014-03-18', 'dsadasfewrwer', 'dasdasrwerwerewrewre', '111', '3', '2', '7', '2014-03-22 00:44:24', '1395419455');
INSERT INTO `wlc_order` VALUES ('4', '12', '2014-03-17', 'dsadas', 'dasdas', '6', '8', '2', '7', null, null);
INSERT INTO `wlc_order` VALUES ('5', '13', '2014-03-16', 'dsadas', 'dasdas', '1', '7', '2', '8', null, null);
INSERT INTO `wlc_order` VALUES ('6', '14', '2014-03-15', '王德福', '工作太多', '3', '20', '2', '7', '2014-04-11 00:24:38', '恩准！');
INSERT INTO `wlc_order` VALUES ('7', '15', '2014-03-15', 'dsadasfsd', 'dasdas', '1', '2', '2', '7', null, null);
INSERT INTO `wlc_order` VALUES ('11', '5', '2014-03-22', 'ppp', 'kkk', '99', '99', '2', '7', '2014-03-23 16:19:29', '');
INSERT INTO `wlc_order` VALUES ('12', '5', '2014-04-02', '测试', '测试2', '113', '22', '2', '7', '2014-04-02 10:36:23', '是');
INSERT INTO `wlc_order` VALUES ('13', '5', '2014-04-08', '王德福', '工作太多', '2', '60', '2', '7', '2014-04-08 17:06:57', '不通过 太贵了！');
INSERT INTO `wlc_order` VALUES ('14', '5', '2014-04-09', 'dsadas', '大苏打', '22', '21', '2', '7', '2014-04-10 10:50:10', 'testsss');
INSERT INTO `wlc_order` VALUES ('22', '5', '2014-04-18', '111111111', '33333333333333', '1', '1', '2', null, null, null);
INSERT INTO `wlc_order` VALUES ('23', '5', '2014-04-29', '大叔大叔', '大苏打', '33', '33', '2', '7', null, null);

-- ----------------------------
-- Table structure for wlc_user
-- ----------------------------
DROP TABLE IF EXISTS `wlc_user`;
CREATE TABLE `wlc_user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '员工id',
  `username` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '员工登录名',
  `password` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '员工密码',
  `alias` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '员工别名',
  `privilege` int(2) unsigned NOT NULL DEFAULT '2' COMMENT '用户权限 \r\n0为管理员\r\n 1为处长 2为科长 3为普通员工',
  `department_id` int(11) DEFAULT NULL COMMENT '科室id',
  `superior` int(11) DEFAULT NULL COMMENT '上级',
  `need_clock` int(2) NOT NULL DEFAULT '1' COMMENT '是否需要签到',
  `recent_date` date DEFAULT NULL COMMENT '最后签到日期',
  `recent_work` date DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wlc_user
-- ----------------------------
INSERT INTO `wlc_user` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '0', null, '1', '0', null, null);
INSERT INTO `wlc_user` VALUES ('2', '8304', 'e10adc3949ba59abbe56e057f20f883e', '黄晨', '2', '1', '7', '1', '2014-05-10', '2014-05-05');
INSERT INTO `wlc_user` VALUES ('3', '8003', 'e10adc3949ba59abbe56e057f20f883e', '毕斐', '2', '2', '8', '1', '2014-05-10', '2014-05-05');
INSERT INTO `wlc_user` VALUES ('4', '70030', 'e10adc3949ba59abbe56e057f20f883e', '孙雪亮\r\n', '2', '3', '8', '1', '2014-05-10', '2014-05-05');
INSERT INTO `wlc_user` VALUES ('5', '70028', 'e10adc3949ba59abbe56e057f20f883e', '黄微', '2', '4', '7', '1', '2014-05-10', '2014-05-05');
INSERT INTO `wlc_user` VALUES ('6', '7767', 'e10adc3949ba59abbe56e057f20f883e', '尹激', '1', null, '6', '0', null, null);
INSERT INTO `wlc_user` VALUES ('7', '2642', 'e10adc3949ba59abbe56e057f20f883e', '徐劲松', '1', null, '7', '0', null, null);
INSERT INTO `wlc_user` VALUES ('8', '544', 'e10adc3949ba59abbe56e057f20f883e', '白雁', '1', null, '8', '0', null, null);
INSERT INTO `wlc_user` VALUES ('10', '70029', 'e10adc3949ba59abbe56e057f20f883e', '饶芳', '3', '2', '3', '1', '2014-05-10', '2014-05-05');
INSERT INTO `wlc_user` VALUES ('11', '70389', 'e10adc3949ba59abbe56e057f20f883e', '李文一', '3', '2', '3', '1', '2014-05-10', '2014-05-05');
INSERT INTO `wlc_user` VALUES ('12', '70423', 'e10adc3949ba59abbe56e057f20f883e', '包涵', '3', '2', '3', '1', '2014-05-10', '2014-05-05');
INSERT INTO `wlc_user` VALUES ('13', '70437', 'e10adc3949ba59abbe56e057f20f883e', '王晓霞', '3', '2', '3', '1', '2014-05-10', '2014-05-05');
INSERT INTO `wlc_user` VALUES ('14', '70740', 'e10adc3949ba59abbe56e057f20f883e', '王娴', '3', '1', '2', '1', '2014-05-10', '2014-05-05');
INSERT INTO `wlc_user` VALUES ('15', '70558', 'e10adc3949ba59abbe56e057f20f883e', '耿雪姣', '3', '1', '2', '1', '2014-05-10', '2014-05-05');
INSERT INTO `wlc_user` VALUES ('16', '201401', 'e10adc3949ba59abbe56e057f20f883e', '高默咛', '3', '1', '2', '1', '2014-05-10', '2014-05-05');
INSERT INTO `wlc_user` VALUES ('17', '201402', 'e10adc3949ba59abbe56e057f20f883e', '黄庆华', '3', '1', '2', '1', '2014-05-10', '2014-05-05');

-- ----------------------------
-- Table structure for wlc_work
-- ----------------------------
DROP TABLE IF EXISTS `wlc_work`;
CREATE TABLE `wlc_work` (
  `work_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL COMMENT '年份',
  `workplan` text COLLATE utf8_bin COMMENT '出访目标',
  `summary` text COLLATE utf8_bin COMMENT '总结',
  `comment` text COLLATE utf8_bin,
  `status` smallint(6) NOT NULL DEFAULT '1' COMMENT '工作计划状态：\r\n1不能填写;\r\n2允许填写;\r\n3已经填写;\r\n4已经审阅;\r\n5已经存档* 实时生成\r\n ',
  `check_datetime` datetime DEFAULT NULL COMMENT '申请审核时间',
  `checker_id` int(11) DEFAULT NULL COMMENT '申请审核人id',
  `check_comment` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '申请审核批注',
  PRIMARY KEY (`work_id`)
) ENGINE=InnoDB AUTO_INCREMENT=363 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wlc_work
-- ----------------------------
INSERT INTO `wlc_work` VALUES ('35', '2', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('36', '2', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('37', '2', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('38', '2', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('39', '2', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('40', '2', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('41', '2', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('42', '2', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('43', '2', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('44', '2', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('45', '2', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('46', '2', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('47', '2', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('48', '3', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('49', '3', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('50', '3', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('51', '3', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('52', '3', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('53', '3', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('54', '3', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('55', '3', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('56', '3', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('57', '3', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('58', '3', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('59', '3', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('60', '3', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('61', '4', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('62', '4', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('63', '4', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('64', '4', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('65', '4', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('66', '4', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('67', '4', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('68', '4', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('69', '4', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('70', '4', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('71', '4', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('72', '4', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('73', '4', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('74', '5', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('75', '5', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('76', '5', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('77', '5', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('78', '5', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('79', '5', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('80', '5', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('81', '5', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('82', '5', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('83', '5', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('84', '5', '2014-03-17', 0x5B5D, 0x617364, null, '3', null, '8', null);
INSERT INTO `wlc_work` VALUES ('85', '5', '2014-03-24', null, null, null, '3', null, null, null);
INSERT INTO `wlc_work` VALUES ('86', '5', '2014-03-31', 0x5B7B2264657461696C223A22222C2266696E697368223A66616C73652C22726561736F6E223A22227D2C7B2264657461696C223A22222C2266696E697368223A747275652C22726561736F6E223A22227D2C7B2264657461696C223A22222C2266696E697368223A747275652C22726561736F6E223A22227D5D, 0x7361646164, null, '3', null, null, null);
INSERT INTO `wlc_work` VALUES ('87', '10', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('88', '10', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('89', '10', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('90', '10', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('91', '10', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('92', '10', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('93', '10', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('94', '10', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('95', '10', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('96', '10', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('97', '10', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('98', '10', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('99', '10', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('100', '11', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('101', '11', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('102', '11', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('103', '11', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('104', '11', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('105', '11', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('106', '11', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('107', '11', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('108', '11', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('109', '11', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('110', '11', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('111', '11', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('112', '11', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('113', '12', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('114', '12', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('115', '12', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('116', '12', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('117', '12', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('118', '12', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('119', '12', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('120', '12', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('121', '12', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('122', '12', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('123', '12', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('124', '12', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('125', '12', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('126', '13', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('127', '13', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('128', '13', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('129', '13', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('130', '13', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('131', '13', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('132', '13', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('133', '13', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('134', '13', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('135', '13', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('136', '13', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('137', '13', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('138', '13', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('139', '14', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('140', '14', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('141', '14', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('142', '14', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('143', '14', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('144', '14', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('145', '14', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('146', '14', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('147', '14', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('148', '14', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('149', '14', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('150', '14', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('151', '14', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('152', '15', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('153', '15', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('154', '15', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('155', '15', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('156', '15', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('157', '15', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('158', '15', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('159', '15', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('160', '15', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('161', '15', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('162', '15', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('163', '15', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('164', '15', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('165', '16', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('166', '16', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('167', '16', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('168', '16', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('169', '16', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('170', '16', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('171', '16', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('172', '16', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('173', '16', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('174', '16', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('175', '16', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('176', '16', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('177', '16', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('178', '17', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('179', '17', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('180', '17', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('181', '17', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('182', '17', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('183', '17', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('184', '17', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('185', '17', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('186', '17', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('187', '17', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('188', '17', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('189', '17', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('190', '17', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('191', '18', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('192', '18', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('193', '18', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('194', '18', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('195', '18', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('196', '18', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('197', '18', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('198', '18', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('199', '18', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('200', '18', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('201', '18', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('202', '18', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('203', '18', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('204', '19', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('205', '19', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('206', '19', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('207', '19', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('208', '19', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('209', '19', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('210', '19', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('211', '19', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('212', '19', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('213', '19', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('214', '19', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('215', '19', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('216', '19', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('217', '20', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('218', '20', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('219', '20', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('220', '20', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('221', '20', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('222', '20', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('223', '20', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('224', '20', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('225', '20', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('226', '20', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('227', '20', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('228', '20', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('229', '20', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('230', '21', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('231', '21', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('232', '21', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('233', '21', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('234', '21', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('235', '21', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('236', '21', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('237', '21', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('238', '21', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('239', '21', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('240', '21', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('241', '21', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('242', '21', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('243', '22', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('244', '22', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('245', '22', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('246', '22', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('247', '22', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('248', '22', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('249', '22', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('250', '22', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('251', '22', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('252', '22', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('253', '22', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('254', '22', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('255', '22', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('256', '23', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('257', '23', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('258', '23', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('259', '23', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('260', '23', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('261', '23', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('262', '23', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('263', '23', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('264', '23', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('265', '23', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('266', '23', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('267', '23', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('268', '23', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('269', '33', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('270', '33', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('271', '33', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('272', '33', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('273', '33', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('274', '33', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('275', '33', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('276', '33', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('277', '33', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('278', '33', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('279', '33', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('280', '33', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('281', '33', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('282', '34', '2014-01-06', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('283', '34', '2014-01-13', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('284', '34', '2014-01-20', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('285', '34', '2014-01-27', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('286', '34', '2014-02-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('287', '34', '2014-02-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('288', '34', '2014-02-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('289', '34', '2014-02-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('290', '34', '2014-03-03', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('291', '34', '2014-03-10', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('292', '34', '2014-03-17', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('293', '34', '2014-03-24', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('294', '34', '2014-03-31', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('295', '2', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('296', '3', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('297', '4', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('298', '5', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('299', '10', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('300', '11', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('301', '12', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('302', '13', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('303', '14', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('304', '15', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('305', '16', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('306', '17', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('307', '18', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('308', '19', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('309', '20', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('310', '21', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('311', '22', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('312', '23', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('313', '33', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('314', '34', '2014-04-07', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('315', '2', '2014-04-14', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('316', '3', '2014-04-14', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('317', '4', '2014-04-14', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('318', '5', '2014-04-14', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('319', '10', '2014-04-14', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('320', '11', '2014-04-14', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('321', '12', '2014-04-14', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('322', '13', '2014-04-14', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('323', '14', '2014-04-14', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('324', '15', '2014-04-14', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('325', '16', '2014-04-14', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('326', '17', '2014-04-14', null, null, null, '1', null, null, null);
INSERT INTO `wlc_work` VALUES ('327', '2', '2014-04-21', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('328', '3', '2014-04-21', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('329', '4', '2014-04-21', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('330', '5', '2014-04-21', 0x5B7B2264657461696C223A2231222C2266696E697368223A66616C73652C22726561736F6E223A22227D2C7B2264657461696C223A2232222C2266696E697368223A66616C73652C22726561736F6E223A22227D2C7B2264657461696C223A2233222C2266696E697368223A66616C73652C22726561736F6E223A22227D5D, 0x6473616420, null, '3', null, null, null);
INSERT INTO `wlc_work` VALUES ('331', '10', '2014-04-21', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('332', '11', '2014-04-21', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('333', '12', '2014-04-21', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('334', '13', '2014-04-21', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('335', '14', '2014-04-21', null, null, null, '2', '2014-04-21 00:34:53', '6', null);
INSERT INTO `wlc_work` VALUES ('336', '15', '2014-04-21', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('337', '16', '2014-04-21', null, null, null, '4', '2014-04-21 00:35:31', '6', null);
INSERT INTO `wlc_work` VALUES ('338', '17', '2014-04-21', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('339', '2', '2014-04-28', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('340', '3', '2014-04-28', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('341', '4', '2014-04-28', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('342', '5', '2014-04-28', 0xE5958AE5958A, 0xE5958AE5958A, 0xE5958AE5958A, '4', '2014-05-07 09:19:31', '6', '的萨达');
INSERT INTO `wlc_work` VALUES ('343', '10', '2014-04-28', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('344', '11', '2014-04-28', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('345', '12', '2014-04-28', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('346', '13', '2014-04-28', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('347', '14', '2014-04-28', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('348', '15', '2014-04-28', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('349', '16', '2014-04-28', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('350', '17', '2014-04-28', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('351', '2', '2014-05-05', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('352', '3', '2014-05-05', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('353', '4', '2014-05-05', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('354', '5', '2014-05-05', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('355', '10', '2014-05-05', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('356', '11', '2014-05-05', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('357', '12', '2014-05-05', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('358', '13', '2014-05-05', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('359', '14', '2014-05-05', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('360', '15', '2014-05-05', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('361', '16', '2014-05-05', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('362', '17', '2014-05-05', null, null, null, '2', null, null, null);
