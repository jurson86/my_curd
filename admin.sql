/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-11-29 23:06:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bus_novel`
-- ----------------------------
DROP TABLE IF EXISTS `bus_novel`;
CREATE TABLE `bus_novel` (
  `id` varchar(32) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_novel
-- ----------------------------

-- ----------------------------
-- Table structure for `bus_novel_chapter`
-- ----------------------------
DROP TABLE IF EXISTS `bus_novel_chapter`;
CREATE TABLE `bus_novel_chapter` (
  `id` varchar(32) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bus_novel_chapter
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `dict_type` varchar(50) NOT NULL DEFAULT '' COMMENT '类型',
  `dict_key` varchar(50) NOT NULL DEFAULT '' COMMENT '键',
  `dict_value` varchar(100) NOT NULL DEFAULT '' COMMENT '值',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='数据字典';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('8', 'task_type', '1', 'url', '2017-03-12 23:29:43');
INSERT INTO `sys_dict` VALUES ('9', 'task_type', '2', 'sql', '2017-03-12 23:29:51');
INSERT INTO `sys_dict` VALUES ('10', 'task_type', '3', 'ITask', '2017-11-27 20:56:30');
INSERT INTO `sys_dict` VALUES ('11', 'task_statu', '1', '等待运行', '2017-11-27 20:56:17');
INSERT INTO `sys_dict` VALUES ('12', 'task_statu', '2', '已停止', '2017-11-27 20:56:33');
INSERT INTO `sys_dict` VALUES ('13', 'task_statu', '3', '运行中', '2017-03-28 23:26:26');

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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('5', '系统管理', '/', null, '3', null);
INSERT INTO `sys_menu` VALUES ('6', '菜单管理', '/sysMenu', null, '0', '5');
INSERT INTO `sys_menu` VALUES ('23', '角色管理', '/sysRole', null, '2', '5');
INSERT INTO `sys_menu` VALUES ('58', '组织机构', '/sysOrg', null, '4', '5');
INSERT INTO `sys_menu` VALUES ('59', '用户管理', '/sysUser', null, '3', '5');
INSERT INTO `sys_menu` VALUES ('60', '修改密码', '/sysChangePassword', null, '5', '5');
INSERT INTO `sys_menu` VALUES ('61', 'druid监控', '/druid', 'icon-druid', '8', '5');
INSERT INTO `sys_menu` VALUES ('62', '供应链', ' /', null, '2', null);
INSERT INTO `sys_menu` VALUES ('63', '采购申请', '/scmPurchase', null, '3', '66');
INSERT INTO `sys_menu` VALUES ('64', '仓库入库', '/scmDepotIn', null, '2', '62');
INSERT INTO `sys_menu` VALUES ('65', '仓库出库', '/scmDepotOut', null, '3', '62');
INSERT INTO `sys_menu` VALUES ('66', '网上办公', '/', null, '1', null);
INSERT INTO `sys_menu` VALUES ('67', '请假申请', '/ooLeaveRequest', null, '1', '66');
INSERT INTO `sys_menu` VALUES ('68', '请假审批', '/ooLeaveAudit', null, '2', '66');
INSERT INTO `sys_menu` VALUES ('69', '采购审批', '/scmPurchaseAudit', null, '4', '66');
INSERT INTO `sys_menu` VALUES ('70', '系统日志', '/sysOplog', null, '6', '5');
INSERT INTO `sys_menu` VALUES ('71', '定时任务', '/sysTask', null, '7', '5');

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
INSERT INTO `sys_oplog` VALUES ('934348072786329600', '916654989969981440', '访问无权限路径[/sysUser]', '0:0:0:0:0:0:0:1', '2017-11-25 17:08:34');
INSERT INTO `sys_oplog` VALUES ('934416742954827776', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-25 21:41:26');
INSERT INTO `sys_oplog` VALUES ('934417489868095488', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-25 21:44:24');
INSERT INTO `sys_oplog` VALUES ('934417794479423488', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-25 21:45:37');
INSERT INTO `sys_oplog` VALUES ('934417948032892928', '916654989969981440', '退出', '0:0:0:0:0:0:0:1', '2017-11-25 21:46:14');
INSERT INTO `sys_oplog` VALUES ('934417953871364096', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-25 21:46:15');
INSERT INTO `sys_oplog` VALUES ('934422092747636736', '916654989969981440', '退出', '0:0:0:0:0:0:0:1', '2017-11-25 22:02:42');
INSERT INTO `sys_oplog` VALUES ('934422254073151488', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-25 22:03:20');
INSERT INTO `sys_oplog` VALUES ('934422272431620096', '916654989969981440', '退出', '0:0:0:0:0:0:0:1', '2017-11-25 22:03:25');
INSERT INTO `sys_oplog` VALUES ('934422278140067840', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-25 22:03:26');
INSERT INTO `sys_oplog` VALUES ('934422344577843200', '916654989969981440', '123456 修改为新密码：111111', '0:0:0:0:0:0:0:1', '2017-11-25 22:03:42');
INSERT INTO `sys_oplog` VALUES ('934422354677727232', '916654989969981440', '退出', '0:0:0:0:0:0:0:1', '2017-11-25 22:03:44');
INSERT INTO `sys_oplog` VALUES ('934422376748154880', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-25 22:03:50');
INSERT INTO `sys_oplog` VALUES ('934422476283183104', '916654989969981440', '退出', '0:0:0:0:0:0:0:1', '2017-11-25 22:04:13');
INSERT INTO `sys_oplog` VALUES ('934422522160480256', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-25 22:04:24');
INSERT INTO `sys_oplog` VALUES ('934422535699693568', '916654989969981440', '退出', '0:0:0:0:0:0:0:1', '2017-11-25 22:04:27');
INSERT INTO `sys_oplog` VALUES ('934422848192118784', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-25 22:05:42');
INSERT INTO `sys_oplog` VALUES ('934422862104625152', '916654989969981440', '退出', '0:0:0:0:0:0:0:1', '2017-11-25 22:05:45');
INSERT INTO `sys_oplog` VALUES ('934423982201896960', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-25 22:10:12');
INSERT INTO `sys_oplog` VALUES ('934431093933735936', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-25 22:38:28');
INSERT INTO `sys_oplog` VALUES ('934435355099136000', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-25 22:55:24');
INSERT INTO `sys_oplog` VALUES ('934435672771526656', '916654989969981440', '123456 修改为新密码：654321', '0:0:0:0:0:0:0:1', '2017-11-25 22:56:40');
INSERT INTO `sys_oplog` VALUES ('934435680010895360', '916654989969981440', '退出', '0:0:0:0:0:0:0:1', '2017-11-25 22:56:41');
INSERT INTO `sys_oplog` VALUES ('934435704878923776', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-25 22:56:47');
INSERT INTO `sys_oplog` VALUES ('934435786827235328', '916654989969981440', '654321 修改为新密码：123456', '0:0:0:0:0:0:0:1', '2017-11-25 22:57:07');
INSERT INTO `sys_oplog` VALUES ('934435804791439360', '916654989969981440', '退出', '0:0:0:0:0:0:0:1', '2017-11-25 22:57:11');
INSERT INTO `sys_oplog` VALUES ('934435809740718080', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-25 22:57:12');
INSERT INTO `sys_oplog` VALUES ('934438061637369856', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-25 23:06:09');
INSERT INTO `sys_oplog` VALUES ('934438660193910784', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-25 23:08:32');
INSERT INTO `sys_oplog` VALUES ('935134889513058304', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-27 21:15:06');
INSERT INTO `sys_oplog` VALUES ('935135239133462528', '916654989969981440', '退出', '0:0:0:0:0:0:0:1', '2017-11-27 21:16:29');
INSERT INTO `sys_oplog` VALUES ('935135243797528576', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-27 21:16:30');
INSERT INTO `sys_oplog` VALUES ('935136672012566528', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-27 21:22:11');
INSERT INTO `sys_oplog` VALUES ('935138453278949376', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-27 21:29:15');
INSERT INTO `sys_oplog` VALUES ('935139148514197504', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-27 21:32:01');
INSERT INTO `sys_oplog` VALUES ('935139553944010752', '916654989969981440', '退出', '0:0:0:0:0:0:0:1', '2017-11-27 21:33:38');
INSERT INTO `sys_oplog` VALUES ('935139558859735040', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-27 21:33:39');
INSERT INTO `sys_oplog` VALUES ('935147779901095936', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-27 22:06:19');
INSERT INTO `sys_oplog` VALUES ('935150352066412544', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-27 22:16:32');
INSERT INTO `sys_oplog` VALUES ('935151210812407808', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-27 22:19:57');
INSERT INTO `sys_oplog` VALUES ('935151866998685696', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-27 22:22:34');
INSERT INTO `sys_oplog` VALUES ('935152160755154944', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-27 22:23:44');
INSERT INTO `sys_oplog` VALUES ('935162701397622784', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-27 23:05:37');
INSERT INTO `sys_oplog` VALUES ('935170307482714112', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-27 23:35:50');
INSERT INTO `sys_oplog` VALUES ('935173587160006656', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-27 23:48:52');
INSERT INTO `sys_oplog` VALUES ('935176671907020800', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 00:01:07');
INSERT INTO `sys_oplog` VALUES ('935180857398788096', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 00:17:45');
INSERT INTO `sys_oplog` VALUES ('935183899959492608', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 00:29:51');
INSERT INTO `sys_oplog` VALUES ('935300483092840448', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 08:13:06');
INSERT INTO `sys_oplog` VALUES ('935305809988943872', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 08:34:16');
INSERT INTO `sys_oplog` VALUES ('935306941276618752', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 08:38:46');
INSERT INTO `sys_oplog` VALUES ('935314474896719872', '916654989969981440', '退出', '0:0:0:0:0:0:0:1', '2017-11-28 09:08:42');
INSERT INTO `sys_oplog` VALUES ('935314481104289792', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 09:08:44');
INSERT INTO `sys_oplog` VALUES ('935314561098055680', '916654989969981440', '退出', '0:0:0:0:0:0:0:1', '2017-11-28 09:09:03');
INSERT INTO `sys_oplog` VALUES ('935351146153771008', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 11:34:25');
INSERT INTO `sys_oplog` VALUES ('935381214435475456', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 13:33:54');
INSERT INTO `sys_oplog` VALUES ('935411447037427712', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 15:34:02');
INSERT INTO `sys_oplog` VALUES ('935425126017531904', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 16:28:24');
INSERT INTO `sys_oplog` VALUES ('935427425431453696', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 16:37:32');
INSERT INTO `sys_oplog` VALUES ('935434065329258496', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 17:03:55');
INSERT INTO `sys_oplog` VALUES ('935438377858105344', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 17:21:03');
INSERT INTO `sys_oplog` VALUES ('935438979023503360', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 17:23:26');
INSERT INTO `sys_oplog` VALUES ('935445950959190016', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 17:51:09');
INSERT INTO `sys_oplog` VALUES ('935447035866251264', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 17:55:27');
INSERT INTO `sys_oplog` VALUES ('935447157299740672', '916654989969981440', '[定时任务]增加', '0:0:0:0:0:0:0:1', '2017-11-28 17:55:56');
INSERT INTO `sys_oplog` VALUES ('935449391630647296', '916654989969981440', '[定时任务] 修改', '0:0:0:0:0:0:0:1', '2017-11-28 18:04:49');
INSERT INTO `sys_oplog` VALUES ('935460050518933504', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 18:47:10');
INSERT INTO `sys_oplog` VALUES ('935460206177943552', '916654989969981440', '[定时任务] 修改', '0:0:0:0:0:0:0:1', '2017-11-28 18:47:47');
INSERT INTO `sys_oplog` VALUES ('935460898493956096', '916654989969981440', '[定时任务] 修改', '0:0:0:0:0:0:0:1', '2017-11-28 18:50:32');
INSERT INTO `sys_oplog` VALUES ('935462591948390400', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 18:57:16');
INSERT INTO `sys_oplog` VALUES ('935464481692057600', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 19:04:47');
INSERT INTO `sys_oplog` VALUES ('935464827155906560', '916654989969981440', '[定时任务]增加', '0:0:0:0:0:0:0:1', '2017-11-28 19:06:09');
INSERT INTO `sys_oplog` VALUES ('935467358057660416', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 19:16:12');
INSERT INTO `sys_oplog` VALUES ('935469427699220480', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 19:24:26');
INSERT INTO `sys_oplog` VALUES ('935469944970149888', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 19:26:29');
INSERT INTO `sys_oplog` VALUES ('935471922085363712', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 19:34:21');
INSERT INTO `sys_oplog` VALUES ('935472009142337536', '916654989969981440', '[定时任务] 修改', '0:0:0:0:0:0:0:1', '2017-11-28 19:34:41');
INSERT INTO `sys_oplog` VALUES ('935476466437586944', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-28 19:52:24');
INSERT INTO `sys_oplog` VALUES ('935797849763872768', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-29 17:09:28');
INSERT INTO `sys_oplog` VALUES ('935798049261748224', '916654989969981440', '[定时任务] 删除', '0:0:0:0:0:0:0:1', '2017-11-29 17:10:15');
INSERT INTO `sys_oplog` VALUES ('935812586975264768', '916654989969981440', '登录', '0:0:0:0:0:0:0:1', '2017-11-29 18:08:01');

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
INSERT INTO `sys_role_menu` VALUES ('3', '71');
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
-- Table structure for `sys_task`
-- ----------------------------
DROP TABLE IF EXISTS `sys_task`;
CREATE TABLE `sys_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `target_type` int(11) DEFAULT NULL COMMENT '任务类型',
  `target_value` varchar(5000) DEFAULT NULL COMMENT '任务值',
  `cron` varchar(50) DEFAULT NULL COMMENT 'cron表达式',
  `last_run_result` varchar(50) DEFAULT NULL COMMENT '上次执行结果',
  `last_run_time` datetime DEFAULT NULL COMMENT '上次执行时间',
  `last_run_time_cost` int(11) DEFAULT NULL COMMENT '上次执行耗时',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `create_user_id` int(11) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='定时任务';

-- ----------------------------
-- Records of sys_task
-- ----------------------------
INSERT INTO `sys_task` VALUES ('1', '百度', '1', 'https://www.baidu.com', '*/1 * * * *', '成功', '2017-11-28 17:49:00', '3', '2', '1', '2017-03-04 16:08:06');
INSERT INTO `sys_task` VALUES ('2', 'css', '1', 'http://www.newsres.cn/2017lh/css/lhxl.css', '* */1 * * *', '成功', '2017-04-12 00:00:34', '75', '2', '1', '2017-03-04 00:00:00');
INSERT INTO `sys_task` VALUES ('3', '查询', '2', 'select 2', '* */1 * * *', '成功', '2017-09-12 20:22:00', '20', '2', null, '2017-03-04 17:32:02');
INSERT INTO `sys_task` VALUES ('4', '存储过程', '2', 'call admin.task_pro_test()', '* */1 * * *', '成功', '2017-11-27 23:56:00', '7', '2', null, '2017-03-05 00:30:20');
INSERT INTO `sys_task` VALUES ('5', 'ITask', '3', 'com.zcurd.common.task.DemoTask', '* */1 * * *', '成功', '2017-03-26 22:50:00', '3', '2', null, '2017-03-18 14:43:55');
INSERT INTO `sys_task` VALUES ('6', '查询用户表2', '2', 'select * from sys_user', '*/1 * * * *', '成功', '2017-11-28 18:50:00', '5', '2', null, '2017-11-28 17:55:56');

-- ----------------------------
-- Table structure for `sys_task_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_task_log`;
CREATE TABLE `sys_task_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `task_id` int(11) DEFAULT NULL COMMENT '所属任务',
  `result` varchar(50) DEFAULT NULL COMMENT '执行结果',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `cost_time` int(11) DEFAULT NULL COMMENT '耗时',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2820 DEFAULT CHARSET=utf8 COMMENT='定时任务-日志';

-- ----------------------------
-- Records of sys_task_log
-- ----------------------------
INSERT INTO `sys_task_log` VALUES ('2441', '4', '成功', '2017-11-27 23:50:20', '2017-11-27 23:50:20', '19', null);
INSERT INTO `sys_task_log` VALUES ('2442', '4', '成功', '2017-11-27 23:51:00', '2017-11-27 23:51:00', '12', null);
INSERT INTO `sys_task_log` VALUES ('2443', '4', '成功', '2017-11-27 23:52:00', '2017-11-27 23:52:00', '10', null);
INSERT INTO `sys_task_log` VALUES ('2444', '4', '成功', '2017-11-27 23:53:00', '2017-11-27 23:53:00', '13', null);
INSERT INTO `sys_task_log` VALUES ('2445', '4', '成功', '2017-11-27 23:54:00', '2017-11-27 23:54:00', '8', null);
INSERT INTO `sys_task_log` VALUES ('2446', '4', '成功', '2017-11-27 23:55:00', '2017-11-27 23:55:00', '11', null);
INSERT INTO `sys_task_log` VALUES ('2447', '4', '成功', '2017-11-27 23:56:00', '2017-11-27 23:56:00', '7', null);
INSERT INTO `sys_task_log` VALUES ('2448', '1', '成功', '2017-11-28 00:11:00', '2017-11-28 00:11:00', '15', null);
INSERT INTO `sys_task_log` VALUES ('2449', '1', '成功', '2017-11-28 00:12:00', '2017-11-28 00:12:00', '0', null);
INSERT INTO `sys_task_log` VALUES ('2450', '1', '成功', '2017-11-28 00:20:00', '2017-11-28 00:20:00', '16', null);
INSERT INTO `sys_task_log` VALUES ('2451', '1', '成功', '2017-11-28 00:25:00', '2017-11-28 00:25:00', '11', null);
INSERT INTO `sys_task_log` VALUES ('2452', '1', '成功', '2017-11-28 00:30:00', '2017-11-28 00:30:00', '16', null);
INSERT INTO `sys_task_log` VALUES ('2453', '1', '成功', '2017-11-28 00:31:00', '2017-11-28 00:31:00', '7', null);
INSERT INTO `sys_task_log` VALUES ('2454', '1', '成功', '2017-11-28 00:32:00', '2017-11-28 00:32:00', '10', null);
INSERT INTO `sys_task_log` VALUES ('2455', '1', '成功', '2017-11-28 00:33:00', '2017-11-28 00:33:00', '8', null);
INSERT INTO `sys_task_log` VALUES ('2456', '1', '成功', '2017-11-28 00:34:00', '2017-11-28 00:34:00', '8', null);
INSERT INTO `sys_task_log` VALUES ('2457', '1', '成功', '2017-11-28 00:35:00', '2017-11-28 00:35:00', '0', null);
INSERT INTO `sys_task_log` VALUES ('2458', '1', '成功', '2017-11-28 08:15:00', '2017-11-28 08:15:00', '0', null);
INSERT INTO `sys_task_log` VALUES ('2459', '1', '成功', '2017-11-28 08:16:00', '2017-11-28 08:16:00', '1', null);
INSERT INTO `sys_task_log` VALUES ('2460', '1', '成功', '2017-11-28 08:17:00', '2017-11-28 08:17:00', '0', null);
INSERT INTO `sys_task_log` VALUES ('2461', '1', '成功', '2017-11-28 08:18:00', '2017-11-28 08:18:00', '0', null);
INSERT INTO `sys_task_log` VALUES ('2462', '1', '成功', '2017-11-28 08:19:00', '2017-11-28 08:19:00', '1', null);
INSERT INTO `sys_task_log` VALUES ('2463', '1', '成功', '2017-11-28 08:20:00', '2017-11-28 08:20:00', '0', null);
INSERT INTO `sys_task_log` VALUES ('2464', '1', '成功', '2017-11-28 08:21:00', '2017-11-28 08:21:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2465', '1', '成功', '2017-11-28 08:22:00', '2017-11-28 08:22:00', '0', null);
INSERT INTO `sys_task_log` VALUES ('2466', '1', '成功', '2017-11-28 08:23:00', '2017-11-28 08:23:00', '1', null);
INSERT INTO `sys_task_log` VALUES ('2467', '1', '成功', '2017-11-28 08:24:00', '2017-11-28 08:24:00', '0', null);
INSERT INTO `sys_task_log` VALUES ('2468', '1', '成功', '2017-11-28 08:25:00', '2017-11-28 08:25:00', '1', null);
INSERT INTO `sys_task_log` VALUES ('2469', '1', '成功', '2017-11-28 08:26:00', '2017-11-28 08:26:00', '0', null);
INSERT INTO `sys_task_log` VALUES ('2470', '1', '成功', '2017-11-28 08:27:00', '2017-11-28 08:27:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2471', '1', '成功', '2017-11-28 08:28:00', '2017-11-28 08:28:00', '0', null);
INSERT INTO `sys_task_log` VALUES ('2472', '1', '成功', '2017-11-28 08:29:00', '2017-11-28 08:29:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2473', '1', '成功', '2017-11-28 08:30:00', '2017-11-28 08:30:00', '17', null);
INSERT INTO `sys_task_log` VALUES ('2474', '1', '成功', '2017-11-28 08:31:00', '2017-11-28 08:31:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2475', '1', '成功', '2017-11-28 08:32:00', '2017-11-28 08:32:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2476', '1', '成功', '2017-11-28 08:33:00', '2017-11-28 08:33:00', '0', null);
INSERT INTO `sys_task_log` VALUES ('2477', '1', '成功', '2017-11-28 08:34:00', '2017-11-28 08:34:00', '1', null);
INSERT INTO `sys_task_log` VALUES ('2478', '1', '成功', '2017-11-28 08:35:00', '2017-11-28 08:35:00', '8', null);
INSERT INTO `sys_task_log` VALUES ('2479', '1', '成功', '2017-11-28 08:36:00', '2017-11-28 08:36:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2480', '1', '成功', '2017-11-28 08:37:00', '2017-11-28 08:37:00', '0', null);
INSERT INTO `sys_task_log` VALUES ('2481', '1', '成功', '2017-11-28 08:38:00', '2017-11-28 08:38:00', '0', null);
INSERT INTO `sys_task_log` VALUES ('2482', '1', '成功', '2017-11-28 08:39:00', '2017-11-28 08:39:00', '0', null);
INSERT INTO `sys_task_log` VALUES ('2483', '1', '成功', '2017-11-28 08:40:00', '2017-11-28 08:40:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2484', '1', '成功', '2017-11-28 08:41:00', '2017-11-28 08:41:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2485', '1', '成功', '2017-11-28 08:42:00', '2017-11-28 08:42:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2486', '1', '成功', '2017-11-28 08:43:00', '2017-11-28 08:43:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2487', '1', '成功', '2017-11-28 08:44:00', '2017-11-28 08:44:00', '6', null);
INSERT INTO `sys_task_log` VALUES ('2488', '1', '成功', '2017-11-28 08:45:00', '2017-11-28 08:45:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2489', '1', '成功', '2017-11-28 08:46:00', '2017-11-28 08:46:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2490', '1', '成功', '2017-11-28 08:47:00', '2017-11-28 08:47:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2491', '1', '成功', '2017-11-28 08:48:00', '2017-11-28 08:48:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2492', '1', '成功', '2017-11-28 08:49:00', '2017-11-28 08:49:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2493', '1', '成功', '2017-11-28 08:50:00', '2017-11-28 08:50:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2494', '1', '成功', '2017-11-28 08:51:00', '2017-11-28 08:51:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2495', '1', '成功', '2017-11-28 08:52:00', '2017-11-28 08:52:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2496', '1', '成功', '2017-11-28 08:53:00', '2017-11-28 08:53:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2497', '1', '成功', '2017-11-28 08:54:00', '2017-11-28 08:54:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2498', '1', '成功', '2017-11-28 08:55:00', '2017-11-28 08:55:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2499', '1', '成功', '2017-11-28 08:56:00', '2017-11-28 08:56:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2500', '1', '成功', '2017-11-28 08:57:00', '2017-11-28 08:57:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2501', '1', '成功', '2017-11-28 08:58:00', '2017-11-28 08:58:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2502', '1', '成功', '2017-11-28 08:59:00', '2017-11-28 08:59:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2503', '1', '成功', '2017-11-28 09:00:00', '2017-11-28 09:00:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2504', '1', '成功', '2017-11-28 09:01:00', '2017-11-28 09:01:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2505', '1', '成功', '2017-11-28 09:02:00', '2017-11-28 09:02:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2506', '1', '成功', '2017-11-28 09:03:00', '2017-11-28 09:03:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2507', '1', '成功', '2017-11-28 09:04:00', '2017-11-28 09:04:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2508', '1', '成功', '2017-11-28 09:05:00', '2017-11-28 09:05:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2509', '1', '成功', '2017-11-28 09:06:00', '2017-11-28 09:06:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2510', '1', '成功', '2017-11-28 09:07:00', '2017-11-28 09:07:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2511', '1', '成功', '2017-11-28 09:08:00', '2017-11-28 09:08:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2512', '1', '成功', '2017-11-28 09:09:00', '2017-11-28 09:09:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2513', '1', '成功', '2017-11-28 11:35:00', '2017-11-28 11:35:00', '8', null);
INSERT INTO `sys_task_log` VALUES ('2514', '1', '成功', '2017-11-28 11:36:00', '2017-11-28 11:36:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2515', '1', '成功', '2017-11-28 11:37:00', '2017-11-28 11:37:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2516', '1', '成功', '2017-11-28 11:38:00', '2017-11-28 11:38:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2517', '1', '成功', '2017-11-28 11:39:00', '2017-11-28 11:39:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2518', '1', '成功', '2017-11-28 11:40:00', '2017-11-28 11:40:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2519', '1', '成功', '2017-11-28 11:41:00', '2017-11-28 11:41:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2520', '1', '成功', '2017-11-28 11:42:00', '2017-11-28 11:42:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2521', '1', '成功', '2017-11-28 11:43:00', '2017-11-28 11:43:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2522', '1', '成功', '2017-11-28 11:44:00', '2017-11-28 11:44:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2523', '1', '成功', '2017-11-28 11:45:00', '2017-11-28 11:45:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2524', '1', '成功', '2017-11-28 11:46:00', '2017-11-28 11:46:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2525', '1', '成功', '2017-11-28 11:47:00', '2017-11-28 11:47:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2526', '1', '成功', '2017-11-28 11:48:00', '2017-11-28 11:48:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2527', '1', '成功', '2017-11-28 11:49:00', '2017-11-28 11:49:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2528', '1', '成功', '2017-11-28 11:50:00', '2017-11-28 11:50:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2529', '1', '成功', '2017-11-28 11:51:00', '2017-11-28 11:51:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2530', '1', '成功', '2017-11-28 11:52:00', '2017-11-28 11:52:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2531', '1', '成功', '2017-11-28 11:53:00', '2017-11-28 11:53:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2532', '1', '成功', '2017-11-28 11:54:00', '2017-11-28 11:54:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2533', '1', '成功', '2017-11-28 11:55:00', '2017-11-28 11:55:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2534', '1', '成功', '2017-11-28 11:56:00', '2017-11-28 11:56:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2535', '1', '成功', '2017-11-28 11:57:00', '2017-11-28 11:57:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2536', '1', '成功', '2017-11-28 11:58:00', '2017-11-28 11:58:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2537', '1', '成功', '2017-11-28 11:59:00', '2017-11-28 11:59:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2538', '1', '成功', '2017-11-28 12:00:00', '2017-11-28 12:00:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2539', '1', '成功', '2017-11-28 12:01:00', '2017-11-28 12:01:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2540', '1', '成功', '2017-11-28 12:02:00', '2017-11-28 12:02:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2541', '1', '成功', '2017-11-28 12:03:00', '2017-11-28 12:03:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2542', '1', '成功', '2017-11-28 12:04:00', '2017-11-28 12:04:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2543', '1', '成功', '2017-11-28 12:05:00', '2017-11-28 12:05:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2544', '1', '成功', '2017-11-28 12:06:00', '2017-11-28 12:06:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2545', '1', '成功', '2017-11-28 12:07:00', '2017-11-28 12:07:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2546', '1', '成功', '2017-11-28 12:08:00', '2017-11-28 12:08:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2547', '1', '成功', '2017-11-28 12:09:00', '2017-11-28 12:09:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2548', '1', '成功', '2017-11-28 12:10:00', '2017-11-28 12:10:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2549', '1', '成功', '2017-11-28 12:11:00', '2017-11-28 12:11:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2550', '1', '成功', '2017-11-28 12:12:00', '2017-11-28 12:12:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2551', '1', '成功', '2017-11-28 12:13:00', '2017-11-28 12:13:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2552', '1', '成功', '2017-11-28 12:14:00', '2017-11-28 12:14:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2553', '1', '成功', '2017-11-28 12:15:00', '2017-11-28 12:15:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2554', '1', '成功', '2017-11-28 12:16:00', '2017-11-28 12:16:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2555', '1', '成功', '2017-11-28 12:17:00', '2017-11-28 12:17:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2556', '1', '成功', '2017-11-28 12:18:00', '2017-11-28 12:18:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2557', '1', '成功', '2017-11-28 12:19:00', '2017-11-28 12:19:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2558', '1', '成功', '2017-11-28 12:20:00', '2017-11-28 12:20:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2559', '1', '成功', '2017-11-28 12:21:00', '2017-11-28 12:21:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2560', '1', '成功', '2017-11-28 12:22:00', '2017-11-28 12:22:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2561', '1', '成功', '2017-11-28 12:23:00', '2017-11-28 12:23:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2562', '1', '成功', '2017-11-28 12:24:00', '2017-11-28 12:24:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2563', '1', '成功', '2017-11-28 12:25:00', '2017-11-28 12:25:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2564', '1', '成功', '2017-11-28 12:26:00', '2017-11-28 12:26:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2565', '1', '成功', '2017-11-28 12:27:00', '2017-11-28 12:27:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2566', '1', '成功', '2017-11-28 12:28:00', '2017-11-28 12:28:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2567', '1', '成功', '2017-11-28 12:29:00', '2017-11-28 12:29:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2568', '1', '成功', '2017-11-28 12:30:00', '2017-11-28 12:30:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2569', '1', '成功', '2017-11-28 12:31:00', '2017-11-28 12:31:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2570', '1', '成功', '2017-11-28 12:32:00', '2017-11-28 12:32:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2571', '1', '成功', '2017-11-28 12:33:00', '2017-11-28 12:33:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2572', '1', '成功', '2017-11-28 12:34:00', '2017-11-28 12:34:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2573', '1', '成功', '2017-11-28 12:35:00', '2017-11-28 12:35:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2574', '1', '成功', '2017-11-28 12:36:00', '2017-11-28 12:36:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2575', '1', '成功', '2017-11-28 12:37:00', '2017-11-28 12:37:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2576', '1', '成功', '2017-11-28 12:38:00', '2017-11-28 12:38:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2577', '1', '成功', '2017-11-28 12:39:00', '2017-11-28 12:39:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2578', '1', '成功', '2017-11-28 12:40:00', '2017-11-28 12:40:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2579', '1', '成功', '2017-11-28 12:41:00', '2017-11-28 12:41:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2580', '1', '成功', '2017-11-28 12:42:00', '2017-11-28 12:42:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2581', '1', '成功', '2017-11-28 12:43:00', '2017-11-28 12:43:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2582', '1', '成功', '2017-11-28 12:44:00', '2017-11-28 12:44:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2583', '1', '成功', '2017-11-28 12:45:00', '2017-11-28 12:45:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2584', '1', '成功', '2017-11-28 12:46:00', '2017-11-28 12:46:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2585', '1', '成功', '2017-11-28 12:47:00', '2017-11-28 12:47:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2586', '1', '成功', '2017-11-28 12:48:00', '2017-11-28 12:48:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2587', '1', '成功', '2017-11-28 12:49:00', '2017-11-28 12:49:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2588', '1', '成功', '2017-11-28 12:50:00', '2017-11-28 12:50:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2589', '1', '成功', '2017-11-28 12:51:00', '2017-11-28 12:51:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2590', '1', '成功', '2017-11-28 12:52:00', '2017-11-28 12:52:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2591', '1', '成功', '2017-11-28 12:53:00', '2017-11-28 12:53:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2592', '1', '成功', '2017-11-28 12:54:00', '2017-11-28 12:54:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2593', '1', '成功', '2017-11-28 12:55:00', '2017-11-28 12:55:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2594', '1', '成功', '2017-11-28 12:56:00', '2017-11-28 12:56:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2595', '1', '成功', '2017-11-28 12:57:00', '2017-11-28 12:57:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2596', '1', '成功', '2017-11-28 12:58:00', '2017-11-28 12:58:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2597', '1', '成功', '2017-11-28 12:59:00', '2017-11-28 12:59:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2598', '1', '成功', '2017-11-28 13:00:00', '2017-11-28 13:00:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2599', '1', '成功', '2017-11-28 13:01:00', '2017-11-28 13:01:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2600', '1', '成功', '2017-11-28 13:02:00', '2017-11-28 13:02:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2601', '1', '成功', '2017-11-28 13:03:00', '2017-11-28 13:03:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2602', '1', '成功', '2017-11-28 13:04:00', '2017-11-28 13:04:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2603', '1', '成功', '2017-11-28 13:05:00', '2017-11-28 13:05:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2604', '1', '成功', '2017-11-28 13:06:00', '2017-11-28 13:06:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2605', '1', '成功', '2017-11-28 13:07:00', '2017-11-28 13:07:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2606', '1', '成功', '2017-11-28 13:08:00', '2017-11-28 13:08:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2607', '1', '成功', '2017-11-28 13:09:00', '2017-11-28 13:09:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2608', '1', '成功', '2017-11-28 13:10:00', '2017-11-28 13:10:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2609', '1', '成功', '2017-11-28 13:11:00', '2017-11-28 13:11:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2610', '1', '成功', '2017-11-28 13:12:00', '2017-11-28 13:12:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2611', '1', '成功', '2017-11-28 13:13:00', '2017-11-28 13:13:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2612', '1', '成功', '2017-11-28 13:14:00', '2017-11-28 13:14:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2613', '1', '成功', '2017-11-28 13:15:00', '2017-11-28 13:15:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2614', '1', '成功', '2017-11-28 13:16:00', '2017-11-28 13:16:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2615', '1', '成功', '2017-11-28 13:17:00', '2017-11-28 13:17:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2616', '1', '成功', '2017-11-28 13:18:00', '2017-11-28 13:18:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2617', '1', '成功', '2017-11-28 13:19:00', '2017-11-28 13:19:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2618', '1', '成功', '2017-11-28 13:20:00', '2017-11-28 13:20:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2619', '1', '成功', '2017-11-28 13:21:00', '2017-11-28 13:21:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2620', '1', '成功', '2017-11-28 13:22:00', '2017-11-28 13:22:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2621', '1', '成功', '2017-11-28 13:23:00', '2017-11-28 13:23:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2622', '1', '成功', '2017-11-28 13:24:00', '2017-11-28 13:24:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2623', '1', '成功', '2017-11-28 13:25:00', '2017-11-28 13:25:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2624', '1', '成功', '2017-11-28 13:26:00', '2017-11-28 13:26:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2625', '1', '成功', '2017-11-28 13:27:00', '2017-11-28 13:27:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2626', '1', '成功', '2017-11-28 13:28:00', '2017-11-28 13:28:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2627', '1', '成功', '2017-11-28 13:29:00', '2017-11-28 13:29:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2628', '1', '成功', '2017-11-28 13:30:00', '2017-11-28 13:30:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2629', '1', '成功', '2017-11-28 13:31:00', '2017-11-28 13:31:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2630', '1', '成功', '2017-11-28 13:32:00', '2017-11-28 13:32:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2631', '1', '成功', '2017-11-28 13:33:00', '2017-11-28 13:33:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2632', '1', '成功', '2017-11-28 13:34:00', '2017-11-28 13:34:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2633', '1', '成功', '2017-11-28 13:35:00', '2017-11-28 13:35:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2634', '1', '成功', '2017-11-28 13:36:00', '2017-11-28 13:36:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2635', '1', '成功', '2017-11-28 13:37:00', '2017-11-28 13:37:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2636', '1', '成功', '2017-11-28 13:38:00', '2017-11-28 13:38:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2637', '1', '成功', '2017-11-28 13:39:00', '2017-11-28 13:39:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2638', '1', '成功', '2017-11-28 13:40:00', '2017-11-28 13:40:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2639', '1', '成功', '2017-11-28 13:41:00', '2017-11-28 13:41:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2640', '1', '成功', '2017-11-28 13:42:00', '2017-11-28 13:42:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2641', '1', '成功', '2017-11-28 13:43:00', '2017-11-28 13:43:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2642', '1', '成功', '2017-11-28 13:44:00', '2017-11-28 13:44:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2643', '1', '成功', '2017-11-28 13:45:00', '2017-11-28 13:45:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2644', '1', '成功', '2017-11-28 13:46:00', '2017-11-28 13:46:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2645', '1', '成功', '2017-11-28 13:47:00', '2017-11-28 13:47:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2646', '1', '成功', '2017-11-28 13:48:00', '2017-11-28 13:48:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2647', '1', '成功', '2017-11-28 13:49:00', '2017-11-28 13:49:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2648', '1', '成功', '2017-11-28 13:50:00', '2017-11-28 13:50:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2649', '1', '成功', '2017-11-28 13:51:00', '2017-11-28 13:51:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2650', '1', '成功', '2017-11-28 13:52:00', '2017-11-28 13:52:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2651', '1', '成功', '2017-11-28 13:53:00', '2017-11-28 13:53:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2652', '1', '成功', '2017-11-28 13:54:00', '2017-11-28 13:54:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2653', '1', '成功', '2017-11-28 13:55:00', '2017-11-28 13:55:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2654', '1', '成功', '2017-11-28 13:56:00', '2017-11-28 13:56:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2655', '1', '成功', '2017-11-28 13:57:00', '2017-11-28 13:57:00', '7', null);
INSERT INTO `sys_task_log` VALUES ('2656', '1', '成功', '2017-11-28 13:58:00', '2017-11-28 13:58:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2657', '1', '成功', '2017-11-28 13:59:00', '2017-11-28 13:59:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2658', '1', '成功', '2017-11-28 14:00:00', '2017-11-28 14:00:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2659', '1', '成功', '2017-11-28 14:01:00', '2017-11-28 14:01:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2660', '1', '成功', '2017-11-28 14:02:00', '2017-11-28 14:02:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2661', '1', '成功', '2017-11-28 14:03:00', '2017-11-28 14:03:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2662', '1', '成功', '2017-11-28 14:04:00', '2017-11-28 14:04:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2663', '1', '成功', '2017-11-28 14:05:00', '2017-11-28 14:05:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2664', '1', '成功', '2017-11-28 14:06:00', '2017-11-28 14:06:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2665', '1', '成功', '2017-11-28 14:07:00', '2017-11-28 14:07:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2666', '1', '成功', '2017-11-28 14:08:00', '2017-11-28 14:08:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2667', '1', '成功', '2017-11-28 14:09:00', '2017-11-28 14:09:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2668', '1', '成功', '2017-11-28 15:34:00', '2017-11-28 15:34:00', '21', null);
INSERT INTO `sys_task_log` VALUES ('2669', '1', '成功', '2017-11-28 15:35:00', '2017-11-28 15:35:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2670', '1', '成功', '2017-11-28 15:36:00', '2017-11-28 15:36:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2671', '1', '成功', '2017-11-28 15:37:00', '2017-11-28 15:37:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2672', '1', '成功', '2017-11-28 15:38:00', '2017-11-28 15:38:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2673', '1', '成功', '2017-11-28 15:39:00', '2017-11-28 15:39:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2674', '1', '成功', '2017-11-28 15:40:00', '2017-11-28 15:40:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2675', '1', '成功', '2017-11-28 15:41:00', '2017-11-28 15:41:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2676', '1', '成功', '2017-11-28 15:42:00', '2017-11-28 15:42:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2677', '1', '成功', '2017-11-28 15:43:00', '2017-11-28 15:43:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2678', '1', '成功', '2017-11-28 15:44:00', '2017-11-28 15:44:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2679', '1', '成功', '2017-11-28 15:45:00', '2017-11-28 15:45:00', '6', null);
INSERT INTO `sys_task_log` VALUES ('2680', '1', '成功', '2017-11-28 15:46:00', '2017-11-28 15:46:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2681', '1', '成功', '2017-11-28 15:47:00', '2017-11-28 15:47:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2682', '1', '成功', '2017-11-28 15:48:00', '2017-11-28 15:48:00', '6', null);
INSERT INTO `sys_task_log` VALUES ('2683', '1', '成功', '2017-11-28 15:49:00', '2017-11-28 15:49:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2684', '1', '成功', '2017-11-28 15:50:00', '2017-11-28 15:50:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2685', '1', '成功', '2017-11-28 15:51:00', '2017-11-28 15:51:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2686', '1', '成功', '2017-11-28 15:52:00', '2017-11-28 15:52:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2687', '1', '成功', '2017-11-28 15:53:00', '2017-11-28 15:53:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2688', '1', '成功', '2017-11-28 15:54:00', '2017-11-28 15:54:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2689', '1', '成功', '2017-11-28 15:55:00', '2017-11-28 15:55:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2690', '1', '成功', '2017-11-28 15:56:00', '2017-11-28 15:56:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2691', '1', '成功', '2017-11-28 15:57:00', '2017-11-28 15:57:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2692', '1', '成功', '2017-11-28 15:58:00', '2017-11-28 15:58:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2693', '1', '成功', '2017-11-28 15:59:00', '2017-11-28 15:59:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2694', '1', '成功', '2017-11-28 16:00:00', '2017-11-28 16:00:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2695', '1', '成功', '2017-11-28 16:01:00', '2017-11-28 16:01:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2696', '1', '成功', '2017-11-28 16:02:00', '2017-11-28 16:02:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2697', '1', '成功', '2017-11-28 16:03:00', '2017-11-28 16:03:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2698', '1', '成功', '2017-11-28 16:04:00', '2017-11-28 16:04:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2699', '1', '成功', '2017-11-28 16:05:00', '2017-11-28 16:05:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2700', '1', '成功', '2017-11-28 16:06:00', '2017-11-28 16:06:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2701', '1', '成功', '2017-11-28 16:07:00', '2017-11-28 16:07:00', '167', null);
INSERT INTO `sys_task_log` VALUES ('2702', '1', '成功', '2017-11-28 16:08:00', '2017-11-28 16:08:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2703', '1', '成功', '2017-11-28 16:09:00', '2017-11-28 16:09:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2704', '1', '成功', '2017-11-28 16:10:00', '2017-11-28 16:10:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2705', '1', '成功', '2017-11-28 16:11:00', '2017-11-28 16:11:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2706', '1', '成功', '2017-11-28 16:12:00', '2017-11-28 16:12:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2707', '1', '成功', '2017-11-28 16:13:00', '2017-11-28 16:13:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2708', '1', '成功', '2017-11-28 16:14:00', '2017-11-28 16:14:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2709', '1', '成功', '2017-11-28 16:15:00', '2017-11-28 16:15:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2710', '1', '成功', '2017-11-28 16:16:00', '2017-11-28 16:16:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2711', '1', '成功', '2017-11-28 16:17:00', '2017-11-28 16:17:00', '6', null);
INSERT INTO `sys_task_log` VALUES ('2712', '1', '成功', '2017-11-28 16:18:00', '2017-11-28 16:18:00', '70', null);
INSERT INTO `sys_task_log` VALUES ('2713', '1', '成功', '2017-11-28 16:19:00', '2017-11-28 16:19:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2714', '1', '成功', '2017-11-28 16:20:00', '2017-11-28 16:20:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2715', '1', '成功', '2017-11-28 16:21:00', '2017-11-28 16:21:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2716', '1', '成功', '2017-11-28 16:22:00', '2017-11-28 16:22:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2717', '1', '成功', '2017-11-28 16:23:00', '2017-11-28 16:23:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2718', '1', '成功', '2017-11-28 16:24:00', '2017-11-28 16:24:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2719', '1', '成功', '2017-11-28 16:25:00', '2017-11-28 16:25:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2720', '1', '成功', '2017-11-28 16:26:00', '2017-11-28 16:26:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2721', '1', '成功', '2017-11-28 16:27:00', '2017-11-28 16:27:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2722', '1', '成功', '2017-11-28 16:28:00', '2017-11-28 16:28:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2723', '1', '成功', '2017-11-28 16:29:00', '2017-11-28 16:29:00', '7', null);
INSERT INTO `sys_task_log` VALUES ('2724', '1', '成功', '2017-11-28 16:30:00', '2017-11-28 16:30:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2725', '1', '成功', '2017-11-28 16:31:00', '2017-11-28 16:31:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2726', '1', '成功', '2017-11-28 16:32:00', '2017-11-28 16:32:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2727', '1', '成功', '2017-11-28 16:33:00', '2017-11-28 16:33:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2728', '1', '成功', '2017-11-28 16:34:00', '2017-11-28 16:34:00', '149', null);
INSERT INTO `sys_task_log` VALUES ('2729', '1', '成功', '2017-11-28 16:35:00', '2017-11-28 16:35:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2730', '1', '成功', '2017-11-28 16:36:00', '2017-11-28 16:36:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2731', '1', '成功', '2017-11-28 16:38:00', '2017-11-28 16:38:00', '167', null);
INSERT INTO `sys_task_log` VALUES ('2732', '1', '成功', '2017-11-28 16:39:00', '2017-11-28 16:39:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2733', '1', '成功', '2017-11-28 16:40:00', '2017-11-28 16:40:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2734', '1', '成功', '2017-11-28 16:41:00', '2017-11-28 16:41:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2735', '1', '成功', '2017-11-28 16:42:00', '2017-11-28 16:42:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2736', '1', '成功', '2017-11-28 16:43:00', '2017-11-28 16:43:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2737', '1', '成功', '2017-11-28 16:44:00', '2017-11-28 16:44:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2738', '1', '成功', '2017-11-28 16:45:00', '2017-11-28 16:45:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2739', '1', '成功', '2017-11-28 16:46:00', '2017-11-28 16:46:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2740', '1', '成功', '2017-11-28 16:47:00', '2017-11-28 16:47:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2741', '1', '成功', '2017-11-28 16:48:00', '2017-11-28 16:48:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2742', '1', '成功', '2017-11-28 16:49:00', '2017-11-28 16:49:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2743', '1', '成功', '2017-11-28 16:50:00', '2017-11-28 16:50:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2744', '1', '成功', '2017-11-28 16:51:00', '2017-11-28 16:51:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2745', '1', '成功', '2017-11-28 16:52:00', '2017-11-28 16:52:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2746', '1', '成功', '2017-11-28 16:53:00', '2017-11-28 16:53:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2747', '1', '成功', '2017-11-28 16:54:00', '2017-11-28 16:54:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2748', '1', '成功', '2017-11-28 16:55:00', '2017-11-28 16:55:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2749', '1', '成功', '2017-11-28 16:56:00', '2017-11-28 16:56:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2750', '1', '成功', '2017-11-28 16:57:00', '2017-11-28 16:57:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2751', '1', '成功', '2017-11-28 16:58:00', '2017-11-28 16:58:00', '178', null);
INSERT INTO `sys_task_log` VALUES ('2752', '1', '成功', '2017-11-28 16:59:00', '2017-11-28 16:59:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2753', '1', '成功', '2017-11-28 17:00:00', '2017-11-28 17:00:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2754', '1', '成功', '2017-11-28 17:01:00', '2017-11-28 17:01:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2755', '1', '成功', '2017-11-28 17:02:00', '2017-11-28 17:02:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2756', '1', '成功', '2017-11-28 17:03:00', '2017-11-28 17:03:00', '13', null);
INSERT INTO `sys_task_log` VALUES ('2757', '1', '成功', '2017-11-28 17:04:00', '2017-11-28 17:04:00', '194', null);
INSERT INTO `sys_task_log` VALUES ('2758', '1', '成功', '2017-11-28 17:05:00', '2017-11-28 17:05:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2759', '1', '成功', '2017-11-28 17:06:00', '2017-11-28 17:06:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2760', '1', '成功', '2017-11-28 17:07:00', '2017-11-28 17:07:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2761', '1', '成功', '2017-11-28 17:08:00', '2017-11-28 17:08:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2762', '1', '成功', '2017-11-28 17:09:00', '2017-11-28 17:09:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2763', '1', '成功', '2017-11-28 17:10:00', '2017-11-28 17:10:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2764', '1', '成功', '2017-11-28 17:11:00', '2017-11-28 17:11:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2765', '1', '成功', '2017-11-28 17:12:00', '2017-11-28 17:12:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2766', '1', '成功', '2017-11-28 17:13:00', '2017-11-28 17:13:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2767', '1', '成功', '2017-11-28 17:14:00', '2017-11-28 17:14:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2768', '1', '成功', '2017-11-28 17:15:00', '2017-11-28 17:15:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2769', '1', '成功', '2017-11-28 17:16:00', '2017-11-28 17:16:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2770', '1', '成功', '2017-11-28 17:17:00', '2017-11-28 17:17:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2771', '1', '成功', '2017-11-28 17:18:00', '2017-11-28 17:18:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2772', '1', '成功', '2017-11-28 17:19:00', '2017-11-28 17:19:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2773', '1', '成功', '2017-11-28 17:20:00', '2017-11-28 17:20:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2774', '1', '成功', '2017-11-28 17:22:00', '2017-11-28 17:22:00', '7', null);
INSERT INTO `sys_task_log` VALUES ('2775', '1', '成功', '2017-11-28 17:23:00', '2017-11-28 17:23:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2776', '1', '成功', '2017-11-28 17:24:00', '2017-11-28 17:24:00', '7', null);
INSERT INTO `sys_task_log` VALUES ('2777', '1', '成功', '2017-11-28 17:25:00', '2017-11-28 17:25:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2778', '1', '成功', '2017-11-28 17:26:00', '2017-11-28 17:26:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2779', '1', '成功', '2017-11-28 17:27:00', '2017-11-28 17:27:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2780', '1', '成功', '2017-11-28 17:28:00', '2017-11-28 17:28:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2781', '1', '成功', '2017-11-28 17:29:00', '2017-11-28 17:29:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2782', '1', '成功', '2017-11-28 17:30:00', '2017-11-28 17:30:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2783', '1', '成功', '2017-11-28 17:31:00', '2017-11-28 17:31:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2784', '1', '成功', '2017-11-28 17:32:00', '2017-11-28 17:32:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2785', '1', '成功', '2017-11-28 17:33:00', '2017-11-28 17:33:00', '2', null);
INSERT INTO `sys_task_log` VALUES ('2786', '1', '成功', '2017-11-28 17:34:00', '2017-11-28 17:34:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2787', '1', '成功', '2017-11-28 17:35:00', '2017-11-28 17:35:00', '6', null);
INSERT INTO `sys_task_log` VALUES ('2788', '1', '成功', '2017-11-28 17:36:00', '2017-11-28 17:36:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2789', '1', '成功', '2017-11-28 17:37:00', '2017-11-28 17:37:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2790', '1', '成功', '2017-11-28 17:38:00', '2017-11-28 17:38:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2791', '1', '成功', '2017-11-28 17:39:00', '2017-11-28 17:39:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2792', '1', '成功', '2017-11-28 17:40:00', '2017-11-28 17:40:00', '10', null);
INSERT INTO `sys_task_log` VALUES ('2793', '1', '成功', '2017-11-28 17:41:00', '2017-11-28 17:41:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2794', '1', '成功', '2017-11-28 17:42:00', '2017-11-28 17:42:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2795', '1', '成功', '2017-11-28 17:43:00', '2017-11-28 17:43:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2796', '1', '成功', '2017-11-28 17:44:00', '2017-11-28 17:44:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2797', '1', '成功', '2017-11-28 17:45:00', '2017-11-28 17:45:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2798', '1', '成功', '2017-11-28 17:46:00', '2017-11-28 17:46:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2799', '1', '成功', '2017-11-28 17:47:00', '2017-11-28 17:47:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2800', '1', '成功', '2017-11-28 17:48:00', '2017-11-28 17:48:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2801', '1', '成功', '2017-11-28 17:49:00', '2017-11-28 17:49:00', '3', null);
INSERT INTO `sys_task_log` VALUES ('2802', '6', '成功', '2017-11-28 17:57:00', '2017-11-28 17:57:00', '9', null);
INSERT INTO `sys_task_log` VALUES ('2803', '6', '成功', '2017-11-28 17:58:00', '2017-11-28 17:58:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2804', '6', '成功', '2017-11-28 18:03:35', '2017-11-28 18:03:35', '186', null);
INSERT INTO `sys_task_log` VALUES ('2805', '6', '成功', '2017-11-28 18:03:48', '2017-11-28 18:03:48', '4', null);
INSERT INTO `sys_task_log` VALUES ('2806', '6', '成功', '2017-11-28 18:03:52', '2017-11-28 18:03:52', '6', null);
INSERT INTO `sys_task_log` VALUES ('2807', '6', '成功', '2017-11-28 18:48:00', '2017-11-28 18:48:00', '8', null);
INSERT INTO `sys_task_log` VALUES ('2808', '6', '成功', '2017-11-28 18:49:00', '2017-11-28 18:49:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2809', '6', '成功', '2017-11-28 18:50:00', '2017-11-28 18:50:00', '5', null);
INSERT INTO `sys_task_log` VALUES ('2810', '7', '成功', '2017-11-28 19:07:21', '2017-11-28 19:08:11', '50005', null);
INSERT INTO `sys_task_log` VALUES ('2811', '7', '成功', '2017-11-28 19:08:37', '2017-11-28 19:09:27', '50003', null);
INSERT INTO `sys_task_log` VALUES ('2812', '7', '成功', '2017-11-28 19:16:26', '2017-11-28 19:17:16', '50005', null);
INSERT INTO `sys_task_log` VALUES ('2813', '7', '成功', '2017-11-28 19:18:07', '2017-11-28 19:18:57', '50001', null);
INSERT INTO `sys_task_log` VALUES ('2816', '7', '成功', '2017-11-28 19:35:00', '2017-11-28 19:35:00', '8', null);
INSERT INTO `sys_task_log` VALUES ('2817', '7', '成功', '2017-11-28 19:36:00', '2017-11-28 19:36:00', '4', null);
INSERT INTO `sys_task_log` VALUES ('2818', '7', '成功', '2017-11-28 19:38:00', '2017-11-28 19:38:00', '6', null);
INSERT INTO `sys_task_log` VALUES ('2819', '7', '成功', '2017-11-28 19:52:47', '2017-11-28 19:52:47', '6', null);

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
-- Procedure structure for `task_pro_test`
-- ----------------------------
DROP PROCEDURE IF EXISTS `task_pro_test`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `task_pro_test`()
BEGIN
	#Routine body goes here...
select 1;
END
;;
DELIMITER ;

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
