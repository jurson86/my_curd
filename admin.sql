/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-11-25 17:36:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('5', '系统管理', '/', null, '3', null);
INSERT INTO `sys_menu` VALUES ('6', '菜单管理', '/sysMenu', null, '0', '5');
INSERT INTO `sys_menu` VALUES ('23', '角色管理', '/sysRole', null, '2', '5');
INSERT INTO `sys_menu` VALUES ('58', '组织机构', '/sysOrg', null, '4', '5');
INSERT INTO `sys_menu` VALUES ('59', '用户管理', '/sysUser', null, '3', '5');
INSERT INTO `sys_menu` VALUES ('60', '修改密码', '/sysChangePassword', null, '5', '5');
INSERT INTO `sys_menu` VALUES ('61', 'druid监控', '/druid', null, '7', '5');
INSERT INTO `sys_menu` VALUES ('62', '供应链', ' /', null, '2', null);
INSERT INTO `sys_menu` VALUES ('63', '采购申请', '/scmPurchase', null, '3', '66');
INSERT INTO `sys_menu` VALUES ('64', '仓库入库', '/scmDepotIn', null, '2', '62');
INSERT INTO `sys_menu` VALUES ('65', '仓库出库', '/scmDepotOut', null, '3', '62');
INSERT INTO `sys_menu` VALUES ('66', '网上办公', '/', null, '1', null);
INSERT INTO `sys_menu` VALUES ('67', '请假申请', '/ooLeaveRequest', null, '1', '66');
INSERT INTO `sys_menu` VALUES ('68', '请假审批', '/ooLeaveAudit', null, '2', '66');
INSERT INTO `sys_menu` VALUES ('69', '采购审批', '/scmPurchaseAudit', null, '4', '66');
INSERT INTO `sys_menu` VALUES ('70', '系统日志', '/sysOplog', null, '6', '5');

-- ----------------------------
-- Table structure for `sys_oplog`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oplog`;
CREATE TABLE `sys_oplog` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `op_content` varchar(255) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_oplog
-- ----------------------------
INSERT INTO `sys_oplog` VALUES ('934348031367577600', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:24');
INSERT INTO `sys_oplog` VALUES ('934348035238920192', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:25');
INSERT INTO `sys_oplog` VALUES ('934348036115529728', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:25');
INSERT INTO `sys_oplog` VALUES ('934348037587730432', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:26');
INSERT INTO `sys_oplog` VALUES ('934348038502088704', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:26');
INSERT INTO `sys_oplog` VALUES ('934348069732876288', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:33');
INSERT INTO `sys_oplog` VALUES ('934348071179911168', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:34');
INSERT INTO `sys_oplog` VALUES ('934348072048132096', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:34');
INSERT INTO `sys_oplog` VALUES ('934348072786329600', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:34');
INSERT INTO `sys_oplog` VALUES ('934348073562275840', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:34');
INSERT INTO `sys_oplog` VALUES ('934348076577980416', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:35');
INSERT INTO `sys_oplog` VALUES ('934348078188593152', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:35');
INSERT INTO `sys_oplog` VALUES ('934348078998093824', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:36');
INSERT INTO `sys_oplog` VALUES ('934348079765651456', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:36');
INSERT INTO `sys_oplog` VALUES ('934348081476927488', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:36');
INSERT INTO `sys_oplog` VALUES ('934348112078569472', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:43');
INSERT INTO `sys_oplog` VALUES ('934348183251714048', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:00');
INSERT INTO `sys_oplog` VALUES ('934348184124129280', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:01');
INSERT INTO `sys_oplog` VALUES ('934348184958795776', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:01');
INSERT INTO `sys_oplog` VALUES ('934348185768296448', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:01');
INSERT INTO `sys_oplog` VALUES ('934348187034976256', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:01');
INSERT INTO `sys_oplog` VALUES ('934348188087746560', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:02');
INSERT INTO `sys_oplog` VALUES ('934348189522198528', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:02');
INSERT INTO `sys_oplog` VALUES ('934348190361059328', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:02');
INSERT INTO `sys_oplog` VALUES ('934348191904563200', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:02');
INSERT INTO `sys_oplog` VALUES ('934348192709869568', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:03');
INSERT INTO `sys_oplog` VALUES ('934348193414512640', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:03');
INSERT INTO `sys_oplog` VALUES ('934348194219819008', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:03');
INSERT INTO `sys_oplog` VALUES ('934348194890907648', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:03');
INSERT INTO `sys_oplog` VALUES ('934348195629105152', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:03');
INSERT INTO `sys_oplog` VALUES ('934348196472160256', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:04');
INSERT INTO `sys_oplog` VALUES ('934348197239717888', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:04');
INSERT INTO `sys_oplog` VALUES ('934348198414123008', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:04');
INSERT INTO `sys_oplog` VALUES ('934348199362035712', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:04');
INSERT INTO `sys_oplog` VALUES ('934348200091844608', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:04');
INSERT INTO `sys_oplog` VALUES ('934348200834236416', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:05');
INSERT INTO `sys_oplog` VALUES ('934348201832480768', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:05');
INSERT INTO `sys_oplog` VALUES ('934348204860768256', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:06');
INSERT INTO `sys_oplog` VALUES ('934348205838041088', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:06');
INSERT INTO `sys_oplog` VALUES ('934348207444459520', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:09:06');

-- ----------------------------
-- Table structure for `sys_org`
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_name` varchar(50) DEFAULT NULL,
  `org_address` varchar(255) DEFAULT NULL COMMENT '部门地址',
  `org_remark` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO `sys_org` VALUES ('74', '河南恒星科技股份有限公司', '河南省巩义市康店镇伊洛河北路121号', '主营业务有各种钢', '1', null);
INSERT INTO `sys_org` VALUES ('75', '信息办', '办公楼607、504', '607负责企业erp、oa办公系统的开发，504负责系统运维', '1', '74');
INSERT INTO `sys_org` VALUES ('76', '人力资源部', '办公楼 307', '负责企业内人力方面工作', '2', '74');
INSERT INTO `sys_org` VALUES ('77', '采购部', '办公楼104', '负责企业内部的商品采购工作', '3', '74');
INSERT INTO `sys_org` VALUES ('78', '销售部', null, null, '4', '74');
INSERT INTO `sys_org` VALUES ('79', '财务部', null, null, '5', '74');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `role_desc` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('3', '管理员', '分配所有权限', '2017-10-07 21:22:34', '0');
INSERT INTO `sys_role` VALUES ('24', '员工', '普通员工办公权限', '2017-11-25 16:00:26', '1');
INSERT INTO `sys_role` VALUES ('25', '部门主管', '部门领导普通审批', '2017-11-25 16:00:50', '2');
INSERT INTO `sys_role` VALUES ('26', '仓库', '仓库管理人员', '2017-11-25 16:02:15', '3');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('3', '5');
INSERT INTO `sys_role_menu` VALUES ('3', '6');
INSERT INTO `sys_role_menu` VALUES ('3', '23');
INSERT INTO `sys_role_menu` VALUES ('3', '58');
INSERT INTO `sys_role_menu` VALUES ('3', '59');
INSERT INTO `sys_role_menu` VALUES ('3', '60');
INSERT INTO `sys_role_menu` VALUES ('3', '61');
INSERT INTO `sys_role_menu` VALUES ('3', '62');
INSERT INTO `sys_role_menu` VALUES ('3', '63');
INSERT INTO `sys_role_menu` VALUES ('3', '64');
INSERT INTO `sys_role_menu` VALUES ('3', '65');
INSERT INTO `sys_role_menu` VALUES ('3', '66');
INSERT INTO `sys_role_menu` VALUES ('3', '67');
INSERT INTO `sys_role_menu` VALUES ('3', '68');
INSERT INTO `sys_role_menu` VALUES ('3', '69');
INSERT INTO `sys_role_menu` VALUES ('3', '70');
INSERT INTO `sys_role_menu` VALUES ('24', '63');
INSERT INTO `sys_role_menu` VALUES ('24', '66');
INSERT INTO `sys_role_menu` VALUES ('24', '67');
INSERT INTO `sys_role_menu` VALUES ('25', '63');
INSERT INTO `sys_role_menu` VALUES ('25', '66');
INSERT INTO `sys_role_menu` VALUES ('25', '67');
INSERT INTO `sys_role_menu` VALUES ('25', '68');
INSERT INTO `sys_role_menu` VALUES ('25', '69');
INSERT INTO `sys_role_menu` VALUES ('26', '62');
INSERT INTO `sys_role_menu` VALUES ('26', '64');
INSERT INTO `sys_role_menu` VALUES ('26', '65');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `org_id` int(11) DEFAULT NULL COMMENT '部门id',
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `disabled` varchar(2) DEFAULT '0' COMMENT '是否禁用0 未禁用 1禁用',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_user_org_id` (`org_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('916654989969981440', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', '管理员', '75', '916432779@qq.com', '15238002477', '0', '2017-11-23 18:32:29');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(32) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('916654989969981440', '3');

-- ----------------------------
-- Function structure for `getChildLst`
-- ----------------------------
DROP FUNCTION IF EXISTS `getChildLst`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getChildLst`(rootId INT,tableName VARCHAR(255)) RETURNS varchar(1000) CHARSET utf8
BEGIN
   DECLARE sTemp VARCHAR(1000);
   DECLARE sTempChd VARCHAR(1000);
 
  SET sTemp = '$';
   SET sTempChd =cast(rootId as CHAR);
 
 
  WHILE sTempChd is not null DO
    SET sTemp = concat(sTemp,',',sTempChd);
    IF tableName = 'sys_org' THEN
       SELECT group_concat(id) INTO sTempChd FROM sys_org where FIND_IN_SET(pid,sTempChd)>0;
    ELSEIF tableName = 'sys_menu' THEN
       SELECT group_concat(id) INTO sTempChd FROM sys_menu where FIND_IN_SET(pid,sTempChd)>0;
    END IF;
  END WHILE;
  RETURN REPLACE(sTemp,'$,','');
 END
;;
DELIMITER ;
