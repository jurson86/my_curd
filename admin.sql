/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : admin

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-11-28 00:36:06
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='定时任务';

-- ----------------------------
-- Records of sys_task
-- ----------------------------
INSERT INTO `sys_task` VALUES ('1', '百度', '1', 'https://www.baidu.com', '*/1 * * * *', '成功', '2017-11-28 00:35:00', '0', '2', '1', '2017-03-04 16:08:06');
INSERT INTO `sys_task` VALUES ('2', 'css', '1', 'http://www.newsres.cn/2017lh/css/lhxl.css', '* */1 * * *', '成功', '2017-04-12 00:00:34', '75', '2', '1', '2017-03-04 00:00:00');
INSERT INTO `sys_task` VALUES ('3', '查询', '2', 'select 2', '* */1 * * *', '成功', '2017-09-12 20:22:00', '20', '2', null, '2017-03-04 17:32:02');
INSERT INTO `sys_task` VALUES ('4', '存储过程', '2', 'call admin.task_pro_test()', '* */1 * * *', '成功', '2017-11-27 23:56:00', '7', '2', null, '2017-03-05 00:30:20');
INSERT INTO `sys_task` VALUES ('5', 'ITask', '3', 'com.zcurd.common.task.DemoTask', '* */1 * * *', '成功', '2017-03-26 22:50:00', '3', '2', null, '2017-03-18 14:43:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=2458 DEFAULT CHARSET=utf8 COMMENT='定时任务-日志';

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
