/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : wlc

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2014-07-03 09:17:13
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
) ENGINE=InnoDB AUTO_INCREMENT=10458 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of wlc_attend
-- ----------------------------
INSERT INTO `wlc_attend` VALUES ('9811', '2', '2014-05-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9813', '3', '2014-05-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9815', '4', '2014-05-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9817', '5', '2014-05-12', '08:27:28', '08:28:06', null);
INSERT INTO `wlc_attend` VALUES ('9819', '10', '2014-05-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9821', '11', '2014-05-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9823', '12', '2014-05-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9825', '13', '2014-05-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9827', '14', '2014-05-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9829', '15', '2014-05-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9831', '16', '2014-05-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9833', '17', '2014-05-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9834', '2', '2014-05-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9835', '2', '2014-05-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9836', '2', '2014-05-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9837', '2', '2014-05-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9838', '2', '2014-05-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9839', '2', '2014-05-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9840', '2', '2014-05-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9841', '2', '2014-05-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9842', '2', '2014-05-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9843', '2', '2014-05-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9844', '2', '2014-05-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9845', '2', '2014-05-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9846', '2', '2014-05-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9847', '2', '2014-05-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9848', '3', '2014-05-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9849', '3', '2014-05-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9850', '3', '2014-05-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9851', '3', '2014-05-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9852', '3', '2014-05-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9853', '3', '2014-05-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9854', '3', '2014-05-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9855', '3', '2014-05-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9856', '3', '2014-05-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9857', '3', '2014-05-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9858', '3', '2014-05-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9859', '3', '2014-05-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9860', '3', '2014-05-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9861', '3', '2014-05-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9862', '4', '2014-05-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9863', '4', '2014-05-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9864', '4', '2014-05-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9865', '4', '2014-05-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9866', '4', '2014-05-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9867', '4', '2014-05-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9868', '4', '2014-05-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9869', '4', '2014-05-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9870', '4', '2014-05-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9871', '4', '2014-05-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9872', '4', '2014-05-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9873', '4', '2014-05-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9874', '4', '2014-05-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9875', '4', '2014-05-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9876', '5', '2014-05-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9877', '5', '2014-05-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9878', '5', '2014-05-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9879', '5', '2014-05-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9880', '5', '2014-05-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9881', '5', '2014-05-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9882', '5', '2014-05-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9883', '5', '2014-05-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9884', '5', '2014-05-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9885', '5', '2014-05-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9886', '5', '2014-05-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9887', '5', '2014-05-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9888', '5', '2014-05-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9889', '5', '2014-05-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9890', '10', '2014-05-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9891', '10', '2014-05-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9892', '10', '2014-05-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9893', '10', '2014-05-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9894', '10', '2014-05-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9895', '10', '2014-05-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9896', '10', '2014-05-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9897', '10', '2014-05-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9898', '10', '2014-05-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9899', '10', '2014-05-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9900', '10', '2014-05-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9901', '10', '2014-05-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9902', '10', '2014-05-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9903', '10', '2014-05-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9904', '11', '2014-05-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9905', '11', '2014-05-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9906', '11', '2014-05-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9907', '11', '2014-05-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9908', '11', '2014-05-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9909', '11', '2014-05-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9910', '11', '2014-05-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9911', '11', '2014-05-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9912', '11', '2014-05-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9913', '11', '2014-05-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9914', '11', '2014-05-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9915', '11', '2014-05-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9916', '11', '2014-05-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9917', '11', '2014-05-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9918', '12', '2014-05-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9919', '12', '2014-05-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9920', '12', '2014-05-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9921', '12', '2014-05-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9922', '12', '2014-05-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9923', '12', '2014-05-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9924', '12', '2014-05-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9925', '12', '2014-05-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9926', '12', '2014-05-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9927', '12', '2014-05-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9928', '12', '2014-05-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9929', '12', '2014-05-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9930', '12', '2014-05-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9931', '12', '2014-05-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9932', '13', '2014-05-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9933', '13', '2014-05-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9934', '13', '2014-05-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9935', '13', '2014-05-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9936', '13', '2014-05-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9937', '13', '2014-05-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9938', '13', '2014-05-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9939', '13', '2014-05-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9940', '13', '2014-05-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9941', '13', '2014-05-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9942', '13', '2014-05-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9943', '13', '2014-05-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9944', '13', '2014-05-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9945', '13', '2014-05-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9946', '14', '2014-05-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9947', '14', '2014-05-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9948', '14', '2014-05-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9949', '14', '2014-05-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9950', '14', '2014-05-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9951', '14', '2014-05-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9952', '14', '2014-05-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9953', '14', '2014-05-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9954', '14', '2014-05-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9955', '14', '2014-05-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9956', '14', '2014-05-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9957', '14', '2014-05-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9958', '14', '2014-05-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9959', '14', '2014-05-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9960', '15', '2014-05-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9961', '15', '2014-05-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9962', '15', '2014-05-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9963', '15', '2014-05-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9964', '15', '2014-05-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9965', '15', '2014-05-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9966', '15', '2014-05-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9967', '15', '2014-05-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9968', '15', '2014-05-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9969', '15', '2014-05-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9970', '15', '2014-05-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9971', '15', '2014-05-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9972', '15', '2014-05-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9973', '15', '2014-05-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9974', '16', '2014-05-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9975', '16', '2014-05-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9976', '16', '2014-05-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9977', '16', '2014-05-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9978', '16', '2014-05-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9979', '16', '2014-05-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9980', '16', '2014-05-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9981', '16', '2014-05-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9982', '16', '2014-05-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9983', '16', '2014-05-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9984', '16', '2014-05-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9985', '16', '2014-05-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9986', '16', '2014-05-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9987', '16', '2014-05-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9988', '17', '2014-05-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9989', '17', '2014-05-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9990', '17', '2014-05-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9991', '17', '2014-05-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9992', '17', '2014-05-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9993', '17', '2014-05-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9994', '17', '2014-05-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9995', '17', '2014-05-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9996', '17', '2014-05-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9997', '17', '2014-05-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9998', '17', '2014-05-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('9999', '17', '2014-05-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10000', '17', '2014-05-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10001', '17', '2014-05-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10002', '2', '2014-05-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10003', '3', '2014-05-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10004', '4', '2014-05-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10005', '5', '2014-05-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10006', '10', '2014-05-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10007', '11', '2014-05-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10008', '12', '2014-05-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10009', '13', '2014-05-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10010', '14', '2014-05-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10011', '15', '2014-05-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10012', '16', '2014-05-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10013', '17', '2014-05-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10014', '2', '2014-05-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10015', '2', '2014-05-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10016', '2', '2014-05-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10017', '2', '2014-05-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10018', '2', '2014-06-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10019', '2', '2014-06-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10020', '2', '2014-06-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10021', '2', '2014-06-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10022', '2', '2014-06-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10023', '2', '2014-06-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10024', '2', '2014-06-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10025', '2', '2014-06-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10026', '2', '2014-06-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10027', '2', '2014-06-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10028', '2', '2014-06-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10029', '2', '2014-06-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10030', '2', '2014-06-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10031', '2', '2014-06-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10032', '2', '2014-06-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10033', '2', '2014-06-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10034', '2', '2014-06-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10035', '2', '2014-06-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10036', '2', '2014-06-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10037', '2', '2014-06-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10038', '2', '2014-06-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10039', '2', '2014-06-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10040', '2', '2014-06-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10041', '2', '2014-06-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10042', '2', '2014-06-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10043', '2', '2014-06-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10044', '2', '2014-06-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10045', '2', '2014-06-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10046', '2', '2014-06-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10047', '2', '2014-06-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10048', '2', '2014-07-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10049', '2', '2014-07-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10050', '3', '2014-05-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10051', '3', '2014-05-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10052', '3', '2014-05-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10053', '3', '2014-05-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10054', '3', '2014-06-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10055', '3', '2014-06-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10056', '3', '2014-06-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10057', '3', '2014-06-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10058', '3', '2014-06-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10059', '3', '2014-06-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10060', '3', '2014-06-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10061', '3', '2014-06-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10062', '3', '2014-06-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10063', '3', '2014-06-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10064', '3', '2014-06-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10065', '3', '2014-06-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10066', '3', '2014-06-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10067', '3', '2014-06-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10068', '3', '2014-06-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10069', '3', '2014-06-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10070', '3', '2014-06-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10071', '3', '2014-06-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10072', '3', '2014-06-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10073', '3', '2014-06-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10074', '3', '2014-06-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10075', '3', '2014-06-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10076', '3', '2014-06-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10077', '3', '2014-06-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10078', '3', '2014-06-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10079', '3', '2014-06-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10080', '3', '2014-06-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10081', '3', '2014-06-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10082', '3', '2014-06-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10083', '3', '2014-06-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10084', '3', '2014-07-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10085', '3', '2014-07-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10086', '4', '2014-05-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10087', '4', '2014-05-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10088', '4', '2014-05-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10089', '4', '2014-05-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10090', '4', '2014-06-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10091', '4', '2014-06-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10092', '4', '2014-06-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10093', '4', '2014-06-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10094', '4', '2014-06-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10095', '4', '2014-06-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10096', '4', '2014-06-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10097', '4', '2014-06-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10098', '4', '2014-06-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10099', '4', '2014-06-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10100', '4', '2014-06-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10101', '4', '2014-06-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10102', '4', '2014-06-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10103', '4', '2014-06-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10104', '4', '2014-06-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10105', '4', '2014-06-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10106', '4', '2014-06-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10107', '4', '2014-06-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10108', '4', '2014-06-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10109', '4', '2014-06-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10110', '4', '2014-06-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10111', '4', '2014-06-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10112', '4', '2014-06-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10113', '4', '2014-06-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10114', '4', '2014-06-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10115', '4', '2014-06-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10116', '4', '2014-06-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10117', '4', '2014-06-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10118', '4', '2014-06-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10119', '4', '2014-06-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10120', '4', '2014-07-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10121', '4', '2014-07-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10122', '5', '2014-05-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10123', '5', '2014-05-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10124', '5', '2014-05-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10125', '5', '2014-05-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10126', '5', '2014-06-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10127', '5', '2014-06-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10128', '5', '2014-06-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10129', '5', '2014-06-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10130', '5', '2014-06-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10131', '5', '2014-06-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10132', '5', '2014-06-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10133', '5', '2014-06-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10134', '5', '2014-06-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10135', '5', '2014-06-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10136', '5', '2014-06-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10137', '5', '2014-06-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10138', '5', '2014-06-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10139', '5', '2014-06-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10140', '5', '2014-06-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10141', '5', '2014-06-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10142', '5', '2014-06-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10143', '5', '2014-06-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10144', '5', '2014-06-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10145', '5', '2014-06-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10146', '5', '2014-06-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10147', '5', '2014-06-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10148', '5', '2014-06-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10149', '5', '2014-06-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10150', '5', '2014-06-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10151', '5', '2014-06-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10152', '5', '2014-06-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10153', '5', '2014-06-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10154', '5', '2014-06-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10155', '5', '2014-06-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10156', '5', '2014-07-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10157', '5', '2014-07-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10158', '10', '2014-05-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10159', '10', '2014-05-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10160', '10', '2014-05-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10161', '10', '2014-05-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10162', '10', '2014-06-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10163', '10', '2014-06-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10164', '10', '2014-06-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10165', '10', '2014-06-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10166', '10', '2014-06-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10167', '10', '2014-06-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10168', '10', '2014-06-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10169', '10', '2014-06-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10170', '10', '2014-06-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10171', '10', '2014-06-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10172', '10', '2014-06-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10173', '10', '2014-06-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10174', '10', '2014-06-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10175', '10', '2014-06-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10176', '10', '2014-06-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10177', '10', '2014-06-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10178', '10', '2014-06-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10179', '10', '2014-06-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10180', '10', '2014-06-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10181', '10', '2014-06-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10182', '10', '2014-06-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10183', '10', '2014-06-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10184', '10', '2014-06-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10185', '10', '2014-06-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10186', '10', '2014-06-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10187', '10', '2014-06-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10188', '10', '2014-06-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10189', '10', '2014-06-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10190', '10', '2014-06-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10191', '10', '2014-06-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10192', '10', '2014-07-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10193', '10', '2014-07-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10194', '11', '2014-05-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10195', '11', '2014-05-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10196', '11', '2014-05-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10197', '11', '2014-05-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10198', '11', '2014-06-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10199', '11', '2014-06-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10200', '11', '2014-06-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10201', '11', '2014-06-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10202', '11', '2014-06-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10203', '11', '2014-06-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10204', '11', '2014-06-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10205', '11', '2014-06-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10206', '11', '2014-06-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10207', '11', '2014-06-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10208', '11', '2014-06-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10209', '11', '2014-06-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10210', '11', '2014-06-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10211', '11', '2014-06-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10212', '11', '2014-06-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10213', '11', '2014-06-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10214', '11', '2014-06-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10215', '11', '2014-06-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10216', '11', '2014-06-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10217', '11', '2014-06-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10218', '11', '2014-06-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10219', '11', '2014-06-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10220', '11', '2014-06-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10221', '11', '2014-06-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10222', '11', '2014-06-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10223', '11', '2014-06-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10224', '11', '2014-06-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10225', '11', '2014-06-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10226', '11', '2014-06-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10227', '11', '2014-06-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10228', '11', '2014-07-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10229', '11', '2014-07-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10230', '12', '2014-05-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10231', '12', '2014-05-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10232', '12', '2014-05-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10233', '12', '2014-05-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10234', '12', '2014-06-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10235', '12', '2014-06-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10236', '12', '2014-06-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10237', '12', '2014-06-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10238', '12', '2014-06-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10239', '12', '2014-06-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10240', '12', '2014-06-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10241', '12', '2014-06-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10242', '12', '2014-06-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10243', '12', '2014-06-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10244', '12', '2014-06-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10245', '12', '2014-06-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10246', '12', '2014-06-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10247', '12', '2014-06-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10248', '12', '2014-06-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10249', '12', '2014-06-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10250', '12', '2014-06-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10251', '12', '2014-06-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10252', '12', '2014-06-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10253', '12', '2014-06-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10254', '12', '2014-06-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10255', '12', '2014-06-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10256', '12', '2014-06-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10257', '12', '2014-06-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10258', '12', '2014-06-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10259', '12', '2014-06-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10260', '12', '2014-06-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10261', '12', '2014-06-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10262', '12', '2014-06-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10263', '12', '2014-06-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10264', '12', '2014-07-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10265', '12', '2014-07-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10266', '13', '2014-05-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10267', '13', '2014-05-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10268', '13', '2014-05-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10269', '13', '2014-05-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10270', '13', '2014-06-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10271', '13', '2014-06-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10272', '13', '2014-06-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10273', '13', '2014-06-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10274', '13', '2014-06-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10275', '13', '2014-06-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10276', '13', '2014-06-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10277', '13', '2014-06-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10278', '13', '2014-06-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10279', '13', '2014-06-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10280', '13', '2014-06-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10281', '13', '2014-06-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10282', '13', '2014-06-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10283', '13', '2014-06-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10284', '13', '2014-06-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10285', '13', '2014-06-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10286', '13', '2014-06-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10287', '13', '2014-06-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10288', '13', '2014-06-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10289', '13', '2014-06-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10290', '13', '2014-06-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10291', '13', '2014-06-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10292', '13', '2014-06-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10293', '13', '2014-06-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10294', '13', '2014-06-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10295', '13', '2014-06-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10296', '13', '2014-06-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10297', '13', '2014-06-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10298', '13', '2014-06-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10299', '13', '2014-06-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10300', '13', '2014-07-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10301', '13', '2014-07-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10302', '14', '2014-05-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10303', '14', '2014-05-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10304', '14', '2014-05-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10305', '14', '2014-05-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10306', '14', '2014-06-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10307', '14', '2014-06-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10308', '14', '2014-06-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10309', '14', '2014-06-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10310', '14', '2014-06-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10311', '14', '2014-06-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10312', '14', '2014-06-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10313', '14', '2014-06-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10314', '14', '2014-06-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10315', '14', '2014-06-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10316', '14', '2014-06-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10317', '14', '2014-06-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10318', '14', '2014-06-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10319', '14', '2014-06-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10320', '14', '2014-06-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10321', '14', '2014-06-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10322', '14', '2014-06-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10323', '14', '2014-06-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10324', '14', '2014-06-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10325', '14', '2014-06-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10326', '14', '2014-06-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10327', '14', '2014-06-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10328', '14', '2014-06-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10329', '14', '2014-06-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10330', '14', '2014-06-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10331', '14', '2014-06-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10332', '14', '2014-06-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10333', '14', '2014-06-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10334', '14', '2014-06-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10335', '14', '2014-06-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10336', '14', '2014-07-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10337', '14', '2014-07-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10338', '15', '2014-05-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10339', '15', '2014-05-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10340', '15', '2014-05-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10341', '15', '2014-05-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10342', '15', '2014-06-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10343', '15', '2014-06-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10344', '15', '2014-06-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10345', '15', '2014-06-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10346', '15', '2014-06-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10347', '15', '2014-06-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10348', '15', '2014-06-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10349', '15', '2014-06-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10350', '15', '2014-06-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10351', '15', '2014-06-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10352', '15', '2014-06-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10353', '15', '2014-06-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10354', '15', '2014-06-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10355', '15', '2014-06-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10356', '15', '2014-06-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10357', '15', '2014-06-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10358', '15', '2014-06-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10359', '15', '2014-06-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10360', '15', '2014-06-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10361', '15', '2014-06-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10362', '15', '2014-06-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10363', '15', '2014-06-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10364', '15', '2014-06-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10365', '15', '2014-06-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10366', '15', '2014-06-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10367', '15', '2014-06-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10368', '15', '2014-06-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10369', '15', '2014-06-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10370', '15', '2014-06-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10371', '15', '2014-06-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10372', '15', '2014-07-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10373', '15', '2014-07-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10374', '16', '2014-05-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10375', '16', '2014-05-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10376', '16', '2014-05-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10377', '16', '2014-05-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10378', '16', '2014-06-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10379', '16', '2014-06-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10380', '16', '2014-06-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10381', '16', '2014-06-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10382', '16', '2014-06-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10383', '16', '2014-06-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10384', '16', '2014-06-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10385', '16', '2014-06-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10386', '16', '2014-06-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10387', '16', '2014-06-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10388', '16', '2014-06-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10389', '16', '2014-06-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10390', '16', '2014-06-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10391', '16', '2014-06-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10392', '16', '2014-06-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10393', '16', '2014-06-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10394', '16', '2014-06-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10395', '16', '2014-06-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10396', '16', '2014-06-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10397', '16', '2014-06-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10398', '16', '2014-06-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10399', '16', '2014-06-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10400', '16', '2014-06-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10401', '16', '2014-06-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10402', '16', '2014-06-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10403', '16', '2014-06-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10404', '16', '2014-06-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10405', '16', '2014-06-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10406', '16', '2014-06-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10407', '16', '2014-06-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10408', '16', '2014-07-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10409', '16', '2014-07-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10410', '17', '2014-05-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10411', '17', '2014-05-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10412', '17', '2014-05-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10413', '17', '2014-05-31', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10414', '17', '2014-06-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10415', '17', '2014-06-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10416', '17', '2014-06-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10417', '17', '2014-06-04', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10418', '17', '2014-06-05', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10419', '17', '2014-06-06', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10420', '17', '2014-06-07', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10421', '17', '2014-06-08', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10422', '17', '2014-06-09', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10423', '17', '2014-06-10', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10424', '17', '2014-06-11', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10425', '17', '2014-06-12', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10426', '17', '2014-06-13', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10427', '17', '2014-06-14', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10428', '17', '2014-06-15', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10429', '17', '2014-06-16', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10430', '17', '2014-06-17', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10431', '17', '2014-06-18', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10432', '17', '2014-06-19', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10433', '17', '2014-06-20', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10434', '17', '2014-06-21', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10435', '17', '2014-06-22', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10436', '17', '2014-06-23', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10437', '17', '2014-06-24', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10438', '17', '2014-06-25', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10439', '17', '2014-06-26', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10440', '17', '2014-06-27', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10441', '17', '2014-06-28', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10442', '17', '2014-06-29', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10443', '17', '2014-06-30', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10444', '17', '2014-07-01', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10445', '17', '2014-07-02', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10446', '2', '2014-07-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10447', '3', '2014-07-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10448', '4', '2014-07-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10449', '5', '2014-07-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10450', '10', '2014-07-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10451', '11', '2014-07-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10452', '12', '2014-07-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10453', '13', '2014-07-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10454', '14', '2014-07-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10455', '15', '2014-07-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10456', '16', '2014-07-03', null, null, null);
INSERT INTO `wlc_attend` VALUES ('10457', '17', '2014-07-03', null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
INSERT INTO `wlc_goods` VALUES ('15', 'sj2014001', '华为手机', '充电线一条');

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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
INSERT INTO `wlc_order` VALUES ('24', '5', '2014-07-02', 'dasdasdasdas', 'dasdasdas', '11', '11', '2', '7', null, null);

-- ----------------------------
-- Table structure for wlc_parttime
-- ----------------------------
DROP TABLE IF EXISTS `wlc_parttime`;
CREATE TABLE `wlc_parttime` (
  `parttime_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '类型 1为勤工 2为三助',
  `nature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工作性质',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工作内容',
  `check_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_datetime` datetime DEFAULT NULL,
  `check_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`parttime_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wlc_parttime
-- ----------------------------
INSERT INTO `wlc_parttime` VALUES ('1', '5', '12332222', '2014-07-02', '1', '222222', '路人甲', '3333333333333', '2', '2014-07-03 08:43:47', '无双大蛇');
INSERT INTO `wlc_parttime` VALUES ('2', '7', '12333333', '2014-07-06', '2', '222222', '路人乙', '3333333333333', '2', '2014-07-03 08:43:47', '无双大蛇');
INSERT INTO `wlc_parttime` VALUES ('3', '8', '12334444', '2014-07-08', '2', '222222', '路人丙', '3333333333333', '2', '2014-07-03 08:43:47', '无双大蛇');

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
INSERT INTO `wlc_user` VALUES ('2', '8304', 'e10adc3949ba59abbe56e057f20f883e', '黄晨', '2', '1', '7', '1', '2014-07-03', '2014-05-26');
INSERT INTO `wlc_user` VALUES ('3', '8003', 'e10adc3949ba59abbe56e057f20f883e', '毕斐', '2', '2', '8', '1', '2014-07-03', '2014-05-26');
INSERT INTO `wlc_user` VALUES ('4', '70030', 'e10adc3949ba59abbe56e057f20f883e', '孙雪亮\r\n', '2', '3', '8', '1', '2014-07-03', '2014-05-26');
INSERT INTO `wlc_user` VALUES ('5', '70028', 'e10adc3949ba59abbe56e057f20f883e', '黄微', '2', '4', '7', '1', '2014-07-03', '2014-05-26');
INSERT INTO `wlc_user` VALUES ('6', '7767', 'e10adc3949ba59abbe56e057f20f883e', '尹激', '1', null, '6', '0', null, null);
INSERT INTO `wlc_user` VALUES ('7', '2642', 'e10adc3949ba59abbe56e057f20f883e', '徐劲松', '1', null, '7', '0', null, null);
INSERT INTO `wlc_user` VALUES ('8', '544', 'e10adc3949ba59abbe56e057f20f883e', '白雁', '1', null, '8', '0', null, null);
INSERT INTO `wlc_user` VALUES ('10', '70029', 'e10adc3949ba59abbe56e057f20f883e', '饶芳', '3', '2', '3', '1', '2014-07-03', '2014-05-26');
INSERT INTO `wlc_user` VALUES ('11', '70389', 'e10adc3949ba59abbe56e057f20f883e', '李文一', '3', '2', '3', '1', '2014-07-03', '2014-05-26');
INSERT INTO `wlc_user` VALUES ('12', '70423', 'e10adc3949ba59abbe56e057f20f883e', '包涵', '3', '2', '3', '1', '2014-07-03', '2014-05-26');
INSERT INTO `wlc_user` VALUES ('13', '70437', 'e10adc3949ba59abbe56e057f20f883e', '王晓霞', '3', '2', '3', '1', '2014-07-03', '2014-05-26');
INSERT INTO `wlc_user` VALUES ('14', '70740', 'e10adc3949ba59abbe56e057f20f883e', '王娴', '3', '1', '2', '1', '2014-07-03', '2014-05-26');
INSERT INTO `wlc_user` VALUES ('15', '70558', 'e10adc3949ba59abbe56e057f20f883e', '耿雪姣', '3', '1', '2', '1', '2014-07-03', '2014-05-26');
INSERT INTO `wlc_user` VALUES ('16', '201401', 'e10adc3949ba59abbe56e057f20f883e', '高默咛', '3', '1', '2', '1', '2014-07-03', '2014-05-26');
INSERT INTO `wlc_user` VALUES ('17', '201402', 'e10adc3949ba59abbe56e057f20f883e', '黄庆华', '3', '1', '2', '1', '2014-07-03', '2014-05-26');

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
) ENGINE=InnoDB AUTO_INCREMENT=399 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
INSERT INTO `wlc_work` VALUES ('363', '2', '2014-05-12', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('364', '2', '2014-05-19', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('365', '2', '2014-05-26', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('366', '3', '2014-05-12', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('367', '3', '2014-05-19', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('368', '3', '2014-05-26', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('369', '4', '2014-05-12', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('370', '4', '2014-05-19', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('371', '4', '2014-05-26', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('372', '5', '2014-05-12', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('373', '5', '2014-05-19', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('374', '5', '2014-05-26', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('375', '10', '2014-05-12', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('376', '10', '2014-05-19', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('377', '10', '2014-05-26', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('378', '11', '2014-05-12', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('379', '11', '2014-05-19', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('380', '11', '2014-05-26', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('381', '12', '2014-05-12', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('382', '12', '2014-05-19', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('383', '12', '2014-05-26', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('384', '13', '2014-05-12', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('385', '13', '2014-05-19', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('386', '13', '2014-05-26', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('387', '14', '2014-05-12', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('388', '14', '2014-05-19', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('389', '14', '2014-05-26', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('390', '15', '2014-05-12', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('391', '15', '2014-05-19', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('392', '15', '2014-05-26', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('393', '16', '2014-05-12', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('394', '16', '2014-05-19', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('395', '16', '2014-05-26', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('396', '17', '2014-05-12', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('397', '17', '2014-05-19', null, null, null, '2', null, null, null);
INSERT INTO `wlc_work` VALUES ('398', '17', '2014-05-26', null, null, null, '2', null, null, null);
