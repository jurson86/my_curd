/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-11-23 10:34:31
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('5', '系统管理', null, null, '0', null);
INSERT INTO `sys_menu` VALUES ('6', '菜单管理', '/sysMenu', null, '0', '5');
INSERT INTO `sys_menu` VALUES ('23', '角色管理', '/sysRole', null, '2', '5');
INSERT INTO `sys_menu` VALUES ('58', '组织机构', '/sysOrg', null, '4', '5');
INSERT INTO `sys_menu` VALUES ('59', '用户管理', '/sysUser', null, '3', '5');
INSERT INTO `sys_menu` VALUES ('60', '修改密码', '/sysChangePassword', null, '5', '5');
INSERT INTO `sys_menu` VALUES ('61', 'druid监控', '/druid', null, '6', '5');

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
INSERT INTO `sys_oplog` VALUES ('918053748570324992', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-10-11 18:00:44');
INSERT INTO `sys_oplog` VALUES ('918059126326558720', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-10-11 18:22:07');
INSERT INTO `sys_oplog` VALUES ('919190626719760384', '916654989969981440', '访问无权限路径[/logout]', '0:0:0:0:0:0:0:1', '2017-10-14 21:18:17');
INSERT INTO `sys_oplog` VALUES ('920277574486065152', '916654989969981440', '访问无权限路径[/sysMenu/query]', '0:0:0:0:0:0:0:1', '2017-10-17 21:17:26');
INSERT INTO `sys_oplog` VALUES ('920277705956524032', '916654989969981440', '访问无权限路径[/sysMenu/query]', '0:0:0:0:0:0:0:1', '2017-10-17 21:17:57');

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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO `sys_org` VALUES ('19', '董事会', '河南省巩义市', null, '1', null);
INSERT INTO `sys_org` VALUES ('20', '总裁办', null, null, '1', '19');
INSERT INTO `sys_org` VALUES ('21', '车辆管理', null, null, '1', '20');
INSERT INTO `sys_org` VALUES ('22', '企管中心', null, null, '2', null);
INSERT INTO `sys_org` VALUES ('23', '行政部', null, null, '1', '22');
INSERT INTO `sys_org` VALUES ('24', '人力部', null, null, '2', '22');
INSERT INTO `sys_org` VALUES ('25', '经营管理部', null, null, '3', '22');
INSERT INTO `sys_org` VALUES ('26', '信息办', null, null, '1', '25');
INSERT INTO `sys_org` VALUES ('27', '服务部', null, null, '4', '22');
INSERT INTO `sys_org` VALUES ('28', '财务中心', null, null, '3', null);
INSERT INTO `sys_org` VALUES ('29', '内审部', null, null, '1', '28');
INSERT INTO `sys_org` VALUES ('30', '实物库', null, null, '2', '28');
INSERT INTO `sys_org` VALUES ('31', '现金出纳', null, null, '3', '28');
INSERT INTO `sys_org` VALUES ('32', '财务管理', null, null, '4', '28');
INSERT INTO `sys_org` VALUES ('33', '钢缆实物库', null, null, '1', '30');
INSERT INTO `sys_org` VALUES ('34', '金属实物库', null, null, '2', '30');
INSERT INTO `sys_org` VALUES ('35', '科技实物库', null, null, '3', '30');
INSERT INTO `sys_org` VALUES ('36', '机械园区实物库', null, null, '4', '30');
INSERT INTO `sys_org` VALUES ('37', '万年硅业实物库', null, null, '5', '30');
INSERT INTO `sys_org` VALUES ('38', '博宇实物库', null, null, '6', '30');
INSERT INTO `sys_org` VALUES ('39', '机械厂实物库', null, null, '7', '30');
INSERT INTO `sys_org` VALUES ('40', '资本中心', null, null, '4', null);
INSERT INTO `sys_org` VALUES ('41', '融资部', null, null, '1', '40');
INSERT INTO `sys_org` VALUES ('42', '证券部', null, null, '2', '40');
INSERT INTO `sys_org` VALUES ('43', '供应中心', null, null, '5', null);
INSERT INTO `sys_org` VALUES ('44', '供应商管理', null, null, '1', '43');
INSERT INTO `sys_org` VALUES ('45', '业务部', null, null, '2', '43');
INSERT INTO `sys_org` VALUES ('46', '超精细公司', null, null, '6', null);
INSERT INTO `sys_org` VALUES ('47', '超精细销售部', null, null, '1', '46');
INSERT INTO `sys_org` VALUES ('48', '金属公司', null, null, '7', null);
INSERT INTO `sys_org` VALUES ('49', '钢缆公司', null, null, '8', null);
INSERT INTO `sys_org` VALUES ('50', '科技公司', null, null, '9', null);
INSERT INTO `sys_org` VALUES ('51', '恒星机械公司', null, null, '10', null);
INSERT INTO `sys_org` VALUES ('52', '煤机公司', null, null, '11', null);
INSERT INTO `sys_org` VALUES ('53', '基建处', null, null, '12', null);
INSERT INTO `sys_org` VALUES ('54', '研发中心', null, null, '13', null);
INSERT INTO `sys_org` VALUES ('55', '物流部', null, null, '14', null);
INSERT INTO `sys_org` VALUES ('56', '机械园区', null, null, '15', null);
INSERT INTO `sys_org` VALUES ('57', '博宇新能源', null, null, '16', null);
INSERT INTO `sys_org` VALUES ('58', '科技帘线', null, null, '17', null);
INSERT INTO `sys_org` VALUES ('59', '科技金刚线', null, null, '18', null);
INSERT INTO `sys_org` VALUES ('60', '恒星新材料', null, null, '19', null);
INSERT INTO `sys_org` VALUES ('61', '生产部', null, null, '1', '60');
INSERT INTO `sys_org` VALUES ('62', '财务部', null, null, '2', '60');
INSERT INTO `sys_org` VALUES ('63', '人力资源行政部', null, null, '3', '60');
INSERT INTO `sys_org` VALUES ('64', '供销部', null, null, '4', '60');
INSERT INTO `sys_org` VALUES ('65', '质量部', null, null, '5', '60');
INSERT INTO `sys_org` VALUES ('66', '技术部', null, null, '6', '60');
INSERT INTO `sys_org` VALUES ('67', '安环部', null, null, '7', '60');
INSERT INTO `sys_org` VALUES ('68', '设备部', null, null, '8', '60');
INSERT INTO `sys_org` VALUES ('69', '氢化车间', null, null, '1', '61');
INSERT INTO `sys_org` VALUES ('70', '精馏车间', null, null, '2', '61');
INSERT INTO `sys_org` VALUES ('71', '还原车间', null, null, '3', '61');
INSERT INTO `sys_org` VALUES ('72', '公用工程', null, null, '4', '61');
INSERT INTO `sys_org` VALUES ('73', '生产办公室', null, null, '5', '61');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('3', '管理员', '分配所有权限', '2017-10-07 21:22:34', '0');
INSERT INTO `sys_role` VALUES ('18', '员工', '普通员工测试', '2017-11-21 17:07:25', '1');

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
INSERT INTO `sys_role_menu` VALUES ('18', '5');
INSERT INTO `sys_role_menu` VALUES ('18', '60');

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
INSERT INTO `sys_user` VALUES ('916654989969981440', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', '张闯', '21', '916432779@qq.com', '15238002477', '0', '2017-11-22 13:35:48');

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
