/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : wlc

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2014-04-02 19:46:17
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
  PRIMARY KEY (`attend_id`)
) ENGINE=InnoDB AUTO_INCREMENT=858 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wlc_attend
-- ----------------------------
INSERT INTO `wlc_attend` VALUES ('131', '2', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('132', '2', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('133', '2', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('134', '2', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('135', '2', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('136', '3', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('137', '3', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('138', '3', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('139', '3', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('140', '3', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('141', '4', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('142', '4', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('143', '4', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('144', '4', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('145', '4', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('146', '5', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('147', '5', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('148', '5', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('149', '5', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('150', '5', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('151', '10', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('152', '10', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('153', '10', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('154', '10', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('155', '10', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('156', '11', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('157', '11', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('158', '11', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('159', '11', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('160', '11', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('161', '12', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('162', '12', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('163', '12', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('164', '12', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('165', '12', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('166', '13', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('167', '13', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('168', '13', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('169', '13', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('170', '13', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('171', '14', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('172', '14', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('173', '14', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('174', '14', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('175', '14', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('176', '15', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('177', '15', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('178', '15', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('179', '15', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('180', '15', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('181', '16', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('182', '16', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('183', '16', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('184', '16', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('185', '16', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('186', '17', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('187', '17', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('188', '17', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('189', '17', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('190', '17', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('191', '18', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('192', '18', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('193', '18', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('194', '18', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('195', '18', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('196', '19', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('197', '19', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('198', '19', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('199', '19', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('200', '19', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('201', '20', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('202', '20', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('203', '20', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('204', '20', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('205', '20', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('206', '21', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('207', '21', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('208', '21', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('209', '21', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('210', '21', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('211', '22', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('212', '22', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('213', '22', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('214', '22', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('215', '22', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('216', '23', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('217', '23', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('218', '23', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('219', '23', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('220', '23', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('221', '33', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('222', '33', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('223', '33', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('224', '33', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('225', '33', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('226', '34', '2014-03-01', null, null);
INSERT INTO `wlc_attend` VALUES ('227', '34', '2014-03-02', null, null);
INSERT INTO `wlc_attend` VALUES ('228', '34', '2014-03-03', null, null);
INSERT INTO `wlc_attend` VALUES ('229', '34', '2014-03-04', null, null);
INSERT INTO `wlc_attend` VALUES ('230', '34', '2014-03-05', null, null);
INSERT INTO `wlc_attend` VALUES ('232', '2', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('233', '3', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('234', '4', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('235', '5', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('236', '10', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('237', '11', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('238', '12', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('239', '13', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('240', '14', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('241', '15', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('242', '16', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('243', '17', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('244', '18', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('245', '19', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('246', '20', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('247', '21', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('248', '22', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('249', '23', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('250', '33', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('251', '34', '2014-03-06', null, null);
INSERT INTO `wlc_attend` VALUES ('315', '2', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('316', '3', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('317', '4', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('318', '5', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('319', '10', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('320', '11', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('321', '12', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('322', '13', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('323', '14', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('324', '15', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('325', '16', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('326', '17', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('327', '18', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('328', '19', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('329', '20', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('330', '21', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('331', '22', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('332', '23', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('333', '33', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('334', '34', '2014-03-07', null, null);
INSERT INTO `wlc_attend` VALUES ('336', '2', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('337', '3', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('338', '4', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('339', '5', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('340', '10', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('341', '11', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('342', '12', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('343', '13', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('344', '14', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('345', '15', '2014-03-08', '22:23:22', '23:22:22');
INSERT INTO `wlc_attend` VALUES ('346', '16', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('347', '17', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('348', '18', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('349', '19', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('350', '20', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('351', '21', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('352', '22', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('353', '23', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('354', '33', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('355', '34', '2014-03-08', null, null);
INSERT INTO `wlc_attend` VALUES ('357', '10', '2014-03-09', '00:49:33', null);
INSERT INTO `wlc_attend` VALUES ('358', '2', '2014-03-09', '23:15:15', '23:15:16');
INSERT INTO `wlc_attend` VALUES ('359', '3', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('360', '4', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('361', '5', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('362', '11', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('363', '12', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('364', '13', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('365', '14', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('366', '15', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('367', '16', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('368', '17', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('369', '18', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('370', '19', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('371', '20', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('372', '21', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('373', '22', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('374', '23', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('375', '33', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('376', '34', '2014-03-09', null, null);
INSERT INTO `wlc_attend` VALUES ('377', '2', '2014-03-10', '08:01:58', '17:30:00');
INSERT INTO `wlc_attend` VALUES ('379', '5', '2014-03-10', '12:24:09', '23:12:27');
INSERT INTO `wlc_attend` VALUES ('380', '3', '2014-03-10', null, null);
INSERT INTO `wlc_attend` VALUES ('381', '4', '2014-03-10', null, null);
INSERT INTO `wlc_attend` VALUES ('382', '10', '2014-03-10', '08:00:10', '08:00:11');
INSERT INTO `wlc_attend` VALUES ('383', '11', '2014-03-10', null, null);
INSERT INTO `wlc_attend` VALUES ('384', '12', '2014-03-10', null, null);
INSERT INTO `wlc_attend` VALUES ('385', '13', '2014-03-10', null, null);
INSERT INTO `wlc_attend` VALUES ('386', '14', '2014-03-10', null, null);
INSERT INTO `wlc_attend` VALUES ('387', '15', '2014-03-10', '22:22:23', '23:22:22');
INSERT INTO `wlc_attend` VALUES ('388', '16', '2014-03-10', null, null);
INSERT INTO `wlc_attend` VALUES ('389', '17', '2014-03-10', null, null);
INSERT INTO `wlc_attend` VALUES ('390', '18', '2014-03-10', null, null);
INSERT INTO `wlc_attend` VALUES ('391', '19', '2014-03-10', null, null);
INSERT INTO `wlc_attend` VALUES ('392', '20', '2014-03-10', null, null);
INSERT INTO `wlc_attend` VALUES ('393', '21', '2014-03-10', null, null);
INSERT INTO `wlc_attend` VALUES ('394', '22', '2014-03-10', null, null);
INSERT INTO `wlc_attend` VALUES ('395', '23', '2014-03-10', null, null);
INSERT INTO `wlc_attend` VALUES ('396', '33', '2014-03-10', null, null);
INSERT INTO `wlc_attend` VALUES ('397', '34', '2014-03-10', null, null);
INSERT INTO `wlc_attend` VALUES ('398', '2', '2014-03-11', '09:18:59', '17:30:58');
INSERT INTO `wlc_attend` VALUES ('399', '3', '2014-03-11', null, null);
INSERT INTO `wlc_attend` VALUES ('400', '4', '2014-03-11', '08:33:33', null);
INSERT INTO `wlc_attend` VALUES ('401', '5', '2014-03-11', '08:07:28', '21:51:08');
INSERT INTO `wlc_attend` VALUES ('402', '10', '2014-03-11', '08:00:10', null);
INSERT INTO `wlc_attend` VALUES ('403', '11', '2014-03-11', '08:00:11', null);
INSERT INTO `wlc_attend` VALUES ('404', '12', '2014-03-11', '09:00:10', null);
INSERT INTO `wlc_attend` VALUES ('405', '13', '2014-03-11', null, null);
INSERT INTO `wlc_attend` VALUES ('406', '14', '2014-03-11', null, null);
INSERT INTO `wlc_attend` VALUES ('407', '15', '2014-03-11', null, null);
INSERT INTO `wlc_attend` VALUES ('408', '16', '2014-03-11', null, null);
INSERT INTO `wlc_attend` VALUES ('409', '17', '2014-03-11', null, null);
INSERT INTO `wlc_attend` VALUES ('410', '18', '2014-03-11', null, null);
INSERT INTO `wlc_attend` VALUES ('411', '19', '2014-03-11', null, null);
INSERT INTO `wlc_attend` VALUES ('412', '20', '2014-03-11', null, null);
INSERT INTO `wlc_attend` VALUES ('413', '21', '2014-03-11', null, null);
INSERT INTO `wlc_attend` VALUES ('414', '22', '2014-03-11', null, null);
INSERT INTO `wlc_attend` VALUES ('415', '23', '2014-03-11', null, null);
INSERT INTO `wlc_attend` VALUES ('416', '33', '2014-03-11', null, null);
INSERT INTO `wlc_attend` VALUES ('417', '34', '2014-03-11', null, null);
INSERT INTO `wlc_attend` VALUES ('418', '2', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('419', '3', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('420', '4', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('421', '5', '2014-03-12', '17:29:57', '20:08:41');
INSERT INTO `wlc_attend` VALUES ('422', '10', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('423', '11', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('424', '12', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('425', '13', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('426', '14', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('427', '15', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('428', '16', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('429', '17', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('430', '18', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('431', '19', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('432', '20', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('433', '21', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('434', '22', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('435', '23', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('436', '33', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('437', '34', '2014-03-12', null, null);
INSERT INTO `wlc_attend` VALUES ('438', '2', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('439', '3', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('440', '4', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('441', '5', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('442', '10', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('443', '11', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('444', '12', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('445', '13', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('446', '14', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('447', '15', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('448', '16', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('449', '17', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('450', '18', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('451', '19', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('452', '20', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('453', '21', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('454', '22', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('455', '23', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('456', '33', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('457', '34', '2014-03-13', null, null);
INSERT INTO `wlc_attend` VALUES ('458', '2', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('459', '3', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('460', '4', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('461', '5', '2014-03-14', '22:34:07', '22:34:08');
INSERT INTO `wlc_attend` VALUES ('462', '10', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('463', '11', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('464', '12', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('465', '13', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('466', '14', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('467', '15', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('468', '16', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('469', '17', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('470', '18', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('471', '19', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('472', '20', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('473', '21', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('474', '22', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('475', '23', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('476', '33', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('477', '34', '2014-03-14', null, null);
INSERT INTO `wlc_attend` VALUES ('478', '2', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('479', '3', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('480', '4', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('481', '5', '2014-03-15', '00:22:57', '20:15:59');
INSERT INTO `wlc_attend` VALUES ('482', '10', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('483', '11', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('484', '12', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('485', '13', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('486', '14', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('487', '15', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('488', '16', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('489', '17', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('490', '18', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('491', '19', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('492', '20', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('493', '21', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('494', '22', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('495', '23', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('496', '33', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('497', '34', '2014-03-15', null, null);
INSERT INTO `wlc_attend` VALUES ('498', '2', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('499', '3', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('500', '4', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('501', '5', '2014-03-16', '01:01:17', '18:19:31');
INSERT INTO `wlc_attend` VALUES ('502', '10', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('503', '11', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('504', '12', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('505', '13', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('506', '14', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('507', '15', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('508', '16', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('509', '17', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('510', '18', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('511', '19', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('512', '20', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('513', '21', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('514', '22', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('515', '23', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('516', '33', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('517', '34', '2014-03-16', null, null);
INSERT INTO `wlc_attend` VALUES ('518', '2', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('519', '3', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('520', '4', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('521', '5', '2014-03-17', '17:43:55', '17:43:55');
INSERT INTO `wlc_attend` VALUES ('522', '10', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('523', '11', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('524', '12', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('525', '13', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('526', '14', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('527', '15', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('528', '16', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('529', '17', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('530', '18', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('531', '19', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('532', '20', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('533', '21', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('534', '22', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('535', '23', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('536', '33', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('537', '34', '2014-03-17', null, null);
INSERT INTO `wlc_attend` VALUES ('538', '2', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('539', '3', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('540', '4', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('541', '5', '2014-03-18', '13:24:08', null);
INSERT INTO `wlc_attend` VALUES ('542', '10', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('543', '11', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('544', '12', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('545', '13', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('546', '14', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('547', '15', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('548', '16', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('549', '17', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('550', '18', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('551', '19', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('552', '20', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('553', '21', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('554', '22', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('555', '23', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('556', '33', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('557', '34', '2014-03-18', null, null);
INSERT INTO `wlc_attend` VALUES ('558', '2', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('559', '3', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('560', '4', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('561', '5', '2014-03-19', '23:46:54', '23:46:55');
INSERT INTO `wlc_attend` VALUES ('562', '10', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('563', '11', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('564', '12', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('565', '13', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('566', '14', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('567', '15', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('568', '16', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('569', '17', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('570', '18', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('571', '19', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('572', '20', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('573', '21', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('574', '22', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('575', '23', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('576', '33', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('577', '34', '2014-03-19', null, null);
INSERT INTO `wlc_attend` VALUES ('578', '2', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('579', '3', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('580', '4', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('581', '5', '2014-03-20', '21:58:27', '21:58:28');
INSERT INTO `wlc_attend` VALUES ('582', '10', '2014-03-20', '08:11:11', '17:30:22');
INSERT INTO `wlc_attend` VALUES ('583', '11', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('584', '12', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('585', '13', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('586', '14', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('587', '15', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('588', '16', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('589', '17', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('590', '18', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('591', '19', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('592', '20', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('593', '21', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('594', '22', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('595', '23', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('596', '33', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('597', '34', '2014-03-20', null, null);
INSERT INTO `wlc_attend` VALUES ('598', '2', '2014-03-21', '23:07:48', '23:07:48');
INSERT INTO `wlc_attend` VALUES ('599', '3', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('600', '4', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('601', '5', '2014-03-21', '11:25:34', '20:50:04');
INSERT INTO `wlc_attend` VALUES ('602', '10', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('603', '11', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('604', '12', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('605', '13', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('606', '14', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('607', '15', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('608', '16', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('609', '17', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('610', '18', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('611', '19', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('612', '20', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('613', '21', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('614', '22', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('615', '23', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('616', '33', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('617', '34', '2014-03-21', null, null);
INSERT INTO `wlc_attend` VALUES ('618', '2', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('619', '3', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('620', '4', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('621', '5', '2014-03-22', '10:34:26', null);
INSERT INTO `wlc_attend` VALUES ('622', '10', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('623', '11', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('624', '12', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('625', '13', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('626', '14', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('627', '15', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('628', '16', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('629', '17', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('630', '18', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('631', '19', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('632', '20', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('633', '21', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('634', '22', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('635', '23', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('636', '33', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('637', '34', '2014-03-22', null, null);
INSERT INTO `wlc_attend` VALUES ('638', '2', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('639', '3', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('640', '4', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('641', '5', '2014-03-23', '08:59:45', '17:37:36');
INSERT INTO `wlc_attend` VALUES ('642', '10', '2014-03-23', null, '17:31:00');
INSERT INTO `wlc_attend` VALUES ('643', '11', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('644', '12', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('645', '13', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('646', '14', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('647', '15', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('648', '16', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('649', '17', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('650', '18', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('651', '19', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('652', '20', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('653', '21', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('654', '22', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('655', '23', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('656', '33', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('657', '34', '2014-03-23', null, null);
INSERT INTO `wlc_attend` VALUES ('658', '2', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('659', '3', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('660', '4', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('661', '5', '2014-03-24', '08:53:23', null);
INSERT INTO `wlc_attend` VALUES ('662', '10', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('663', '11', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('664', '12', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('665', '13', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('666', '14', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('667', '15', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('668', '16', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('669', '17', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('670', '18', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('671', '19', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('672', '20', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('673', '21', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('674', '22', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('675', '23', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('676', '33', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('677', '34', '2014-03-24', null, null);
INSERT INTO `wlc_attend` VALUES ('678', '2', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('679', '3', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('680', '4', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('681', '5', '2014-03-25', '02:57:28', null);
INSERT INTO `wlc_attend` VALUES ('682', '10', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('683', '11', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('684', '12', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('685', '13', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('686', '14', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('687', '15', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('688', '16', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('689', '17', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('690', '18', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('691', '19', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('692', '20', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('693', '21', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('694', '22', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('695', '23', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('696', '33', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('697', '34', '2014-03-25', null, null);
INSERT INTO `wlc_attend` VALUES ('698', '2', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('699', '3', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('700', '4', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('701', '5', '2014-03-26', '20:07:16', '20:07:16');
INSERT INTO `wlc_attend` VALUES ('702', '10', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('703', '11', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('704', '12', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('705', '13', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('706', '14', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('707', '15', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('708', '16', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('709', '17', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('710', '18', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('711', '19', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('712', '20', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('713', '21', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('714', '22', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('715', '23', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('716', '33', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('717', '34', '2014-03-26', null, null);
INSERT INTO `wlc_attend` VALUES ('718', '2', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('719', '2', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('720', '3', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('721', '3', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('722', '4', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('723', '4', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('724', '5', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('725', '5', '2014-03-28', '10:13:16', null);
INSERT INTO `wlc_attend` VALUES ('726', '10', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('727', '10', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('728', '11', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('729', '11', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('730', '12', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('731', '12', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('732', '13', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('733', '13', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('734', '14', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('735', '14', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('736', '15', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('737', '15', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('738', '16', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('739', '16', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('740', '17', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('741', '17', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('742', '18', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('743', '18', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('744', '19', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('745', '19', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('746', '20', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('747', '20', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('748', '21', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('749', '21', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('750', '22', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('751', '22', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('752', '23', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('753', '23', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('754', '33', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('755', '33', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('756', '34', '2014-03-27', null, null);
INSERT INTO `wlc_attend` VALUES ('757', '34', '2014-03-28', null, null);
INSERT INTO `wlc_attend` VALUES ('758', '2', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('759', '3', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('760', '4', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('761', '5', '2014-03-29', '16:00:48', null);
INSERT INTO `wlc_attend` VALUES ('762', '10', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('763', '11', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('764', '12', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('765', '13', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('766', '14', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('767', '15', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('768', '16', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('769', '17', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('770', '18', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('771', '19', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('772', '20', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('773', '21', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('774', '22', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('775', '23', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('776', '33', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('777', '34', '2014-03-29', null, null);
INSERT INTO `wlc_attend` VALUES ('778', '2', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('779', '3', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('780', '4', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('781', '5', '2014-03-30', '08:01:21', '23:14:09');
INSERT INTO `wlc_attend` VALUES ('782', '10', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('783', '11', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('784', '12', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('785', '13', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('786', '14', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('787', '15', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('788', '16', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('789', '17', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('790', '18', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('791', '19', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('792', '20', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('793', '21', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('794', '22', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('795', '23', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('796', '33', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('797', '34', '2014-03-30', null, null);
INSERT INTO `wlc_attend` VALUES ('798', '2', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('799', '3', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('800', '4', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('801', '5', '2014-03-31', '08:31:34', null);
INSERT INTO `wlc_attend` VALUES ('802', '10', '2014-03-31', '08:00:00', null);
INSERT INTO `wlc_attend` VALUES ('803', '11', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('804', '12', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('805', '13', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('806', '14', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('807', '15', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('808', '16', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('809', '17', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('810', '18', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('811', '19', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('812', '20', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('813', '21', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('814', '22', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('815', '23', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('816', '33', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('817', '34', '2014-03-31', null, null);
INSERT INTO `wlc_attend` VALUES ('818', '2', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('819', '2', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('820', '3', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('821', '3', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('822', '4', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('823', '4', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('824', '5', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('825', '5', '2014-04-02', '10:25:41', null);
INSERT INTO `wlc_attend` VALUES ('826', '10', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('827', '10', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('828', '11', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('829', '11', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('830', '12', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('831', '12', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('832', '13', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('833', '13', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('834', '14', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('835', '14', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('836', '15', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('837', '15', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('838', '16', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('839', '16', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('840', '17', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('841', '17', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('842', '18', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('843', '18', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('844', '19', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('845', '19', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('846', '20', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('847', '20', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('848', '21', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('849', '21', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('850', '22', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('851', '22', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('852', '23', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('853', '23', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('854', '33', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('855', '33', '2014-04-02', null, null);
INSERT INTO `wlc_attend` VALUES ('856', '34', '2014-04-01', null, null);
INSERT INTO `wlc_attend` VALUES ('857', '34', '2014-04-02', null, null);

-- ----------------------------
-- Table structure for wlc_borrow
-- ----------------------------
DROP TABLE IF EXISTS `wlc_borrow`;
CREATE TABLE `wlc_borrow` (
  `borrow_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '申请人',
  `date` date NOT NULL COMMENT '申请日期',
  `start_date` date NOT NULL COMMENT '开始时间',
  `end_date` date NOT NULL,
  `goods_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '物品名称',
  `goods_parts` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '物品配件',
  `goods_number` int(11) DEFAULT NULL COMMENT '物品数量',
  `reason` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '请假原因',
  `check_status` smallint(6) NOT NULL DEFAULT '1' COMMENT '审核状态：1未审核2审核通过\r\n3审核驳回\r\n',
  `check_datetime` datetime DEFAULT NULL COMMENT '审核时间',
  `check_comment` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '批注注释',
  `return` smallint(6) DEFAULT '1' COMMENT '是否归还 1为未归还 2为已归还',
  PRIMARY KEY (`borrow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wlc_borrow
-- ----------------------------
INSERT INTO `wlc_borrow` VALUES ('4', '5', '2014-03-13', '2014-03-03', '2014-03-19', '投影仪', null, '1', ' dasdsaasdas', '2', '2014-03-20 08:23:38', 'aaa', '2');
INSERT INTO `wlc_borrow` VALUES ('5', '5', '2014-03-11', '2014-03-03', '2014-03-19', '投影仪', null, '2', ' dasdsaasdas', '3', '1970-01-01 08:00:00', '1395694155', '1');
INSERT INTO `wlc_borrow` VALUES ('10', '15', '2014-03-14', '2014-03-05', '2014-03-13', '数码相机', null, '3', ' dsadasdsadas', '2', '2014-03-22 23:17:20', '', '1');
INSERT INTO `wlc_borrow` VALUES ('13', '12', '2014-03-11', '2014-03-03', '2014-03-19', '投影仪', null, '1', ' dasdsaasdas', '3', '2014-03-21 08:23:55', 'bbbb', '1');
INSERT INTO `wlc_borrow` VALUES ('14', '11', '2014-03-10', '2014-03-03', '2014-03-19', '数码相机', null, '1', ' dasdsaasdas', '3', '2014-03-19 22:16:19', '', '1');
INSERT INTO `wlc_borrow` VALUES ('15', '12', '2014-03-10', '2014-03-03', '2014-03-19', '投影仪', null, '1', ' dasdsaasdas', '2', '2014-03-19 22:10:18', '', '1');
INSERT INTO `wlc_borrow` VALUES ('18', '5', '2014-03-10', '2014-03-03', '2014-03-27', '数码相机', null, '2', ' dasdsaasdas大叔大叔', '2', '2014-03-20 00:53:44', '', '2');
INSERT INTO `wlc_borrow` VALUES ('20', '7', '2014-03-23', '2014-03-03', '2014-03-07', '桌子椅子', null, '1', ' cdfdsfsdfsddsfdsfdsfds', '2', '2014-03-25 04:54:03', null, '1');
INSERT INTO `wlc_borrow` VALUES ('21', '7', '2014-03-23', '2014-03-13', '2014-03-26', null, null, '1', ' ╮(╯_╰)╭╮(╯_╰)╭寂寞', '1', null, null, '1');
INSERT INTO `wlc_borrow` VALUES ('22', '5', '2014-03-23', '2014-03-03', '2014-03-21', 'jb', 'tt', '3', ' 借个JB!宿舍', '3', '2014-03-25 04:53:50', null, '1');
INSERT INTO `wlc_borrow` VALUES ('25', '5', '2014-03-24', '2014-03-03', '2014-03-19', '宿舍', '收拾', '0', '大大叔大叔', '2', '2014-03-25 04:53:43', null, '2');
INSERT INTO `wlc_borrow` VALUES ('26', '5', '2014-03-25', '2014-03-18', '2014-03-26', '相机', '镜头', '1', '=  = \r\n测试的是是', '1', null, null, '1');

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
  `end_date` date NOT NULL,
  `place` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '出差地点',
  `reason` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '请假原因',
  `object` text COLLATE utf8_bin COMMENT '出访目标',
  `summary` text COLLATE utf8_bin COMMENT '总结',
  `cost` int(11) DEFAULT NULL COMMENT '消费金额',
  `check_status` smallint(6) NOT NULL DEFAULT '1' COMMENT '审核状态：\r\n1申请未审核;\r\n2申请审核通过;\r\n3申请审核驳回;\r\n\r\n4总结等待审核\r\n5总结审核通过;\r\n6总结审核驳回;\r\n\r\n7金额审核通过;\r\n8金额审核驳回;\r\n ',
  `checker_id` int(11) DEFAULT NULL COMMENT '申请审核人id',
  `check_datetime` datetime DEFAULT NULL COMMENT '申请审核时间',
  `check_comment` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '申请审核批注',
  `checker2_id` int(11) DEFAULT NULL COMMENT '审核人id',
  `check2_datetime` datetime DEFAULT NULL COMMENT '审核时间',
  `check2_comment` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '批注注释',
  `check3_datetime` datetime DEFAULT NULL COMMENT '审核时间',
  `check3_comment` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '批注注释',
  PRIMARY KEY (`errand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wlc_errand
-- ----------------------------
INSERT INTO `wlc_errand` VALUES ('4', '5', '2014-03-13', '2014-03-03', '2014-03-19', null, ' dasdsaasdas', 0x5B7B226E616D65223A22617364222C22736578223A22617364222C226465706172746D656E74223A22617364222C22706F736974696F6E223A22617364222C22636F6E74616374223A22616473222C22616C756D6E69223A226173647361227D2C7B226E616D65223A226464222C22736578223A22736466222C226465706172746D656E74223A226473667364222C22706F736974696F6E223A22667364222C22636F6E74616374223A22667364667364222C22616C756D6E69223A2266736466227D2C7B226E616D65223A223231222C22736578223A22323133222C226465706172746D656E74223A22323133222C22706F736974696F6E223A2231323331222C22636F6E74616374223A2232333132222C22616C756D6E69223A22323133227D5D, null, null, '6', '8', '2014-03-20 08:23:38', 'aaa', null, null, null, null, null);
INSERT INTO `wlc_errand` VALUES ('5', '5', '2014-03-11', '2014-03-03', '2014-03-19', null, ' dasdsaasdas', 0x5B7B226E616D65223A22617364222C22736578223A22617364222C226465706172746D656E74223A22617364222C22706F736974696F6E223A22E983A8E995BF222C22636F6E74616374223A22616473222C22616C756D6E69223A226173647361227D2C7B226E616D65223A226464222C22736578223A22736466222C226465706172746D656E74223A226473667364222C22706F736974696F6E223A22667364222C22636F6E74616374223A22667364667364222C22616C756D6E69223A2266736466227D2C7B226E616D65223A223231222C22736578223A22323133222C226465706172746D656E74223A22323133222C22706F736974696F6E223A2231323331222C22636F6E74616374223A2232333132222C22616C756D6E69223A22323133227D5D, null, null, '5', '8', '2014-03-14 08:23:43', 'aaaa', null, null, null, null, null);
INSERT INTO `wlc_errand` VALUES ('10', '15', '2014-03-14', '2014-03-05', '2014-03-13', null, ' dsadasdsadas', null, null, null, '2', '7', '2014-03-22 23:17:20', '', null, null, null, null, null);
INSERT INTO `wlc_errand` VALUES ('13', '12', '2014-03-11', '2014-03-03', '2014-03-19', null, ' dasdsaasdas', null, null, null, '3', '8', '2014-03-21 08:23:55', 'bbbb', null, null, null, null, null);
INSERT INTO `wlc_errand` VALUES ('14', '11', '2014-03-10', '2014-03-03', '2014-03-19', null, ' dasdsaasdas', null, null, null, '3', '7', '2014-03-19 22:16:19', '', null, null, null, null, null);
INSERT INTO `wlc_errand` VALUES ('15', '12', '2014-03-10', '2014-03-03', '2014-03-19', null, ' dasdsaasdas', null, null, null, '2', '7', '2014-03-19 22:10:18', '', null, null, null, null, null);
INSERT INTO `wlc_errand` VALUES ('18', '5', '2014-03-10', '2014-03-03', '2014-03-27', null, ' dasdsaasdas大叔大叔', null, null, null, '2', '7', '2014-03-20 00:53:44', '通过！', null, null, null, null, null);
INSERT INTO `wlc_errand` VALUES ('20', '7', '2014-03-23', '2014-03-03', '2014-03-07', null, ' cdfdsfsdfsddsfdsfdsfds', null, null, null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `wlc_errand` VALUES ('21', '7', '2014-03-23', '2014-03-13', '2014-03-26', null, ' ╮(╯_╰)╭╮(╯_╰)╭寂寞', null, null, null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `wlc_errand` VALUES ('22', '5', '2014-03-28', '2014-03-03', '2014-03-11', '北京', 'ssssss', 0x5B7B226E616D65223A22617364222C22736578223A22617364222C226465706172746D656E74223A22617364222C22706F736974696F6E223A22617364222C22636F6E74616374223A22616473222C22616C756D6E69223A226173647361227D2C7B226E616D65223A226464222C22736578223A22736466222C226465706172746D656E74223A226473667364222C22706F736974696F6E223A22667364222C22636F6E74616374223A22667364667364222C22616C756D6E69223A2266736466227D2C7B226E616D65223A223231222C22736578223A22323133222C226465706172746D656E74223A22323133222C22706F736974696F6E223A2231323331222C22636F6E74616374223A2232333132222C22616C756D6E69223A22323133227D5D, 0x20736164617364, '0', '7', '7', '2014-03-29 01:16:24', '是', '7', '2014-03-31 20:21:22', 'dsadas测试', '2014-03-31 20:38:01', '通过吧');
INSERT INTO `wlc_errand` VALUES ('29', '5', '2014-03-30', '2014-03-10', '2014-03-26', '天津', '12312321', null, null, null, '2', '7', '2014-03-31 20:09:58', null, null, null, null, null, null);
INSERT INTO `wlc_errand` VALUES ('30', '5', '2014-03-30', '2014-03-03', '2014-03-19', '上海', 'asdasd', null, null, null, '3', '7', '2014-03-31 20:10:04', null, null, null, null, null, null);
INSERT INTO `wlc_errand` VALUES ('31', '5', '2014-03-30', '2014-03-03', '2014-03-12', '= =', 'asdasda', null, null, null, '1', null, null, null, null, null, null, null, null);
INSERT INTO `wlc_errand` VALUES ('34', '5', '2014-03-30', '2014-03-03', '2014-03-04', 'dasdas', 'dasdasd', null, null, null, '3', '7', '2014-03-31 20:37:37', '啦啦啦', null, null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wlc_leave
-- ----------------------------
INSERT INTO `wlc_leave` VALUES ('4', '5', '2014-03-13', '2', '2014-03-03', '04:00:00', '2014-03-19', '17:00:00', ' dasdsaasdas', '8', '2', '2014-03-20 08:23:38', 'aaa', '2');
INSERT INTO `wlc_leave` VALUES ('5', '5', '2014-03-11', '3', '2014-03-03', '04:00:00', '2014-03-19', '17:00:00', ' dasdsaasdas', '8', '3', '2014-03-14 08:23:43', 'aaaa', '1');
INSERT INTO `wlc_leave` VALUES ('10', '15', '2014-03-14', '0', '2014-03-05', '09:00:00', '2014-03-13', '14:00:00', ' dsadasdsadas', '7', '2', '2014-03-22 23:17:20', '', '1');
INSERT INTO `wlc_leave` VALUES ('13', '12', '2014-03-11', '3', '2014-03-03', '04:00:00', '2014-03-19', '17:00:00', ' dasdsaasdas', '8', '3', '2014-03-21 08:23:55', 'bbbb', '1');
INSERT INTO `wlc_leave` VALUES ('14', '11', '2014-03-10', '4', '2014-03-03', '04:00:00', '2014-03-19', '17:00:00', ' dasdsaasdas', '7', '3', '2014-03-19 22:16:19', '', '1');
INSERT INTO `wlc_leave` VALUES ('15', '12', '2014-03-10', '5', '2014-03-03', '04:00:00', '2014-03-19', '17:00:00', ' dasdsaasdas', '7', '2', '2014-03-19 22:10:18', '', '2');
INSERT INTO `wlc_leave` VALUES ('18', '5', '2014-03-10', '3', '2014-03-03', '04:00:00', '2014-03-27', '20:00:00', ' dasdsaasdas大叔大叔', '7', '2', '2014-03-20 00:53:44', '', '1');
INSERT INTO `wlc_leave` VALUES ('19', '5', '2014-03-20', '0', '2014-03-11', '04:00:00', '2014-03-27', '22:00:00', ' 从V多给点分是是', null, '1', null, null, '1');
INSERT INTO `wlc_leave` VALUES ('20', '7', '2014-03-23', '0', '2014-03-03', '08:00:00', '2014-03-07', '11:00:00', ' cdfdsfsdfsddsfdsfdsfds', null, '1', null, null, '1');
INSERT INTO `wlc_leave` VALUES ('21', '7', '2014-03-23', '0', '2014-03-13', '09:00:00', '2014-03-26', '17:00:00', ' ╮(╯_╰)╭╮(╯_╰)╭寂寞', null, '1', null, null, '1');
INSERT INTO `wlc_leave` VALUES ('22', '5', '2014-03-31', '5', '2014-03-03', '05:00:00', '2014-03-27', '09:00:00', 'jlkjlk', null, '1', null, null, '1');

-- ----------------------------
-- Table structure for wlc_order
-- ----------------------------
DROP TABLE IF EXISTS `wlc_order`;
CREATE TABLE `wlc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订餐Id',
  `user_id` int(11) NOT NULL COMMENT '申请人',
  `datetime` datetime DEFAULT NULL COMMENT '申请时间',
  `place` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '订餐地点',
  `reason` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '订餐原因',
  `number` int(11) NOT NULL COMMENT '加班人数',
  `standard` int(11) NOT NULL COMMENT '每人餐标',
  `check_status` int(11) DEFAULT '1' COMMENT '审批状态 1为待审批 2为审批通过 3为审批驳回',
  `check_datetime` datetime DEFAULT NULL COMMENT '审批时间',
  `check_comment` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wlc_order
-- ----------------------------
INSERT INTO `wlc_order` VALUES ('1', '5', '2014-03-21 13:30:31', '爱仕达', '爱仕达', '22', '22', '3', '2014-03-22 00:33:49', '333');
INSERT INTO `wlc_order` VALUES ('3', '11', '2014-03-18 20:50:11', 'dsadasfewrwer', 'dasdasrwerwerewrewre', '111', '3', '2', '2014-03-22 00:44:24', '1395419455');
INSERT INTO `wlc_order` VALUES ('4', '12', '2014-03-17 20:50:11', 'dsadas', 'dasdas', '6', '8', '1', null, null);
INSERT INTO `wlc_order` VALUES ('5', '13', '2014-03-16 20:50:11', 'dsadas', 'dasdas', '1', '7', '1', null, null);
INSERT INTO `wlc_order` VALUES ('6', '14', '2014-03-15 20:50:11', 'dsadas', 'dasdas', '2', '2', '1', null, null);
INSERT INTO `wlc_order` VALUES ('7', '15', '2014-03-15 20:50:11', 'dsadasfsd', 'dasdas', '1', '2', '1', null, null);
INSERT INTO `wlc_order` VALUES ('8', '18', '2014-03-15 21:30:11', 'dsadas', 'dasdasfe', '1', '5', '2', '2014-03-22 00:44:19', '');
INSERT INTO `wlc_order` VALUES ('9', '19', '2014-03-15 03:50:11', 'dsadas', 'dasdas', '1', '2', '1', null, null);
INSERT INTO `wlc_order` VALUES ('10', '33', '2014-03-15 20:50:11', 'dsadas', 'dasdas', '1', '9', '1', null, null);
INSERT INTO `wlc_order` VALUES ('11', '5', '2014-03-22 11:04:40', 'ppp', 'kkk', '99', '99', '2', '2014-03-23 16:19:29', '');
INSERT INTO `wlc_order` VALUES ('12', '5', '2014-04-02 10:29:34', '测试', '测试2', '113', '22', '3', '2014-04-02 10:36:23', '是');

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
  PRIMARY KEY (`user_id`),
  KEY `id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wlc_user
-- ----------------------------
INSERT INTO `wlc_user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '管理员', '0', null, '1', '0', null);
INSERT INTO `wlc_user` VALUES ('2', 'jjgz', 'ac4ed0140fd370a8ee97ca83dd935de1', '基金工作', '2', '1', '7', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('3', 'xygz', '7cfb1348fa2a86208058887ae8561a92', '校友工作', '2', '2', '7', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('4', 'xqhz', '59e80d2f146619933dfce03ede1a04ef', '校企合作', '2', '3', '8', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('5', 'zhbg', 'be67c5f127b11a7ddc52c2b14f311c74', '综合办公', '2', '4', '8', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('6', 'boss', 'c4ca4238a0b923820dcc509a6f75849b', '外联处处长', '1', null, '6', '0', null);
INSERT INTO `wlc_user` VALUES ('7', 'boss1', 'c4ca4238a0b923820dcc509a6f75849b', '副处长1', '1', null, '7', '0', null);
INSERT INTO `wlc_user` VALUES ('8', 'boss2', 'c4ca4238a0b923820dcc509a6f75849b', '副处长2', '1', null, '8', '0', null);
INSERT INTO `wlc_user` VALUES ('10', 'jjgz_1', 'c4ca4238a0b923820dcc509a6f75849b', '员工1_1', '3', '1', '2', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('11', 'jjgz_2', 'c4ca4238a0b923820dcc509a6f75849b', '员工1_2', '3', '1', '2', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('12', 'jjgz_3', 'c4ca4238a0b923820dcc509a6f75849b', '员工1_3', '3', '1', '2', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('13', 'jjgz_4', 'c4ca4238a0b923820dcc509a6f75849b', '员工1_4', '3', '1', '2', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('14', 'xygz_1', 'c4ca4238a0b923820dcc509a6f75849b', '员工2_1', '3', '2', '3', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('15', 'xygz_2', 'c4ca4238a0b923820dcc509a6f75849b', '员工2_2', '3', '2', '3', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('16', 'xygz_3', 'c4ca4238a0b923820dcc509a6f75849b', '员工2_3', '3', '2', '3', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('17', 'xygz_4', 'c4ca4238a0b923820dcc509a6f75849b', '员工2_4', '3', '2', '3', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('18', 'xqhz_1', 'c4ca4238a0b923820dcc509a6f75849b', '员工3_1', '3', '3', '4', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('19', 'xqhz_2', 'c4ca4238a0b923820dcc509a6f75849b', '员工3_2', '3', '3', '4', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('20', 'xqhz_3', 'c4ca4238a0b923820dcc509a6f75849b', '员工3_3', '3', '3', '4', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('21', 'xqhz_4', 'c4ca4238a0b923820dcc509a6f75849b', '员工3_4', '3', '3', '4', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('22', 'zhbg_1', 'c4ca4238a0b923820dcc509a6f75849b', '员工4_1', '3', '4', '5', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('23', 'zhbg_2', 'c4ca4238a0b923820dcc509a6f75849b', '员工4_2', '2', '4', '5', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('33', 'zhbg_3', 'c4ca4238a0b923820dcc509a6f75849b', '员工4_3', '2', '4', '5', '1', '2014-04-02');
INSERT INTO `wlc_user` VALUES ('34', 'zhbg_4', 'c4ca4238a0b923820dcc509a6f75849b', '员工4_4', '2', '4', '5', '1', '2014-04-02');
