/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : my_curd

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 01/03/2019 22:18:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ex_single_table
-- ----------------------------
DROP TABLE IF EXISTS `ex_single_table`;
CREATE TABLE `ex_single_table`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `age` int(11) NOT NULL COMMENT '年龄',
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '添加人',
  `createTime` datetime(0) NOT NULL COMMENT '添加时间',
  `updater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '例子 单表结构' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ex_single_table
-- ----------------------------
INSERT INTO `ex_single_table` VALUES ('548626631611121664', 'zhangchuang2', 20, 'M', 'admin', '2019-02-22 22:06:21', 'admin', '2019-02-22 22:05:49');
INSERT INTO `ex_single_table` VALUES ('548626631619510272', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631623704576', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631632093184', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631636287488', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631640481792', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631648870400', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631653064704', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631657259008', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631661453312', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631669841920', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631674036224', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631682424832', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631686619136', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631695007744', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631699202048', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631703396352', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631711784960', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631715979264', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631720173568', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631724367872', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631728562176', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631736950784', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631741145088', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631745339392', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631749533696', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:21', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631753728000', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631757922304', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631762116608', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631766310912', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631770505216', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631774699520', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631783088128', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631787282432', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631791476736', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631795671040', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631799865344', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631804059648', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631808253952', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631812448256', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631816642560', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631820836864', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631825031168', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631829225472', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631833419776', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631837614080', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631841808384', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631846002688', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631850196992', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631854391296', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631858585600', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631862779904', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631866974208', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631871168512', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631875362816', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631879557120', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631883751424', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631887945728', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631892140032', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631892140033', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631896334336', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631900528640', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631904722944', 'zhangchuang', 20, 'M', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631908917248', 'ggg', 3, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('548626631913111552', 'hello', 5, 'F', 'admin', '2019-02-22 22:06:22', 'admin', NULL);

-- ----------------------------
-- Table structure for ex_staff
-- ----------------------------
DROP TABLE IF EXISTS `ex_staff`;
CREATE TABLE `ex_staff`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `idCard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号',
  `nation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '民族',
  `height` int(11) NOT NULL COMMENT '身高CM',
  `weight` int(11) NOT NULL COMMENT '体重KG',
  `job` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位',
  `homeAddress` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '家庭地址',
  `phoneNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '添加人',
  `createTime` datetime(0) NOT NULL COMMENT '添加时间',
  `updater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '一线员工' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ex_staff
-- ----------------------------
INSERT INTO `ex_staff` VALUES ('538058415805562880', '张大炮', 'M', 'akb48', '汉族', 180, 180, '开发', '中国河南郑州', '1101202221121', 'admin', '2019-01-24 18:12:02', 'admin', '2019-02-22 22:48:10');

-- ----------------------------
-- Table structure for ex_staff_education
-- ----------------------------
DROP TABLE IF EXISTS `ex_staff_education`;
CREATE TABLE `ex_staff_education`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `schoolName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学校名字',
  `grade` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '等级',
  `startTime` datetime(0) NOT NULL COMMENT '开始时间',
  `endTime` datetime(0) NOT NULL COMMENT '结束时间',
  `exStaffId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '添加人',
  `createTime` datetime(0) NOT NULL COMMENT '添加时间',
  `updater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `EX_STAFF_EDU_IX1`(`exStaffId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工教育经历' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ex_staff_education
-- ----------------------------
INSERT INTO `ex_staff_education` VALUES ('538058415943974912', '清华大学', '本科', '2019-01-24 00:00:00', '2020-03-05 00:00:00', '538058415805562880', 'admin', '2019-01-24 18:12:03', 'admin', '2019-02-22 22:48:10');
INSERT INTO `ex_staff_education` VALUES ('538058415943974913', '北大学', '专科', '2019-01-24 00:00:00', '2019-01-25 00:00:00', '538058415805562880', 'admin', '2019-01-24 18:12:03', 'admin', '2019-02-22 22:48:10');
INSERT INTO `ex_staff_education` VALUES ('540227932535128064', '东京大学', '本科', '2019-01-30 00:00:00', '2019-01-31 00:00:00', '538058415805562880', 'admin', '2019-01-30 17:52:56', 'admin', '2019-02-22 22:48:10');

-- ----------------------------
-- Table structure for ex_staff_experience
-- ----------------------------
DROP TABLE IF EXISTS `ex_staff_experience`;
CREATE TABLE `ex_staff_experience`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `companyName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司名',
  `trade` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '行业',
  `startTime` datetime(0) NOT NULL COMMENT '开始时间',
  `endTime` datetime(0) NOT NULL COMMENT '结束时间',
  `exStaffId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `witness` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '证明人',
  `witnessPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '证明人联系方式',
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '添加人',
  `createTime` datetime(0) NOT NULL COMMENT '添加时间',
  `updater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `EX_STAFF_EXPERIENCE_IX1`(`exStaffId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工工作经历' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ex_staff_experience
-- ----------------------------
INSERT INTO `ex_staff_experience` VALUES ('538058416011083776', '微软', '软件', '2019-01-24 00:00:00', '2019-01-24 00:00:00', '538058415805562880', '桃谷绘', 'alallalala alaal', 'admin', '2019-01-24 18:12:03', 'admin', '2019-02-22 22:48:10');
INSERT INTO `ex_staff_experience` VALUES ('538063690293837824', 'facebook', '互联网', '2019-01-28 00:00:00', '2022-07-13 00:00:00', '538058415805562880', '扎克', '跌幅扩大开放', 'admin', '2019-01-24 18:33:00', 'admin', '2019-02-22 22:48:10');
INSERT INTO `ex_staff_experience` VALUES ('540235184860037120', 'llalalla', 'lalal', '2019-01-30 00:00:00', '2019-01-30 00:00:00', '538058415805562880', 'llal', 'lsdlfl', 'admin', '2019-01-30 18:21:45', 'admin', '2019-02-22 22:48:10');

-- ----------------------------
-- Table structure for ex_staff_family
-- ----------------------------
DROP TABLE IF EXISTS `ex_staff_family`;
CREATE TABLE `ex_staff_family`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `relation` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关系',
  `exStaffId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `job` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系方式',
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '添加人',
  `createTime` datetime(0) NOT NULL COMMENT '添加时间',
  `updater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `EX_STAFF_FAMILY_IX1`(`exStaffId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '员工家人' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ex_staff_family
-- ----------------------------
INSERT INTO `ex_staff_family` VALUES ('538058416078192640', '马云', '父亲', '538058415805562880', '老板', '啦啦啦', 'admin', '2019-01-24 18:12:03', 'admin', '2019-02-22 22:48:10');
INSERT INTO `ex_staff_family` VALUES ('538064117307539456', '亦菲', '妻子', '538058415805562880', 'actor star', '爱卡卡', 'admin', '2019-01-24 18:34:42', 'admin', '2019-02-22 22:48:10');

-- ----------------------------
-- Table structure for sys_button
-- ----------------------------
DROP TABLE IF EXISTS `sys_button`;
CREATE TABLE `sys_button`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `sysMenuId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单id',
  `buttonCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '按钮编码',
  `buttonTxt` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '按钮说明',
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  `updater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后更新人',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sysMenuId`(`sysMenuId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单按钮' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_button
-- ----------------------------
INSERT INTO `sys_button` VALUES ('551156061378183168', '520751411466600448', 'sysMenu:Add', '增加', 'admin', '2019-03-01 21:37:25', 'admin', '2019-03-01 21:38:37');
INSERT INTO `sys_button` VALUES ('551156321852850176', '520751411466600448', 'sysMenu:Update', '编辑', 'admin', '2019-03-01 21:38:27', 'admin', '2019-03-01 21:39:14');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `groupCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类编码',
  `dictLabel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文本',
  `dictValue` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文本值',
  `creater` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  `updater` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `sortNum` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `delFlag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标志，X 已删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `groupCode`(`groupCode`) USING BTREE,
  INDEX `dictValue`(`dictValue`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('521827824076587009', 'userState', '正常', '0', 'debug', '2018-12-10 23:17:28', 'debug', '2018-12-11 13:15:56', 1, NULL);
INSERT INTO `sys_dict` VALUES ('521827863423352832', 'userState', '禁用', '1', 'debug', '2018-12-10 23:17:37', 'debug', '2018-12-11 13:16:01', 2, NULL);
INSERT INTO `sys_dict` VALUES ('521827943521976321', 'jobLevel', '普通员工', 'staff', 'debug', '2018-12-10 23:17:56', NULL, NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES ('521828020609089537', 'jobLevel', '组长', 'monitor', 'debug', '2018-12-10 23:18:15', NULL, NULL, 2, NULL);
INSERT INTO `sys_dict` VALUES ('521828077643235328', 'jobLevel', '主管', 'director', 'debug', '2018-12-10 23:18:28', NULL, NULL, 3, NULL);
INSERT INTO `sys_dict` VALUES ('538060176058482688', 'education', '小学', '小学', 'admin', '2019-01-24 18:19:02', NULL, NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES ('538060214528638976', 'education', '初中', '初中', 'admin', '2019-01-24 18:19:11', NULL, NULL, 2, NULL);
INSERT INTO `sys_dict` VALUES ('538060303070396416', 'education', '高中', '高中', 'admin', '2019-01-24 18:19:32', NULL, NULL, 3, NULL);
INSERT INTO `sys_dict` VALUES ('538060348284993536', 'education', '专科', '专科', 'admin', '2019-01-24 18:19:43', NULL, NULL, 4, NULL);
INSERT INTO `sys_dict` VALUES ('538060393835134976', 'education', '本科', '本科', 'admin', '2019-01-24 18:19:54', NULL, NULL, 5, NULL);
INSERT INTO `sys_dict` VALUES ('538060704649838592', 'familyRelation', '父亲', '父亲', 'admin', '2019-01-24 18:21:08', NULL, NULL, 1, NULL);
INSERT INTO `sys_dict` VALUES ('538060775592296448', 'familyRelation', '母亲', '母亲', 'admin', '2019-01-24 18:21:25', NULL, NULL, 2, NULL);
INSERT INTO `sys_dict` VALUES ('538060824728567808', 'familyRelation', '妻子', '妻子', 'admin', '2019-01-24 18:21:37', NULL, NULL, 3, NULL);
INSERT INTO `sys_dict` VALUES ('538060869523734528', 'familyRelation', '丈夫', '丈夫', 'admin', '2019-01-24 18:21:47', NULL, NULL, 4, NULL);
INSERT INTO `sys_dict` VALUES ('538060914461507584', 'familyRelation', '儿子', '儿子', 'admin', '2019-01-24 18:21:58', NULL, NULL, 5, NULL);
INSERT INTO `sys_dict` VALUES ('538060979527745536', 'familyRelation', '女儿', '女儿', 'admin', '2019-01-24 18:22:14', 'admin', '2019-02-22 10:20:48', 6, NULL);
INSERT INTO `sys_dict` VALUES ('546767390843600896', 'theme', '默认', 'default #447eff', 'admin', '2019-02-17 18:58:24', 'admin', '2019-02-17 19:00:44', 1, NULL);
INSERT INTO `sys_dict` VALUES ('546767600428777472', 'theme', '绿色', 'green #40b370', 'admin', '2019-02-17 18:59:14', 'admin', '2019-02-17 19:00:39', 2, NULL);
INSERT INTO `sys_dict` VALUES ('546767700571979776', 'theme', '浅绿色', 'wechat #09b83e', 'admin', '2019-02-17 18:59:38', 'admin', '2019-02-17 20:56:30', 3, NULL);
INSERT INTO `sys_dict` VALUES ('546767905048494080', 'theme', '深蓝色', 'wordpress #21759b', 'admin', '2019-02-17 19:00:27', 'admin', '2019-02-17 20:56:23', 4, NULL);
INSERT INTO `sys_dict` VALUES ('546798242201862144', 'theme', '红色', 'gplus #dd4b39', 'admin', '2019-02-17 21:00:59', NULL, NULL, 5, NULL);
INSERT INTO `sys_dict` VALUES ('546798541595475968', 'theme', '紫色', 'yahoo #410093', 'admin', '2019-02-17 21:02:11', NULL, NULL, 6, NULL);

-- ----------------------------
-- Table structure for sys_dict_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_group`;
CREATE TABLE `sys_dict_group`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `groupName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分组名',
  `groupCode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分组编码',
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  `updater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `delFlag` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标志，X 已删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `groupCode`(`groupCode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典分组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_group
-- ----------------------------
INSERT INTO `sys_dict_group` VALUES ('521827539576946688', '用户状态', 'userState', 'debug', '2018-12-10 23:16:20', 'debug', '2018-12-11 14:22:00', NULL);
INSERT INTO `sys_dict_group` VALUES ('521827608057348097', '职位级别', 'jobLevel', 'debug', '2018-12-10 23:16:36', 'zhangchuang', '2018-12-16 12:06:54', NULL);
INSERT INTO `sys_dict_group` VALUES ('538060106122657792', '学历', 'education', 'admin', '2019-01-24 18:18:45', NULL, NULL, NULL);
INSERT INTO `sys_dict_group` VALUES ('538060660420902912', '亲属关系', 'familyRelation', 'admin', '2019-01-24 18:20:58', 'admin', '2019-02-22 10:18:29', NULL);
INSERT INTO `sys_dict_group` VALUES ('546767153253056512', '主题', 'theme', 'admin', '2019-02-17 18:57:27', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `path` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件存储地址',
  `oriName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件原名',
  `mime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'MIME类型',
  `fileType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型（文件后缀）',
  `fileLength` decimal(65, 30) NULL DEFAULT NULL COMMENT '文件大小（单位B字节)',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `saveId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留其它表主键',
  `creater` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  `updater` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oriName`(`oriName`) USING BTREE,
  INDEX `mime`(`mime`) USING BTREE,
  INDEX `fileType`(`fileType`) USING BTREE,
  INDEX `saveId`(`saveId`) USING BTREE,
  INDEX `creater`(`creater`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户上传的文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES ('549671164947988480', 'upload/image/20190225/19165791561.jpg', 'timg.jpg', 'image/jpeg', 'jpg', 33809.000000000000000000000000000000, 'admin 头像', NULL, 'admin', '2019-02-25 19:16:58', NULL, NULL);
INSERT INTO `sys_file` VALUES ('550747887550595072', 'upload/image/20190228/18352861496.jpg', 'timg.jpg', 'image/jpeg', 'jpg', 33809.000000000000000000000000000000, 'admin 头像', NULL, 'admin', '2019-02-28 18:35:28', NULL, NULL);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `menuName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单地址',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单图标',
  `sortNum` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `pid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '父ID',
  `btnControl` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否有按钮控制Y是null否',
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  `updater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `url`(`url`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('520749715428474880', '权限管理', '/', 'iconfont icon-permission', 1, '0', NULL, 'debug', '2018-12-07 23:53:27', 'debug', '2018-12-10 18:51:00');
INSERT INTO `sys_menu` VALUES ('520750975204458496', '系统运维', '/', 'iconfont icon-operation', 3, '0', NULL, 'debug', '2018-12-07 23:58:27', 'zhangchuang', '2018-12-16 14:08:18');
INSERT INTO `sys_menu` VALUES ('520751187331383297', '配置文件', '/sysFile', 'iconfont icon-file', 1, '520750975204458496', NULL, 'debug', '2018-12-07 23:59:18', 'admin', '2019-02-22 17:52:36');
INSERT INTO `sys_menu` VALUES ('520751411466600448', '菜单管理', '/sysMenu', 'iconfont icon-menu', 1, '520749715428474880', 'Y', 'debug', '2018-12-08 00:00:11', 'debug', '2018-12-10 18:52:08');
INSERT INTO `sys_menu` VALUES ('520751483449245697', '角色管理', '/sysRole', 'iconfont icon-role', 2, '520749715428474880', NULL, 'debug', '2018-12-08 00:00:28', 'debug', '2018-12-10 18:52:22');
INSERT INTO `sys_menu` VALUES ('520751566345469952', '机构管理', '/sysOrg', 'iconfont icon-org', 5, '520749715428474880', NULL, 'debug', '2018-12-08 00:00:48', 'zhangchuang', '2018-12-16 11:09:56');
INSERT INTO `sys_menu` VALUES ('520751881509666817', '用户管理', '/sysUser', 'iconfont icon-user', 4, '520749715428474880', NULL, 'debug', '2018-12-08 00:02:03', 'zhangchuang', '2018-12-16 11:08:39');
INSERT INTO `sys_menu` VALUES ('520752428128141312', '数据字典', '/sysDict', 'iconfont icon-dict', 1, '520750975204458496', NULL, 'debug', '2018-12-08 00:04:13', 'debug', '2018-12-10 19:03:56');
INSERT INTO `sys_menu` VALUES ('520752809180659712', '访问日志', '/sysVisitLog', 'iconfont icon-visitLog', 4, '520750975204458496', NULL, 'debug', '2018-12-08 00:05:44', 'debug', '2018-12-10 19:04:31');
INSERT INTO `sys_menu` VALUES ('520752938604298240', '业务日志', '/sysServiceLog', 'iconfont icon-serviceLog', 5, '520750975204458496', NULL, 'debug', '2018-12-08 00:06:15', 'debug', '2018-12-10 19:05:01');
INSERT INTO `sys_menu` VALUES ('520753306482507776', '账号解锁', '/sysUserUnlock', 'iconfont icon-unlock', 6, '520750975204458496', NULL, 'debug', '2018-12-08 00:07:43', 'admin', '2018-12-16 14:33:01');
INSERT INTO `sys_menu` VALUES ('520753742492991488', '通知类型', '/sysNoticeType', 'iconfont icon-noticeType', 8, '520750975204458496', NULL, 'debug', '2018-12-08 00:09:27', 'admin', '2019-02-27 14:52:08');
INSERT INTO `sys_menu` VALUES ('529975794877857792', '定时任务', '/sysTask', 'iconfont icon-task', 7, '520750975204458496', NULL, 'admin', '2019-01-02 10:54:35', NULL, NULL);
INSERT INTO `sys_menu` VALUES ('533964782852636672', '测试例子', '/', 'iconfont icon-gencode', 4, '0', NULL, 'admin', '2019-01-13 11:05:24', 'admin', '2019-02-24 10:18:04');
INSERT INTO `sys_menu` VALUES ('533964972439371776', '普通单表', '/exSingleTable', 'iconfont icon-gencode', 1, '533964782852636672', NULL, 'admin', '2019-01-13 11:06:10', NULL, NULL);
INSERT INTO `sys_menu` VALUES ('537980279722082304', '一对多表', '/exStaff', 'iconfont icon-gencode', 3, '533964782852636672', NULL, 'admin', '2019-01-24 13:01:33', 'admin', '2019-02-22 22:28:47');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系统主键',
  `typeCode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '通知类型编码',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  `expiryTime` datetime(0) NULL DEFAULT NULL COMMENT '过期时间',
  `deadTime` datetime(0) NULL DEFAULT NULL COMMENT '必死时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `typeCode`(`typeCode`) USING BTREE,
  INDEX `title`(`title`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知消息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('546764251063123968', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-17 18:45:55 删除了 1 条 访问日志。', '2019-02-17 18:45:55', '2019-02-27 18:45:55', '2019-03-09 18:45:55');
INSERT INTO `sys_notice` VALUES ('546976233372516352', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-18 08:48:16 删除了 1 条 访问日志。', '2019-02-18 08:48:16', '2019-02-28 08:48:16', '2019-03-10 08:48:16');
INSERT INTO `sys_notice` VALUES ('546976272090136576', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-18 08:48:25 删除了 2 条 访问日志。', '2019-02-18 08:48:25', '2019-02-28 08:48:25', '2019-03-10 08:48:25');
INSERT INTO `sys_notice` VALUES ('548559829438824448', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-22 17:40:54 删除了 1 条 访问日志。', '2019-02-22 17:40:55', '2019-03-04 17:40:55', '2019-03-14 17:40:55');
INSERT INTO `sys_notice` VALUES ('548559869783834624', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-22 17:41:04 删除了 1 条 访问日志。', '2019-02-22 17:41:04', '2019-03-04 17:41:04', '2019-03-14 17:41:04');
INSERT INTO `sys_notice` VALUES ('548559926457270272', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-22 17:41:18 删除了 1 条 访问日志。', '2019-02-22 17:41:18', '2019-03-04 17:41:18', '2019-03-14 17:41:18');
INSERT INTO `sys_notice` VALUES ('548560486958891008', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-22 17:43:31 删除了 1 条 访问日志。', '2019-02-22 17:43:31', '2019-03-04 17:43:31', '2019-03-14 17:43:31');
INSERT INTO `sys_notice` VALUES ('548560911795748864', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-22 17:45:13 删除了 1 条 访问日志。', '2019-02-22 17:45:13', '2019-03-04 17:45:13', '2019-03-14 17:45:13');
INSERT INTO `sys_notice` VALUES ('548560934939918336', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-22 17:45:18 删除了 2 条 访问日志。', '2019-02-22 17:45:18', '2019-03-04 17:45:18', '2019-03-14 17:45:18');
INSERT INTO `sys_notice` VALUES ('548566326755459072', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-22 18:06:44 删除了 1 条 访问日志。', '2019-02-22 18:06:44', '2019-03-04 18:06:44', '2019-03-14 18:06:44');
INSERT INTO `sys_notice` VALUES ('549173295270854656', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-24 10:18:36 删除了 2 条 访问日志。', '2019-02-24 10:18:36', '2019-03-06 10:18:36', '2019-03-16 10:18:36');
INSERT INTO `sys_notice` VALUES ('549640226994126848', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-25 17:14:01 删除了 1 条 访问日志。', '2019-02-25 17:14:01', '2019-03-07 17:14:01', '2019-03-17 17:14:01');
INSERT INTO `sys_notice` VALUES ('549651310161428480', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-25 17:58:04 删除了 1 条 访问日志。', '2019-02-25 17:58:04', '2019-03-07 17:58:04', '2019-03-17 17:58:04');
INSERT INTO `sys_notice` VALUES ('550338732767576064', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-27 15:29:38 删除了 1 条 访问日志。', '2019-02-27 15:29:38', '2019-03-09 15:29:38', '2019-03-19 15:29:38');
INSERT INTO `sys_notice` VALUES ('550338755119022080', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-27 15:29:44 删除了 1 条 访问日志。', '2019-02-27 15:29:44', '2019-03-09 15:29:44', '2019-03-19 15:29:44');
INSERT INTO `sys_notice` VALUES ('550749303342104576', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-28 18:41:06 删除了 1 条 访问日志。', '2019-02-28 18:41:06', '2019-03-10 18:41:06', '2019-03-20 18:41:06');

-- ----------------------------
-- Table structure for sys_notice_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_detail`;
CREATE TABLE `sys_notice_detail`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `sysNoticeId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '通知id',
  `sender` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息发送人',
  `receiver` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息接收人',
  `hasRead` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否阅读YN',
  `readTime` datetime(0) NULL DEFAULT NULL COMMENT '阅读时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sysNoticeId`(`sysNoticeId`) USING BTREE,
  INDEX `sender`(`sender`) USING BTREE,
  INDEX `receiver`(`receiver`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知消息从表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice_detail
-- ----------------------------
INSERT INTO `sys_notice_detail` VALUES ('546764251134427136', '546764251063123968', NULL, '522465144505106432', 'Y', '2019-02-18 08:47:10');
INSERT INTO `sys_notice_detail` VALUES ('546764251134427138', '546764251063123968', NULL, '522465900809420800', 'Y', '2019-02-24 21:37:44');
INSERT INTO `sys_notice_detail` VALUES ('546976233427042304', '546976233372516352', NULL, '522465144505106432', 'Y', '2019-02-22 17:40:14');
INSERT INTO `sys_notice_detail` VALUES ('546976233427042306', '546976233372516352', NULL, '522465900809420800', 'Y', '2019-02-24 21:37:44');
INSERT INTO `sys_notice_detail` VALUES ('546976272098525184', '546976272090136576', NULL, '522465900809420800', 'Y', '2019-02-24 21:37:44');
INSERT INTO `sys_notice_detail` VALUES ('546976272102719489', '546976272090136576', NULL, '522465144505106432', 'Y', '2019-02-22 17:40:17');
INSERT INTO `sys_notice_detail` VALUES ('548560911812526080', '548560911795748864', NULL, '522465144505106432', 'Y', '2019-02-22 17:54:18');
INSERT INTO `sys_notice_detail` VALUES ('548560911812526081', '548560911795748864', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('548560934948306944', '548560934939918336', NULL, '522465144505106432', 'Y', '2019-02-22 17:54:21');
INSERT INTO `sys_notice_detail` VALUES ('548560934948306945', '548560934939918336', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('548566326768041984', '548566326755459072', NULL, '522465144505106432', 'Y', '2019-02-22 23:03:42');
INSERT INTO `sys_notice_detail` VALUES ('548566326768041985', '548566326755459072', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('549173295384100864', '549173295270854656', NULL, '522465144505106432', 'Y', '2019-02-24 21:55:30');
INSERT INTO `sys_notice_detail` VALUES ('549173295384100865', '549173295270854656', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('549640227027681280', '549640226994126848', NULL, '549336387174793216', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('549640227027681281', '549640226994126848', NULL, '522465144505106432', 'Y', '2019-02-27 15:23:15');
INSERT INTO `sys_notice_detail` VALUES ('549640227027681282', '549640226994126848', NULL, '522465900809420800', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('549640227027681283', '549640226994126848', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('549651310194982912', '549651310161428480', NULL, '522465144505106432', 'Y', '2019-02-27 15:23:15');
INSERT INTO `sys_notice_detail` VALUES ('549651310194982913', '549651310161428480', NULL, '549336387174793216', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('549651310194982914', '549651310161428480', NULL, '522465900809420800', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('549651310194982915', '549651310161428480', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('550338732843073536', '550338732767576064', NULL, '549336387174793216', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('550338732843073537', '550338732767576064', NULL, '522465900809420800', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('550338732843073538', '550338732767576064', NULL, '522465144505106432', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('550338732843073539', '550338732767576064', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('550338755127410688', '550338755119022080', NULL, '549336387174793216', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('550338755127410689', '550338755119022080', NULL, '522465144505106432', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('550338755127410690', '550338755119022080', NULL, '522465900809420800', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('550338755127410691', '550338755119022080', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('550749303396630528', '550749303342104576', NULL, '549336387174793216', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('550749303396630529', '550749303342104576', NULL, '522465900809420800', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('550749303396630530', '550749303342104576', NULL, '522465144505106432', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('550749303396630531', '550749303342104576', NULL, '522044507147993088', 'N', NULL);

-- ----------------------------
-- Table structure for sys_notice_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_type`;
CREATE TABLE `sys_notice_type`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `cate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类',
  `typeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `typeCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息编码',
  `logo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'LOGO图标',
  `template` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息模板',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '备注',
  `untilExpiryDay` int(11) NOT NULL COMMENT '过期天数',
  `untilDeadDay` int(11) NOT NULL COMMENT '存活天数',
  `creater` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  `updater` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `typeCode`(`typeCode`) USING BTREE,
  INDEX `cate`(`cate`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice_type
-- ----------------------------
INSERT INTO `sys_notice_type` VALUES ('534774841853607936', '系统使用', '访问日志删除', 'delVisitLog', 'upload/image/20190228/18352861496.jpg', 'FTL{username!} 于 FTL{datetime!} 删除了 FTL{number!} 条 访问日志。', '删除系统访问日志时，触发改消息通知', 10, 20, 'admin', '2019-01-15 16:44:17', 'admin', '2019-02-28 18:35:52');
INSERT INTO `sys_notice_type` VALUES ('534775887648784384', '系统使用', '无权限操作', 'noPermissionOpe', 'upload/image/20190228/18352861496.jpg', 'FTL{username!} 于 FTL{date!} 访问 无权限操作 FTL{visitUrl!}.', '用户执行访问无权限路径，点击无权限的按钮时，触发该操作', 30, 60, 'admin', '2019-01-15 16:48:27', 'admin', '2019-02-28 18:36:00');

-- ----------------------------
-- Table structure for sys_notice_type_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_type_sys_role`;
CREATE TABLE `sys_notice_type_sys_role`  (
  `sysNoticeTypeId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '通知类型id',
  `sysRoleId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色id',
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`sysNoticeTypeId`, `sysRoleId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统通知类型角色中间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice_type_sys_role
-- ----------------------------
INSERT INTO `sys_notice_type_sys_role` VALUES ('534774841853607936', '520339201795817472', 'admin', '2019-02-27 15:18:21');
INSERT INTO `sys_notice_type_sys_role` VALUES ('534774841853607936', '520340379124367361', 'admin', '2019-02-27 15:18:21');
INSERT INTO `sys_notice_type_sys_role` VALUES ('534774841853607936', '538438949161402368', 'admin', '2019-02-27 15:18:21');
INSERT INTO `sys_notice_type_sys_role` VALUES ('534775887648784384', '520339201795817472', 'admin', '2019-02-27 15:20:50');
INSERT INTO `sys_notice_type_sys_role` VALUES ('534775887648784384', '520340379124367361', 'admin', '2019-02-27 15:20:50');

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `orgName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `orgCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编码',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sortNum` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `pid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '父ID',
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `director` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主管人',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  `updater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组织机构表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO `sys_org` VALUES ('520706829357940736', '郑州思念食品', 'zzsn', '河南省郑州市惠济区北三环北大学城英才街xxx号', '士大夫大师傅似的发射点发射点发射点发生手动阀手动阀手动阀手动阀手动阀手动阀手动阀手动阀手动阀士大夫士大夫士大夫士大夫士大夫', 1, '0', 'debug', NULL, '2018-12-07 21:03:02', 'debug', '2018-12-12 13:40:18');
INSERT INTO `sys_org` VALUES ('520706929148821505', '营销中心', 'yxzx', 'yxzx', NULL, 1, '520706829357940736', 'debug', NULL, '2018-12-07 21:03:26', NULL, NULL);
INSERT INTO `sys_org` VALUES ('520707040134299649', '财务中心', 'cwzx', 'cwzx', NULL, 2, '520706829357940736', 'debug', NULL, '2018-12-07 21:03:52', 'zhangchuang', '2018-12-16 11:21:33');
INSERT INTO `sys_org` VALUES ('520707116877479937', '采购中心', 'cgzx', 'cgzx', NULL, 3, '520706829357940736', 'debug', NULL, '2018-12-07 21:04:10', 'debug', '2018-12-07 21:20:49');
INSERT INTO `sys_org` VALUES ('520707224780144641', '技术研发中心', 'jsyfzx', 'jsyfzx', NULL, 4, '520706829357940736', 'debug', NULL, '2018-12-07 21:04:36', NULL, NULL);
INSERT INTO `sys_org` VALUES ('520707309203095552', '品保中心', 'pbzx', 'pbzx', NULL, 5, '520706829357940736', 'debug', NULL, '2018-12-07 21:04:56', NULL, NULL);
INSERT INTO `sys_org` VALUES ('520707412714323969', '生产中心', 'sczx', 'sczx', NULL, 6, '520706829357940736', 'debug', NULL, '2018-12-07 21:05:21', NULL, NULL);
INSERT INTO `sys_org` VALUES ('520707499788075008', '信息中心', 'xxzx', '运营楼y408', 'hello world good morning', 7, '520706829357940736', 'debug', NULL, '2018-12-07 21:05:42', 'debug', '2018-12-12 13:00:26');
INSERT INTO `sys_org` VALUES ('520707685839011841', '运营中心', 'yyzx', 'yyzx', NULL, 8, '520706829357940736', 'debug', NULL, '2018-12-07 21:06:26', NULL, NULL);
INSERT INTO `sys_org` VALUES ('520707791640330241', '招标组', 'zbz', 'zbz', NULL, 9, '520706829357940736', 'debug', NULL, '2018-12-07 21:06:51', 'admin', '2019-02-24 21:13:43');
INSERT INTO `sys_org` VALUES ('520707896816697345', '市场中心', 'sczx', 'sczx', NULL, 1, '520706929148821505', 'debug', NULL, '2018-12-07 21:07:16', NULL, NULL);
INSERT INTO `sys_org` VALUES ('520707993407324161', '渠道中心', 'qdzx', 'qdzx', NULL, 2, '520706929148821505', 'debug', NULL, '2018-12-07 21:07:39', 'admin', '2018-12-29 20:00:19');
INSERT INTO `sys_org` VALUES ('520708087959519233', '市场部', 'scb', 'scb', NULL, 1, '520707896816697345', 'debug', NULL, '2018-12-07 21:08:02', 'zhangchuang', '2018-12-16 12:09:33');
INSERT INTO `sys_org` VALUES ('520708319782895617', '设计组', 'sjz', 'sjz', NULL, 1, '520708087959519233', 'debug', NULL, '2018-12-07 21:08:57', NULL, NULL);
INSERT INTO `sys_org` VALUES ('520708404201652225', '汤圆组', 'tyz', 'tyz', NULL, 2, '520708087959519233', 'debug', NULL, '2018-12-07 21:09:17', NULL, NULL);
INSERT INTO `sys_org` VALUES ('520708884403322880', '营管部', 'ygb', 'ygb', NULL, 1, '520707993407324161', 'debug', NULL, '2018-12-07 21:11:12', NULL, NULL);
INSERT INTO `sys_org` VALUES ('520708995044868096', '渠道部', 'qdb', 'qdb', NULL, 2, '520707993407324161', 'debug', NULL, '2018-12-07 21:11:38', NULL, NULL);
INSERT INTO `sys_org` VALUES ('520709096098234369', 'KA部', 'kab', 'kab', NULL, 3, '520707993407324161', 'debug', NULL, '2018-12-07 21:12:02', NULL, NULL);
INSERT INTO `sys_org` VALUES ('520709414647234561', '资金管理', 'zjgl', 'zjgl', NULL, 2, '520707040134299649', 'debug', NULL, '2018-12-07 21:13:18', NULL, NULL);
INSERT INTO `sys_org` VALUES ('520709507668508672', '财务管理', 'cwgl', 'cwgl', NULL, 3, '520707040134299649', 'debug', NULL, '2018-12-07 21:13:40', NULL, NULL);
INSERT INTO `sys_org` VALUES ('520710211434971137', 'IT应用管理部', 'ityyglb', 'ityyglb', NULL, 1, '520707499788075008', 'debug', NULL, '2018-12-07 21:16:28', 'debug', '2018-12-07 21:21:28');
INSERT INTO `sys_org` VALUES ('520710334881726465', '软件开发项目部', 'rjkfxmb', 'rjkfxmb', NULL, 2, '520707499788075008', 'debug', NULL, '2018-12-07 21:16:58', NULL, NULL);
INSERT INTO `sys_org` VALUES ('520710466524151809', 'IT系统运维部', 'itxtywb', 'itxtywb', NULL, 3, '520707499788075008', 'debug', NULL, '2018-12-07 21:17:29', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `roleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `roleCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编码',
  `roleDesc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `sortNum` int(11) NULL DEFAULT NULL COMMENT '排序号',
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  `updater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_role_roleCode`(`roleCode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('520339201795817472', '管理员', 'admin', '超级管理员，管理所有权限', 1, 'debug', '2018-12-06 20:42:13', 'debug', '2018-12-06 20:44:48');
INSERT INTO `sys_role` VALUES ('520340379124367361', '系统运维', 'systemOperation', '系统运维', 2, 'debug', '2018-12-06 20:46:53', NULL, NULL);
INSERT INTO `sys_role` VALUES ('538438949161402368', '电商管理员', 'shopManager', '电商模块使用者', 3, 'admin', '2019-01-25 19:24:09', 'admin', '2019-02-22 09:16:27');

-- ----------------------------
-- Table structure for sys_role_button
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_button`;
CREATE TABLE `sys_role_button`  (
  `sysRoleId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色id',
  `sysButtonId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单按钮id',
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`sysRoleId`, `sysButtonId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色 菜单按钮中间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `sysRoleId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色id',
  `sysMenuId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单id',
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`sysRoleId`, `sysMenuId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色菜单中间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520751187331383297', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520751411466600448', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520751483449245697', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520751566345469952', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520751881509666817', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520752428128141312', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520752809180659712', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520752938604298240', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520753306482507776', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520753742492991488', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '529975794877857792', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '533964972439371776', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '537980279722082304', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520340379124367361', '520751187331383297', 'admin', '2019-01-15 17:03:04');
INSERT INTO `sys_role_menu` VALUES ('520340379124367361', '520752809180659712', 'admin', '2019-01-15 17:03:04');
INSERT INTO `sys_role_menu` VALUES ('520340379124367361', '520752938604298240', 'admin', '2019-01-15 17:03:04');
INSERT INTO `sys_role_menu` VALUES ('520340379124367361', '520753306482507776', 'admin', '2019-01-15 17:03:04');
INSERT INTO `sys_role_menu` VALUES ('520340379124367361', '529975794877857792', 'admin', '2019-01-15 17:03:04');
INSERT INTO `sys_role_menu` VALUES ('538438949161402368', '533964972439371776', 'admin', '2019-02-22 09:12:40');

-- ----------------------------
-- Table structure for sys_service_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_service_log`;
CREATE TABLE `sys_service_log`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '访问路径',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作内容',
  `sysUser` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作人',
  `sysUserIp` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作人Ip地址',
  `device` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前设备',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `SYS_SERVICE_LOG_SYS_USER_IP_IX`(`sysUserIp`) USING BTREE,
  INDEX `SYS_SERVICE_LOG_SYS_USER_IX`(`sysUser`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '业务日志，程序主动记录的重要操作日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_service_log
-- ----------------------------
INSERT INTO `sys_service_log` VALUES ('550747695375974400', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-02-28 18:34:42');
INSERT INTO `sys_service_log` VALUES ('550762910385700864', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-02-28 19:35:10');
INSERT INTO `sys_service_log` VALUES ('550960801297465344', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-01 08:41:31');
INSERT INTO `sys_service_log` VALUES ('551123555362799616', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-01 19:28:14');
INSERT INTO `sys_service_log` VALUES ('551128188902703104', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-01 19:46:39');
INSERT INTO `sys_service_log` VALUES ('551138760037761024', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-01 20:28:40');
INSERT INTO `sys_service_log` VALUES ('551138794653351936', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-01 20:28:48');
INSERT INTO `sys_service_log` VALUES ('551140378896498688', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-01 20:35:06');
INSERT INTO `sys_service_log` VALUES ('551140966946308096', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-01 20:37:26');
INSERT INTO `sys_service_log` VALUES ('551141066892378112', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-01 20:37:50');
INSERT INTO `sys_service_log` VALUES ('551141527334682624', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-01 20:39:39');
INSERT INTO `sys_service_log` VALUES ('551141896655732736', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-01 20:41:07');
INSERT INTO `sys_service_log` VALUES ('551141896659927040', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-01 20:41:07');
INSERT INTO `sys_service_log` VALUES ('551141898111156224', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-01 20:41:08');
INSERT INTO `sys_service_log` VALUES ('551148750525956096', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-01 21:08:21');
INSERT INTO `sys_service_log` VALUES ('551153766728990720', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-01 21:28:17');

-- ----------------------------
-- Table structure for sys_task_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_task_log`;
CREATE TABLE `sys_task_log`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `className` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '定时任务类名',
  `startTime` datetime(0) NOT NULL COMMENT '开始时间',
  `endTime` datetime(0) NOT NULL COMMENT '结束时间',
  `result` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运行结果，success 或者 fail',
  `error` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '异常信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `SYS_TASK_LOG_IX1`(`className`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_task_log
-- ----------------------------
INSERT INTO `sys_task_log` VALUES ('550748311674421248', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-02-28 18:37:09', '2019-02-28 18:37:09', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('550748321367457792', 'com.github.qinyou.system.task.TestTask', '2019-02-28 18:37:12', '2019-02-28 18:37:17', 'success', NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户民',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `realName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `avatar` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别M男F女',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电子邮箱',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `orgId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `job` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位',
  `jobLevel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位级别',
  `wx` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信预留',
  `dd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '钉钉预留',
  `lastLoginTime` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  `updater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `userState` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户状态 0正常1禁用',
  `delFlag` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标志  X 已删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sys_user_username`(`username`) USING BTREE COMMENT '用户名唯一索引',
  INDEX `sys_user_orgId`(`orgId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('522044507147993088', 'debug', '7c4a8d09ca3762af61e59520943dc26494f8941b', '开发调试', '/static/image/male.jpg', 'M', 'qinyou1994@outlook.com', '15238002477', '520707499788075008', '开发工程师', 'staff', NULL, NULL, NULL, 'debug', '2018-12-11 13:38:29', 'debug', '2018-12-12 11:21:13', '0', NULL);
INSERT INTO `sys_user` VALUES ('522465144505106432', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', '张闯', 'upload/image/20190228/18352861496.jpg', 'M', '15238002477@163.com', '15238002477', '520710334881726465', '开发工程师', 'staff', NULL, NULL, '2019-03-01 21:28:17', 'debug', '2018-12-12 17:29:57', 'admin', '2019-02-22 14:59:32', '0', NULL);
INSERT INTO `sys_user` VALUES ('522465900809420800', 'zhaoli', '7c4a8d09ca3762af61e59520943dc26494f8941b', '赵丽', NULL, 'F', 'zhaoli@istek.net.cn', 'kaka', '520706929148821505', 'xxx', 'director', NULL, NULL, '2019-02-24 21:37:25', 'debug', '2018-12-12 17:32:57', NULL, NULL, '0', NULL);
INSERT INTO `sys_user` VALUES ('549336387174793216', 'abc', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'abc2', NULL, 'F', 'qinyou@outlook.com2', '13238002456', '520706829357940736', 'developer2', 'monitor', NULL, NULL, NULL, 'admin', '2019-02-24 21:06:40', 'admin', '2019-02-24 21:08:53', '0', 'X');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `sysUserId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `sysRoleId` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色id',
  `creater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '创建人',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`sysUserId`, `sysRoleId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色中间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('522044507147993088', '520339201795817472', 'admin', '2019-02-08 11:27:57');
INSERT INTO `sys_user_role` VALUES ('522044507147993088', '520340379124367361', 'admin', '2019-01-01 23:18:10');
INSERT INTO `sys_user_role` VALUES ('522044507147993088', '538438949161402368', 'admin', '2019-02-08 11:27:57');
INSERT INTO `sys_user_role` VALUES ('522465144505106432', '520339201795817472', 'admin', '2018-12-23 11:55:25');
INSERT INTO `sys_user_role` VALUES ('522465144505106432', '520340379124367361', 'admin', '2018-12-23 13:17:33');
INSERT INTO `sys_user_role` VALUES ('522465900809420800', '520340379124367361', 'admin', '2019-02-24 21:37:12');
INSERT INTO `sys_user_role` VALUES ('549336387174793216', '520339201795817472', 'admin', '2019-02-24 21:09:17');
INSERT INTO `sys_user_role` VALUES ('549336387174793216', '520340379124367361', 'admin', '2019-02-24 21:10:00');
INSERT INTO `sys_user_role` VALUES ('549336387174793216', '538438949161402368', 'admin', '2019-02-24 21:10:00');

-- ----------------------------
-- Table structure for sys_user_setting
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_setting`;
CREATE TABLE `sys_user_setting`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `sysUser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `theme` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主题',
  `themeColor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主题颜色值',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_user_setting_sysUser`(`sysUser`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户设置项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_setting
-- ----------------------------
INSERT INTO `sys_user_setting` VALUES ('546795821421559808', 'admin', 'green', '#40b370');
INSERT INTO `sys_user_setting` VALUES ('549344229646663680', 'zhaoli', 'wechat', '#09b83e');

-- ----------------------------
-- Table structure for sys_visit_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_visit_log`;
CREATE TABLE `sys_visit_log`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `sysUser` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作人',
  `sysUserIp` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作人ip',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '访问地址',
  `createTime` datetime(0) NOT NULL COMMENT '创建时间',
  `requestType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '访问类型,GET POST PUT DELETE',
  `param` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '参数',
  `error` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '异常',
  `device` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `SYS_VISIT_LOG_SYS_USER_IP_IX`(`sysUserIp`) USING BTREE,
  INDEX `SYS_VISIT_LOG_SYS_USER_IX`(`sysUser`) USING BTREE,
  INDEX `SYS_VISIT_LOG_URL_IX`(`url`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_visit_log
-- ----------------------------
INSERT INTO `sys_visit_log` VALUES ('550747640887771136', 'debug', '0:0:0:0:0:0:0:1', '/dashboard', '2019-02-28 18:34:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747642339000320', 'debug', '0:0:0:0:0:0:0:1', '/login', '2019-02-28 18:34:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747695422111744', 'admin', '0:0:0:0:0:0:0:1', '/login/action', '2019-02-28 18:34:42', 'POST', '{\"username\":[\"admin\"],\"password\":[\"123456\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747696214835200', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-02-28 18:34:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747697523458048', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-02-28 18:34:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747697649287168', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-02-28 18:34:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747702304964608', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:34:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747702829252608', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:34:44', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747703739416576', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:34:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747704074960896', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:34:45', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747710542577664', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:34:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747711024922624', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:34:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747711557599232', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:34:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747711847006208', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:34:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747712648118272', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:34:47', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747712824279040', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:34:47', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747718817939456', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:34:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747719363198976', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:34:48', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747719799406592', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:34:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747720046870528', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:34:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747720676016128', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:34:49', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747721426796544', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:34:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747721812672512', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:34:49', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747735519657984', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:34:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747735830036480', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:34:52', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747736224301056', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:34:52', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747736559845376', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:34:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747737075744768', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:34:52', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747737667141632', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:34:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747738065600512', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:34:53', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747740271804416', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:34:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747740657680384', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:34:53', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747741047750656', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:34:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747742062772224', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:34:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747742926798848', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:34:54', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747746299019264', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:34:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747746760392704', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:34:55', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747747121102848', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:34:55', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747757279707136', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/themeList', '2019-02-28 18:34:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747762770051072', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/themeSet', '2019-02-28 18:34:59', 'POST', '{\"colorName\":[\"green\"],\"color\":[\"#40b370\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747770068140032', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-02-28 18:35:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747771028635648', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-02-28 18:35:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747771129298944', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-02-28 18:35:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747774778343424', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:35:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747775088721920', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:35:01', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747775424266240', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:35:02', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747776535756800', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:35:02', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747777064239104', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:35:02', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747777332674560', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:35:02', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747778456748032', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:35:02', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747779081699328', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:35:02', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747782860767232', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:35:03', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747783276003328', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:35:03', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747785159245824', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:35:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747785440264192', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:35:04', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747787264786432', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:35:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747787541610496', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:35:04', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747788099452928', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:35:05', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747789739425792', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:35:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747790188216320', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:35:05', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747791438118912', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:35:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747791874326528', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:35:05', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747803752595456', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:35:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747804088139776', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:35:08', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747804427878400', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:35:08', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747805803610112', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:35:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747806390812672', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:35:09', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747806533419008', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:35:09', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747815261765632', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-02-28 18:35:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747815765082112', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-02-28 18:35:11', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747817342140416', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:35:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747817954508800', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:35:12', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747820185878528', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-02-28 18:35:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747820676612096', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-02-28 18:35:12', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747823189000192', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:35:13', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747823772008448', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:35:13', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747827815317504', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:35:14', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747828264108032', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:35:14', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747835507671040', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:35:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747835931295744', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:35:16', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747860140818432', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/userInfo', '2019-02-28 18:35:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747887621898240', 'admin', '0:0:0:0:0:0:0:1', '/utils/uploadFile', '2019-02-28 18:35:28', 'POST', '{\"remark\":[\"admin 头像\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747889345757184', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/changeUserInfo', '2019-02-28 18:35:29', 'POST', '超长文本参数', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747896610291712', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/userInfo', '2019-02-28 18:35:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747902767529984', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:35:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747903312789504', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:35:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747903728025600', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:35:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747904378142720', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:35:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747907305766912', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:35:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747907674865664', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:35:33', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747908027187200', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:35:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747909142872064', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:35:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747909931401216', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:35:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747911017725952', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:35:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747911864975360', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:35:34', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747912020164608', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:35:34', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747913844686848', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:35:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747914167648256', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:35:35', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747914515775488', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:35:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747917070106624', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:35:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747917737000960', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:35:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747919985147904', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:35:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747920505241600', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:35:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747921650286592', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:35:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747922317180928', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:35:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747931561426944', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:35:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747931880194048', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:35:39', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747932232515584', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:35:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747959176724480', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-02-28 18:35:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747959663263744', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-02-28 18:35:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747966143463424', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/newModel', '2019-02-28 18:35:47', 'GET', '{\"id\":[\"534774841853607936\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747985554702336', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/updateAction', '2019-02-28 18:35:52', 'POST', '超长文本参数', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747992898928640', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-02-28 18:35:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550747998305386496', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/newModel', '2019-02-28 18:35:55', 'GET', '{\"id\":[\"534775887648784384\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748021009154048', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/updateAction', '2019-02-28 18:36:00', 'POST', '超长文本参数', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748028357574656', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-02-28 18:36:02', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748041250865152', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:36:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748041573826560', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:36:05', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748041934536704', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:36:05', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748043599675392', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:36:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748044178489344', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:36:06', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748046665711616', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:36:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748047018033152', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:36:06', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748047391326208', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:36:06', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748048494428160', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:36:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748048913858560', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:36:07', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748051019399168', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:36:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748051342360576', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:36:07', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748051719847936', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:36:07', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748062683758592', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/deleteAction', '2019-02-28 18:36:10', 'POST', '{\"ids\":[\"550392697785942016\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748069994430464', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:36:12', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748078794080256', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:36:14', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748079632941056', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:36:14', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748079989456896', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:36:14', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748080576659456', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:36:14', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748083806273536', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:36:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748084410253312', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:36:15', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748095374163968', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:36:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748095751651328', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:36:18', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748096267550720', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:36:18', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748150315352064', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:36:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748150726393856', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:36:31', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748151112269824', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:36:31', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748151540088832', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:36:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748152030822400', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:36:31', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748152194400256', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:36:31', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748154752925696', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:36:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748155533066240', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:36:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748158506827776', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:36:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748159052087296', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:36:33', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748159538626560', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:36:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748164735369216', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:36:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748165272240128', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:36:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748169219080192', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:36:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748169667870720', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:36:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748171857297408', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:36:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748172339642368', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:36:36', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748172746489856', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:36:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748172817793024', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:36:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748173178503168', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:36:36', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748173543407616', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:36:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748174961082368', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:36:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748175565062144', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:36:37', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748175724445696', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:36:37', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748178308136960', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:36:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748179004391424', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:36:38', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748183265804288', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:36:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748183819452416', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:36:39', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748184205328384', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:36:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748184922554368', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:36:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748185618808832', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:36:39', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748185874661376', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:36:39', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748188479324160', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:36:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748188894560256', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:36:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748193671872512', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:36:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748194233909248', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:36:41', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748194850471936', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:36:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748199220936704', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:36:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748199770390528', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:36:43', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748211493470208', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:36:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748211938066432', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:36:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748212261027840', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:36:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748216614715392', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:36:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748217126420480', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:36:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748224214794240', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:36:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748224718110720', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:36:49', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748228316823552', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:36:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748228912414720', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:36:50', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748230506250240', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:36:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748230841794560', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:36:50', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748233295462400', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:36:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748234021076992', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:36:51', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748240299950080', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:36:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748240866181120', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:36:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748295727677440', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:37:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748296377794560', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:37:06', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748297623502848', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:37:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748298101653504', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:37:06', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748299053760512', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:37:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748299435442176', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:37:06', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748311817027584', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/runOnce', '2019-02-28 18:37:09', 'POST', '{\"className\":[\"com.github.qinyou.system.task.DelSysNoticeTask\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748342372532224', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/runOnce', '2019-02-28 18:37:17', 'POST', '{\"className\":[\"com.github.qinyou.system.task.TestTask\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748349561569280', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:37:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748350425595904', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:37:19', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748350610145280', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:37:19', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748351121850368', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:37:19', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748351730024448', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:37:19', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748363151114240', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:37:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748363469881344', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:37:22', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748363805425664', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:37:22', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748365344735232', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:37:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748365889994752', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:37:22', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748366040989696', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:37:22', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748367144091648', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:37:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748367508996096', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:37:23', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748371875266560', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:37:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748372433108992', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:37:24', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748372558938112', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:37:24', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748372789624832', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:37:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748373284552704', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:37:24', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748373427159040', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:37:24', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748374349905920', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:37:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748374937108480', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:37:24', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748378934280192', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:37:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748379215298560', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:37:26', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748379571814400', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:37:26', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748412979445760', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:37:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748413499539456', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:37:34', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748413633757184', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:37:34', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748416817233920', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:37:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748417131806720', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:37:35', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748417458962432', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:37:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748420843765760', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:37:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748421519048704', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:37:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748422819282944', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:37:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748423146438656', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:37:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748424526364672', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:37:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748425147121664', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:37:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748425440722944', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:37:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748426174726144', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:37:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748430314504192', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:37:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748430616494080', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:37:38', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748430943649792', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:37:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748432239689728', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:37:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748432982081536', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:37:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748435620298752', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:37:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748436937310208', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:37:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748438115909632', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:37:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748438518562816', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:37:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748440900927488', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:37:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748441261637632', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:37:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748443304263680', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:37:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748443853717504', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:37:41', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748445992812544', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:37:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748446462574592', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:37:42', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748446798118912', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:37:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748448484229120', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:37:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748448891076608', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:37:42', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748449264369664', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:37:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748462065385472', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:37:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748462434484224', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:37:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748463810215936', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:37:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748464460333056', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:37:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748466440044544', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:37:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748466893029376', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:37:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748467257933824', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:37:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748469380251648', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:37:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748469749350400', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:37:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748480109281280', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:37:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748480692289536', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:37:50', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748484601380864', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:37:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748485083725824', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:37:51', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748488405614592', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:37:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748488808267776', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:37:52', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748490838310912', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-02-28 18:37:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748491312267264', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-02-28 18:37:52', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748494080507904', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-02-28 18:37:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748494529298432', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-02-28 18:37:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748496471261184', 'admin', '0:0:0:0:0:0:0:1', '/exStaff', '2019-02-28 18:37:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748496899080192', 'admin', '0:0:0:0:0:0:0:1', '/exStaff/query', '2019-02-28 18:37:54', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748502271983616', 'admin', '0:0:0:0:0:0:0:1', '/exStaff/newModel', '2019-02-28 18:37:55', 'GET', '{\"id\":[\"538058415805562880\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748548409327616', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:38:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748548845535232', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:38:06', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748552414887936', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:38:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748552783986688', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:38:07', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748553157279744', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:38:07', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748557905231872', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-02-28 18:38:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748558656012288', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-02-28 18:38:08', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748563563347968', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/newTypeRole', '2019-02-28 18:38:09', 'GET', '{\"id\":[\"534775887648784384\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748564137967616', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/queryTypeRole', '2019-02-28 18:38:10', 'POST', '{\"search_EQ_a.sysNoticeTypeId\":[\"534775887648784384\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748571268284416', 'admin', '0:0:0:0:0:0:0:1', '/utils/role', '2019-02-28 18:38:11', 'GET', '{\"yesBtnTxt\":[\"关联角色\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748571746435072', 'admin', '0:0:0:0:0:0:0:1', '/utils/queryRole', '2019-02-28 18:38:11', 'POST', '{\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748589165379584', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:38:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748589660307456', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:38:16', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748590012628992', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:38:16', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748591610658816', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:38:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748592252387328', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:38:16', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748592407576576', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:38:16', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748594915770368', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:38:17', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"search_EQ_groupCode\":[\"education\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748596857733120', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:38:17', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"search_EQ_groupCode\":[\"jobLevel\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748598740975616', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:38:18', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"search_EQ_groupCode\":[\"userState\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748604646555648', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:38:19', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748604969517056', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:38:19', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748605305061376', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:38:19', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748606932451328', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:38:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748607561596928', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:38:20', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748610933817344', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:38:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748612036919296', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:38:21', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748612443766784', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:38:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748612896751616', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:38:21', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748614771605504', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:38:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748615199424512', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:38:22', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748617476931584', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:38:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748617938305024', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:38:22', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748619737661440', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-02-28 18:38:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748620228395008', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-02-28 18:38:23', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748623395094528', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:38:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748623780970496', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:38:24', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748624275898368', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:38:24', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748625454497792', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:38:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748625970397184', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:38:24', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748626113003520', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:38:24', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748626746343424', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:38:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748627014778880', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:38:25', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748627367100416', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:38:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748629711716352', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:38:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748630324084736', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:38:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748642844082176', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:38:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748643276095488', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:38:28', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748643406118912', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:38:29', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748646249857024', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:38:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748646660898816', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:38:29', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748647013220352', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:38:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748666743226368', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:38:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748667124908032', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:38:34', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748667544338432', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:38:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748669230448640', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:38:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748669796679680', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:38:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748672468451328', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:38:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748672850132992', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:38:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748675802923008', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:38:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748676721475584', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:38:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748678558580736', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:38:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748678919290880', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:38:37', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748679250640896', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:38:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748682819993600', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:38:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748683302338560', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:38:38', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748683432361984', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:38:38', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748685378519040', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:38:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748685923778560', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:38:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748688171925504', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:38:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748688943677440', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:38:39', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748689115643904', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:38:39', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748695398711296', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:38:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748695788781568', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:38:41', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748698670268416', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:38:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748699521712128', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:38:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748701836967936', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:38:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748702315118592', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:38:43', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748702851989504', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:38:43', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748704844283904', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:38:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748705309851648', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:38:43', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748705444069376', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:38:43', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748816203055104', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:39:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748816614096896', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:39:10', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748816974807040', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:39:10', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748817524260864', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:39:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748818283429888', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:39:10', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748818447007744', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:39:10', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748822431596544', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:39:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748823463395328', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:39:11', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748823626973184', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:39:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748823870242816', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:39:12', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748824222564352', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:39:12', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748824969150464', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:39:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748825673793536', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:39:12', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748825828982784', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:39:12', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748829083762688', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:39:13', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748829553524736', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:39:13', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748853536555008', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:39:19', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748853876293632', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:39:19', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748854224420864', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:39:19', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748855990222848', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:39:19', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748856522899456', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:39:19', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748856661311488', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:39:19', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748858607468544', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:39:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748859177893888', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:39:20', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748861530898432', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:39:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748861866442752', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:39:21', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748862877270016', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:39:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748863430918144', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:39:21', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748863779045376', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:39:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748864391413760', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:39:21', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748866027192320', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:39:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748866480177152', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:39:22', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748869089034240', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:39:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748869676236800', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:39:22', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748874268999680', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-02-28 18:39:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748874684235776', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-02-28 18:39:24', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748876156436480', 'admin', '0:0:0:0:0:0:0:1', '/exStaff', '2019-02-28 18:39:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748876567478272', 'admin', '0:0:0:0:0:0:0:1', '/exStaff/query', '2019-02-28 18:39:24', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748879558017024', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-02-28 18:39:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748880124248064', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-02-28 18:39:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748881592254464', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:39:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748881890050048', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:39:25', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748882217205760', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:39:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748884595376128', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:39:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748885279047680', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:39:26', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748885421654016', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:39:26', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748886667362304', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:39:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748887166484480', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:39:27', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748887829184512', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:39:27', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748890421264384', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:39:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748890958135296', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:39:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748902500859904', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:39:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748902890930176', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:39:30', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748903247446016', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:39:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748920473452544', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:39:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748921039683584', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:39:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748921165512704', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:39:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748941876985856', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:39:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748942439022592', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:39:40', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748942560657408', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:39:40', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748946809487360', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:39:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748947115671552', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:39:41', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748949703557120', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:39:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748950106210304', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:39:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748951716823040', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:39:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748952064950272', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:39:42', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748952484380672', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:39:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748956687073280', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 18:39:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748957135863808', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 18:39:43', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748957437853696', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 18:39:43', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748958398349312', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:39:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748958641618944', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:39:44', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748959170101248', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:39:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748959446925312', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:39:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748959811829760', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:39:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748962483601408', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:39:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748962722676736', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:39:45', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748970876403712', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:39:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748971497160704', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:39:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748980640743424', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:39:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550748981106311168', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:39:49', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749001436102656', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:39:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749002061053952', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:39:54', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749008180543488', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 18:39:55', 'GET', '{\"id\":[\"520340379124367361\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749008503504896', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 18:39:56', 'GET', '{\"roleId\":[\"520340379124367361\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749028912988160', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 18:40:00', 'GET', '{\"id\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749029206589440', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 18:40:00', 'GET', '{\"roleId\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749168117743616', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:40:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749168457482240', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:40:34', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749168818192384', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:40:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749207116382208', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:40:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749207695196160', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:40:43', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749209570050048', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:40:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749209985286144', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:40:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749211902083072', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:40:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749212342484992', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:40:44', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749215731482624', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:40:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749216121552896', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:40:45', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749216662618112', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:40:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749216935247872', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:40:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749217501478912', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:40:45', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749217639890944', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:40:45', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749219275669504', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:40:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749220047421440', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:40:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749222681444352', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:40:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749223037960192', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:40:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749226116579328', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:40:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749226716364800', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:40:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749228746407936', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:40:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749229019037696', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:40:48', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749229346193408', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:40:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749233163010048', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:40:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749233511137280', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:40:49', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749236212269056', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:40:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749237097267200', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:40:50', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749241413206016', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:40:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749242252066816', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:40:51', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749242390478848', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:40:51', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749255908720640', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:40:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749256403648512', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:40:55', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749256542060544', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:40:55', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749258169450496', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:40:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749258500800512', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:40:55', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749259008311296', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:40:55', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749263429107712', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:40:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749263798206464', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:40:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749266444812288', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:40:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749267195592704', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:40:57', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749269326299136', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:40:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749269645066240', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:40:58', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749269997387776', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:40:58', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749273688375296', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:40:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749274233634816', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:40:59', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749274359463936', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:40:59', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749275852636160', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:40:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749276150431744', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:40:59', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749283767287808', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-02-28 18:41:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749284207689728', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-02-28 18:41:01', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749286904627200', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:41:02', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749303459545088', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-02-28 18:41:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749343489982464', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:41:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749343905218560', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:41:16', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749347323576320', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:41:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749347914973184', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:41:16', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749351090061312', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:41:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749351664680960', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:41:17', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749354181263360', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:41:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749354609082368', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:41:18', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749356098060288', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-02-28 18:41:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749356576210944', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-02-28 18:41:19', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749361168973824', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-02-28 18:41:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749361550655488', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-02-28 18:41:20', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749363308068864', 'admin', '0:0:0:0:0:0:0:1', '/exStaff', '2019-02-28 18:41:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749363698139136', 'admin', '0:0:0:0:0:0:0:1', '/exStaff/query', '2019-02-28 18:41:20', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749368920047616', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-02-28 18:41:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749369394003968', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-02-28 18:41:22', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749383998570496', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:41:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749384292171776', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:41:25', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749386112499712', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:41:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749386494181376', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:41:26', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749388150931456', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:41:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749388482281472', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:41:26', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749388859768832', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:41:26', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749389551828992', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:41:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749389996425216', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:41:27', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749390600404992', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:41:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749390868840448', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:41:27', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749392789831680', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:41:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749393230233600', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:41:27', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749394274615296', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:41:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749394551439360', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:41:28', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749395293831168', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:41:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749395776176128', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 18:41:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749396136886272', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 18:41:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749396489207808', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 18:41:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749397156102144', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:41:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749397487452160', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:41:28', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749397843968000', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:41:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749398183706624', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:41:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749398552805376', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:41:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749399412637696', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:41:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749399668490240', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:41:29', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749401740476416', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:41:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749402025689088', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:41:29', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749402512228352', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:41:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749403980234752', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 18:41:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749404441608192', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 18:41:30', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749404751986688', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 18:41:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749416433123328', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:41:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749416982577152', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:41:33', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749417129377792', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:41:33', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749420606455808', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:41:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749420908445696', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:41:34', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749421239795712', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:41:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749508040916992', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:41:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749508464541696', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:41:55', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749508821057536', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:41:55', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749510494584832', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:41:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749511333445632', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:41:55', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749511627046912', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:41:56', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749512247803904', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:41:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749512843395072', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:41:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749514894409728', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:41:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749515259314176', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:41:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749517440352256', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:41:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749518170161152', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:41:57', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749518572814336', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:41:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749519260680192', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:41:57', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749523060719616', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:41:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749523450789888', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:41:58', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749524843298816', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:41:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749525241757696', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:41:59', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749526596517888', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:41:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749527150166016', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:41:59', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749532783116288', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:42:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749533114466304', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:42:01', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749535211618304', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:42:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749535576522752', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:42:01', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749536503463936', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:42:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749537086472192', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:42:02', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749574600327168', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:42:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749575166558208', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:42:11', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749576898805760', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:42:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749577213378560', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:42:11', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749579079843840', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:42:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749579474108416', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:42:12', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749585581015040', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 18:42:13', 'GET', '{\"id\":[\"538438949161402368\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749585803313152', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 18:42:13', 'GET', '{\"roleId\":[\"538438949161402368\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749599069896704', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 18:42:16', 'GET', '{\"id\":[\"520340379124367361\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749599355109376', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 18:42:16', 'GET', '{\"roleId\":[\"520340379124367361\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749615238938624', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 18:42:20', 'GET', '{\"id\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749615507374080', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 18:42:20', 'GET', '{\"roleId\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749626311901184', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 18:42:23', 'GET', '{\"id\":[\"520340379124367361\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749626563559424', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 18:42:23', 'GET', '{\"roleId\":[\"520340379124367361\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749653939781632', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:42:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749654300491776', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:42:30', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749654669590528', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:42:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749656359895040', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:42:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749657085509632', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:42:30', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749657228115968', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:42:30', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749662961729536', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:42:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749663267913728', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:42:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749663607652352', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:42:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749667147644928', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:42:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749667801956352', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:42:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749669383208960', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:42:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749669718753280', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:42:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749677817954304', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:42:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749678111555584', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:42:35', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749678526791680', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:42:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749681353752576', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:42:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749681869651968', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:42:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749685736800256', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:42:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749686105899008', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:42:37', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749686554689536', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:42:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749687523573760', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:42:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749687955587072', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:42:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749692347023360', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:42:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749692657401856', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:42:39', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749693836001280', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:42:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749694263820288', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:42:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749695266258944', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:42:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749695635357696', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:42:39', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749696100925440', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:42:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749696973340672', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 18:42:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749697325662208', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 18:42:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749697665400832', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 18:42:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749699036938240', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:42:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749699934519296', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:42:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749700249092096', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:42:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749700521721856', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:42:41', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749713612144640', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:42:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749713855414272', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:42:44', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749714211930112', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:42:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749715726073856', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:42:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749716099366912', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:42:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749718192324608', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:42:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749718544646144', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:42:45', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749719010213888', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:42:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749722764115968', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 18:42:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749723103854592', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 18:42:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749723435204608', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 18:42:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749725150674944', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:42:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749725637214208', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:42:47', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749725771431936', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:42:47', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749730808791040', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:42:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749731421159424', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:42:48', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749731555377152', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:42:48', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749732549427200', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:42:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749732889165824', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:42:48', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749733224710144', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:42:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749752807915520', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:42:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749753101516800', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:42:53', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749760558989312', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-02-28 18:42:55', 'GET', '{\"id\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749761032945664', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-02-28 18:42:55', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749791089328128', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-02-28 18:43:02', 'GET', '{\"id\":[\"520751566345469952\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749791416483840', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-02-28 18:43:02', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749803785486336', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:43:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749804259442688', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:43:05', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749805689700352', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:43:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749805949747200', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:43:06', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749806335623168', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:43:06', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749808898342912', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 18:43:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749809305190400', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 18:43:06', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749809733009408', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 18:43:07', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749816213209088', 'admin', '0:0:0:0:0:0:0:1', '/utils/orgInfo', '2019-02-28 18:43:08', 'GET', '{\"id\":[\"520706929148821505\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749816263540736', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 18:43:08', 'POST', '{\"extra_cascadeOrg\":[\"true\"],\"extra_orgId\":[\"520706929148821505\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749831073628160', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 18:43:12', 'POST', '{\"extra_cascadeOrg\":[\"true\"],\"extra_orgId\":[\"520707896816697345\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749831077822464', 'admin', '0:0:0:0:0:0:0:1', '/utils/orgInfo', '2019-02-28 18:43:12', 'GET', '{\"id\":[\"520707896816697345\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749839143469056', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 18:43:14', 'POST', '{\"extra_cascadeOrg\":[\"true\"],\"extra_orgId\":[\"520708087959519233\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749845812412416', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:43:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749846097625088', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:43:15', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749846512861184', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:43:15', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749852225503232', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:43:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749853085335552', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:43:17', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749853244719104', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:43:17', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749882726481920', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:43:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749883284324352', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:43:24', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749883431124992', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:43:24', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749884458729472', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:43:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749884966240256', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:43:25', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749885389864960', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:43:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749886845288448', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:43:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749887398936576', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:43:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749890104262656', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:43:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749890708242432', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:43:26', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749892193026048', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:43:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749892536958976', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:43:26', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749894617333760', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:43:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749895133233152', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:43:27', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749897767256064', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:43:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749898325098496', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:43:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749900971704320', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:43:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749901491798016', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:43:28', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749901621821440', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:43:28', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749928436006912', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:43:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749928767356928', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:43:35', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749929107095552', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:43:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749929702686720', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:43:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749930377969664', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:43:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749930516381696', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:43:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749931908890624', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:43:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749932160548864', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:43:36', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749932504481792', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:43:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749933729218560', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:43:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749934568079360', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:43:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749939118899200', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:43:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749939748044800', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:43:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749940981170176', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:43:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749941337686016', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:43:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749942864412672', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:43:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749943275454464', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:43:38', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749948161818624', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-02-28 18:43:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749948547694592', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-02-28 18:43:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749950552571904', 'admin', '0:0:0:0:0:0:0:1', '/exStaff', '2019-02-28 18:43:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749950997168128', 'admin', '0:0:0:0:0:0:0:1', '/exStaff/query', '2019-02-28 18:43:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749954260336640', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:43:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749954834956288', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:43:41', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749954973368320', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:43:41', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749966025359360', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:43:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749966587396096', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:43:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749973126316032', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:43:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749973948399616', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:43:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749977916211200', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:43:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749978159480832', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:43:47', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749978482442240', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:43:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749986808135680', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:43:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749987433086976', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:43:49', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550749988074815488', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:43:49', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750053879250944', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/userNotice', '2019-02-28 18:44:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750054697140224', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeData', '2019-02-28 18:44:05', 'POST', '{\"page\":[\"1\"],\"rows\":[\"20\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750071256252416', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/userInfo', '2019-02-28 18:44:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750085302976512', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/userNotice', '2019-02-28 18:44:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750086028591104', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeData', '2019-02-28 18:44:12', 'POST', '{\"page\":[\"1\"],\"rows\":[\"20\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750134850289664', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:44:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750135609458688', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:44:24', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750138449002496', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:44:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750138985873408', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:44:25', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750139354972160', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:44:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750140554543104', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:44:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750141062053888', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:44:26', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750141200465920', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:44:26', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750142664278016', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:44:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750143033376768', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:44:26', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750143595413504', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:44:26', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750144832733184', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:44:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750145302495232', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:44:27', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750147504504832', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:44:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750147949101056', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:44:27', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750151270989824', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:44:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750151652671488', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:44:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750154483826688', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:44:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750155050057728', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:44:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750235454865408', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:44:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750235815575552', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:44:48', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750236172091392', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:44:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750259739885568', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:44:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750260046069760', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:44:54', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750260415168512', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:44:54', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750368556908544', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:45:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750369106362368', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:45:20', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750369244774400', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:45:20', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750371903963136', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:45:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750372260478976', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:45:21', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750372608606208', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:45:21', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750373648793600', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:45:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750374022086656', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:45:21', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750394028916736', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:45:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750394356072448', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:45:26', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750394708393984', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:45:26', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750395635335168', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:45:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750396222537728', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:45:26', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750396352561152', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:45:26', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750397552132096', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:45:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750397845733376', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:45:27', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750398210637824', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:45:27', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750398961418240', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:45:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750399330516992', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:45:27', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750399674449920', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:45:27', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750403969417216', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:45:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750404338515968', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:45:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750405957517312', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:45:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750406553108480', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:45:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750406829932544', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:45:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750407391969280', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:45:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750408750923776', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:45:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750409627533312', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:45:30', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750409761751040', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:45:30', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750435342811136', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-02-28 18:45:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750435770630144', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-02-28 18:45:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750438048137216', 'admin', '0:0:0:0:0:0:0:1', '/exStaff', '2019-02-28 18:45:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750438454984704', 'admin', '0:0:0:0:0:0:0:1', '/exStaff/query', '2019-02-28 18:45:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750440464056320', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-02-28 18:45:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750440820572160', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-02-28 18:45:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750442296967168', 'admin', '0:0:0:0:0:0:0:1', '/exStaff', '2019-02-28 18:45:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750442687037440', 'admin', '0:0:0:0:0:0:0:1', '/exStaff/query', '2019-02-28 18:45:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750444712886272', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-02-28 18:45:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750445279117312', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-02-28 18:45:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750446495465472', 'admin', '0:0:0:0:0:0:0:1', '/exStaff', '2019-02-28 18:45:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750446839398400', 'admin', '0:0:0:0:0:0:0:1', '/exStaff/query', '2019-02-28 18:45:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750450295504896', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-02-28 18:45:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750451016925184', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-02-28 18:45:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750471514488832', 'admin', '0:0:0:0:0:0:0:1', '/exStaff', '2019-02-28 18:45:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750472017805312', 'admin', '0:0:0:0:0:0:0:1', '/exStaff/query', '2019-02-28 18:45:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750473615835136', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-02-28 18:45:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750473980739584', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-02-28 18:45:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750475662655488', 'admin', '0:0:0:0:0:0:0:1', '/exStaff', '2019-02-28 18:45:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750476098863104', 'admin', '0:0:0:0:0:0:0:1', '/exStaff/query', '2019-02-28 18:45:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750479190065152', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-02-28 18:45:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750479596912640', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-02-28 18:45:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750481551458304', 'admin', '0:0:0:0:0:0:0:1', '/exStaff', '2019-02-28 18:45:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750482105106432', 'admin', '0:0:0:0:0:0:0:1', '/exStaff/query', '2019-02-28 18:45:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750487108911104', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-02-28 18:45:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750487645782016', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-02-28 18:45:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750507841355776', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:45:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750508185288704', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:45:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750509485522944', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:45:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750509917536256', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:45:54', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750530968748032', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:45:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750531274932224', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:45:59', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750531623059456', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:45:59', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750533393055744', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:45:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750533816680448', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:45:59', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750534961725440', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:45:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750535225966592', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:46:00', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750545220993024', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-02-28 18:46:02', 'GET', '{\"id\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750545472651264', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-02-28 18:46:02', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750584555175936', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:46:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750585192710144', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:46:11', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750586832683008', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:46:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750587101118464', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:46:12', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750611658768384', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-02-28 18:46:18', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750611960758272', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-02-28 18:46:18', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750637386629120', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:46:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750637751533568', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:46:24', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750638099660800', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:46:24', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750640914038784', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:46:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750641450909696', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:46:25', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750641576738816', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:46:25', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750646731538432', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:46:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750647197106176', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:46:26', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750647784308736', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:46:26', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750648186961920', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:46:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750648786747392', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:46:27', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750648929353728', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:46:27', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750652108636160', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:46:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750652469346304', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:46:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750656923697152', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:46:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750657527676928', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:46:29', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750657653506048', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:46:29', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750659415113728', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:46:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750660010704896', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:46:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750663684915200', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:46:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750663953350656', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:46:30', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750884489854976', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:47:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750884942839808', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:47:23', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750886314377216', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:47:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750886624755712', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:47:23', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750887677526016', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:47:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750888239562752', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:47:24', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750889053257728', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:47:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750889292333056', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:47:24', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750889644654592', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:47:24', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750890730979328', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:47:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750891473371136', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:47:24', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750891985076224', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:47:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750892257705984', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:47:25', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750927607300096', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:47:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550750927909289984', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:47:33', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751139298017280', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:48:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751139579035648', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:48:24', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751140216569856', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:48:24', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751140912824320', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:48:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751141487443968', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:48:24', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751143320354816', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:48:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751144129855488', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:48:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751144754806784', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:48:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751145220374528', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:48:25', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751145560113152', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:48:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751145593667584', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:48:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751146151510016', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:48:25', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751146285727744', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:48:25', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751148189941760', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:48:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751148433211392', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:48:26', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751185410195456', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:48:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751185955454976', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:48:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751186093867008', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:48:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751192334991360', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:48:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751192993497088', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:48:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751193832357888', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:48:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751194461503488', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:48:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751196638347264', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:48:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751196982280192', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:48:37', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751197317824512', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:48:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751199364644864', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:48:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751199956041728', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:48:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751201772175360', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:48:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751202183217152', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:48:39', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751205073092608', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:48:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751205421219840', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:48:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751207174438912', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:48:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751207782612992', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:48:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751209162539008', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-02-28 18:48:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751209598746624', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-02-28 18:48:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751243887181824', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:48:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751244428247040', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:48:49', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751244549881856', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:48:49', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751274249748480', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:48:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751274803396608', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:48:56', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751274929225728', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:48:56', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751276418203648', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:48:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751276720193536', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:48:56', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751277034766336', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:48:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751279085780992', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:48:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751279962390528', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:48:57', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751280092413952', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:48:57', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751285050081280', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:48:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751285586952192', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:48:58', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751285951856640', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:48:59', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751289445711872', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:48:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751290179715072', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:49:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751291266039808', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:49:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751291614167040', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:49:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751294088806400', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:49:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751294445322240', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:49:01', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751296517308416', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 18:49:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751296953516032', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 18:49:01', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751298190835712', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-02-28 18:49:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751298668986368', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-02-28 18:49:02', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751306302619648', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:49:03', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751306684301312', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:49:03', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751307254726656', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:49:04', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751308227805184', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:49:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751308668207104', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:49:04', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751308798230528', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:49:04', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751318445129728', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:49:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751319011360768', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:49:06', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751321876070400', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:49:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751322794622976', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:49:07', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751322924646400', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:49:07', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751326812766208', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:49:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751327173476352', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:49:08', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751327504826368', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:49:08', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751328356270080', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 18:49:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751329073496064', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 18:49:09', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751329203519488', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 18:49:09', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751332445716480', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:49:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751332856758272', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:49:10', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751335083933696', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:49:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751335671136256', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:49:10', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751336996536320', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 18:49:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751337348857856', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 18:49:11', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751339743805440', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-02-28 18:49:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751340180013056', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-02-28 18:49:11', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751356802039808', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:49:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751357116612608', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:49:16', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751397751029760', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-02-28 18:49:25', 'GET', '{\"id\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751398027853824', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-02-28 18:49:25', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751680619085824', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:50:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751681088847872', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:50:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751682472968192', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:50:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751682766569472', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:50:33', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751683223748608', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:50:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751685144739840', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 18:50:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751685467701248', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 18:50:34', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751686193315840', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 18:50:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751696343531520', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:50:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751696695853056', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:50:36', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751698797199360', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:50:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751699225018368', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:50:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751700936294400', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:50:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751701204729856', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:50:38', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751701653520384', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:50:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751703486431232', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:50:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751704191074304', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:50:38', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751707525545984', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:50:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751708112748544', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:50:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751709958242304', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:50:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751710205706240', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:50:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751726815150080', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:50:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751727180054528', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:50:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751728996188160', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:50:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751729289789440', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:50:44', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751729646305280', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:50:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751730627772416', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 18:50:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751730938150912', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 18:50:45', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751731244335104', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 18:50:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751732380991488', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:50:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751732922056704', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:50:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751733429567488', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:50:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751733723168768', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:50:45', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751927093166080', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:51:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751927479042048', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:51:31', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751927852335104', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:51:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751929538445312', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 18:51:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751930125647872', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 18:51:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751973607997440', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 18:51:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751973926764544', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 18:51:43', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751974283280384', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 18:51:43', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751976128774144', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:51:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751976573370368', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:51:43', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751977353510912', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:51:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550751977638723584', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:51:43', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550752043220860928', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 18:51:59', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550752044063916032', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 18:51:59', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550752059440234496', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 18:52:03', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550752059859664896', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 18:52:03', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751483449245697\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550752071624687616', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 18:52:06', 'GET', '{\"id\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550752072190918656', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 18:52:06', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751881509666817\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753916946481152', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:59:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753917391077376', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:59:26', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753919861522432', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:59:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753920339673088', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:59:27', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753923607035904', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:59:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753924047437824', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:59:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753926199115776', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 18:59:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753926538854400', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 18:59:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753927381909504', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 18:59:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753927411269632', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 18:59:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753928065581056', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 18:59:28', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753928585674752', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 18:59:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753929168683008', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:59:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753929533587456', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:59:29', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753936848453632', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:59:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753937607622656', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:59:31', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753943370596352', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:59:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753943630643200', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:59:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753948655419392', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 18:59:33', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753949091627008', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 18:59:33', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753986177662976', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 18:59:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753986483847168', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 18:59:42', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753991961608192', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 18:59:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753992464924672', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 18:59:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753997510672384', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 18:59:45', 'GET', '{\"id\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550753997749747712', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 18:59:45', 'GET', '{\"roleId\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754773637267456', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:02:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754774014754816', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:02:50', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754775205937152', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:02:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754775654727680', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:02:51', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754776548114432', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:02:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754777122734080', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:02:51', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754777693159424', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:02:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754778087424000', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:02:51', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754778565574656', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:02:51', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754779026948096', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:02:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754779450572800', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:02:51', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754779953889280', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:02:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754780230713344', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:02:52', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754783577767936', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:02:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754783829426176', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:02:52', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754784278216704', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:02:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754785150631936', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:02:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754785578450944', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:02:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754786178236416', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:02:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754786438283264', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:02:53', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754787897901056', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:02:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754788359274496', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:02:54', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754789697257472', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:02:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754790116687872', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:02:54', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754790531923968', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:02:54', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754791203012608', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:02:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754791601471488', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:02:54', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754792469692416', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:02:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754792889122816', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:02:55', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754794235494400', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:02:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754794663313408', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:02:55', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754795091132416', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:02:55', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754796454281216', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:02:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754797007929344', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:02:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754798069088256', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:02:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754798295580672', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:02:56', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754799008612352', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:02:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754799335768064', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:02:56', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754817740374016', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 19:03:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754818025586688', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 19:03:01', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754818356936704', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 19:03:01', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754819057385472', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:03:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754819514564608', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:03:01', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754820064018432', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:03:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754820324065280', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:03:01', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754822328942592', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:03:02', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754822605766656', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:03:02', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754822945505280', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:03:02', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754827362107392', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:03:03', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754828112887808', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:03:03', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754828343574528', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:03:03', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754878436147200', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:03:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754878750720000', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:03:15', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754880038371328', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:03:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754880533299200', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:03:16', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754882278129664', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:03:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754882911469568', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:03:16', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754884924735488', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:03:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754885365137408', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:03:17', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754888569585664', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:03:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754888959655936', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:03:18', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754890209558528', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:03:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754890524131328', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:03:18', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754890910007296', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:03:18', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754891723702272', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 19:03:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754892042469376', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 19:03:18', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754892369625088', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 19:03:18', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754894349336576', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:03:19', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754894609383424', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:03:19', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754894978482176', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:03:19', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754907045494784', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:03:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754907498479616', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:03:22', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754908945514496', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:03:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754909239115776', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:03:22', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754910619041792', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:03:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754910962974720', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:03:23', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754915098558464', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:03:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754915568320512', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:03:24', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754915698343936', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:03:24', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754919267696640', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:03:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754919649378304', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:03:25', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754919989116928', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:03:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754930273550336', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:03:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550754930781061120', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:03:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755188244217856', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:04:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755188785283072', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:04:29', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755188915306496', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:04:29', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755224646582272', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:04:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755224977932288', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:04:38', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755226685014016', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:04:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755227100250112', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:04:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755231374245888', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 19:04:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755231697207296', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 19:04:39', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755232032751616', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 19:04:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755233135853568', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:04:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755233454620672', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:04:40', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755233823719424', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:04:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755234184429568', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:04:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755234746466304', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:04:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755236306747392', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:04:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755236600348672', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:04:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755259056652288', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-02-28 19:04:46', 'GET', '{\"pid\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755259325087744', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-02-28 19:04:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755302899712000', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-02-28 19:04:56', 'GET', '{\"pid\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755303210090496', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-02-28 19:04:56', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755358109335552', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-02-28 19:05:09', 'GET', '{\"pid\":[\"520751187331383297\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755358402936832', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-02-28 19:05:09', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755369412984832', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:05:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755369777889280', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:05:12', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755371208146944', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:05:13', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755371531108352', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:05:13', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755371908595712', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:05:13', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755373942833152', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:05:13', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755374592950272', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:05:13', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755379139575808', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:05:14', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755379827441664', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:05:15', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755380167180288', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:05:15', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755389885382656', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:05:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755390212538368', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:05:17', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755390548082688', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:05:17', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755396617240576', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:05:19', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755397011505152', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:05:19', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755398907330560', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:05:19', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755399272235008', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:05:19', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755406993948672', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/userNotice', '2019-02-28 19:05:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755407660843008', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeData', '2019-02-28 19:05:21', 'POST', '{\"page\":[\"1\"],\"rows\":[\"20\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755419081932800', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/themeList', '2019-02-28 19:05:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755424425476096', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/themeSet', '2019-02-28 19:05:25', 'POST', '{\"colorName\":[\"gplus\"],\"color\":[\"#dd4b39\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755431690010624', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-02-28 19:05:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755432356904960', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-02-28 19:05:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755432394653696', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-02-28 19:05:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755436299550720', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:05:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755436840615936', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:05:28', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755436966445056', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:05:28', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755443027214336', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/themeList', '2019-02-28 19:05:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755448039407616', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/themeSet', '2019-02-28 19:05:31', 'POST', '{\"colorName\":[\"wechat\"],\"color\":[\"#09b83e\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755455291359232', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-02-28 19:05:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755456008585216', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-02-28 19:05:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755456042139648', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-02-28 19:05:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755461171773440', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:05:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755461675089920', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:05:34', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755461901582336', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:05:34', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755466108469248', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:05:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755466464985088', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:05:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755474920701952', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:05:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755475348520960', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:05:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755477433090048', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:05:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755477714108416', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:05:38', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755478175481856', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:05:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755480222302208', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:05:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755480641732608', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:05:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755484135587840', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:05:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755484450160640', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:05:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755488841596928', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:05:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755489302970368', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:05:41', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755515341209600', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:05:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755515848720384', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:05:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755516754690048', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:05:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755517077651456', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:05:47', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755517618716672', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:05:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755518004592640', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:05:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755518323359744', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:05:48', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755518835064832', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:05:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755519015419904', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:05:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755519380324352', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:05:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755519967526912', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:05:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755520282099712', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:05:48', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755543845699584', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-02-28 19:05:54', 'GET', '{\"id\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755544093163520', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-02-28 19:05:54', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755739291877376', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-02-28 19:06:40', 'GET', '{\"id\":[\"520751566345469952\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755739606450176', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-02-28 19:06:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755755444142080', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:06:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755755871961088', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:06:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755757394493440', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:06:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755757671317504', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:06:45', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755758027833344', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:06:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755758908637184', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:06:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755759286124544', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:06:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755760053682176', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:06:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755760368254976', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:06:45', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755761949507584', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:06:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755762519932928', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:06:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755767754424320', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:06:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755768039636992', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:06:47', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755778571534336', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-02-28 19:06:50', 'GET', '{\"id\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755778856747008', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-02-28 19:06:50', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755823253454848', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:07:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755823677079552', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:07:00', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755824021012480', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:07:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755827812663296', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:07:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755828110458880', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:07:01', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755846108217344', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-02-28 19:07:06', 'GET', '{\"pid\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755846393430016', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-02-28 19:07:06', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755920229957632', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:07:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755920808771584', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:07:24', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755920947183616', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:07:24', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755951800483840', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:07:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755952161193984', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:07:31', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755952689676288', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:07:31', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755974978207744', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:07:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755975267614720', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:07:37', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755975624130560', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:07:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755977226354688', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:07:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755977809362944', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:07:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755980858621952', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:07:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550755981089308672', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:07:38', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756069266161664', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:07:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756069735923712', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:07:59', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756077768015872', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 19:08:01', 'GET', '{\"id\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756078053228544', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 19:08:01', 'GET', '{\"roleId\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756128221298688', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 19:08:13', 'GET', '{\"id\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756128498122752', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 19:08:13', 'GET', '{\"roleId\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756225491402752', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 19:08:36', 'GET', '{\"id\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756225717895168', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 19:08:36', 'GET', '{\"roleId\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756239462629376', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:08:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756240074997760', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:08:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756241119379456', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:08:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756241433952256', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:08:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756241773690880', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:08:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756243015204864', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:08:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756243430440960', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:08:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756245754085376', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:08:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756246756524032', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:08:41', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756247977066496', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:08:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756248329388032', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:08:42', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756248681709568', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:08:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756266419421184', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:08:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756266729799680', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:08:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756268998918144', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:08:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756269460291584', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:08:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756271226093568', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:08:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756271498723328', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:08:47', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756272782180352', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:08:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756273247748096', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:08:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756275231653888', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:08:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756275512672256', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:08:48', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756360514437120', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-02-28 19:09:08', 'GET', '{\"id\":[\"520751187331383297\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756360829009920', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-02-28 19:09:08', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756386766585856', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:09:15', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756387202793472', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:09:15', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751483449245697\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756402906267648', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:09:19', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756403313115136', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:09:19', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756415992496128', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:09:22', 'GET', '{\"id\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756416428703744', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:09:22', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751881509666817\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756429997277184', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:09:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756430265712640', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:09:25', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756430618034176', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:09:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756431679193088', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:09:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756432098623488', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:09:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756437672853504', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 19:09:27', 'GET', '{\"id\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756437895151616', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 19:09:27', 'GET', '{\"roleId\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756454433292288', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 19:09:31', 'GET', '{\"id\":[\"520340379124367361\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756454643007488', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 19:09:31', 'GET', '{\"roleId\":[\"520340379124367361\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756463459434496', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:09:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756463782395904', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:09:33', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756464419930112', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:09:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756465296539648', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 19:09:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756465619501056', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 19:09:33', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756465946656768', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 19:09:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756472875646976', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:09:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756473454460928', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:09:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756473597067264', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:09:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756477782982656', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:09:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756478160470016', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:09:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756479230017536', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:09:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756479863357440', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:09:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756482140864512', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:09:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756482610626560', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:09:38', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756482740649984', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:09:38', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756484296736768', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:09:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756485026545664', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:09:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756487035617280', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 19:09:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756487442464768', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 19:09:39', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756488939831296', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:09:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756489535422464', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:09:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756489883549696', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:09:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756490500112384', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:09:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756492064587776', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:09:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756492412715008', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:09:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756492786008064', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:09:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756499471728640', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:09:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756499924713472', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:09:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756501027815424', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:09:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756501623406592', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:09:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756560888922112', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:09:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756561232855040', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:09:56', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756561560010752', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:09:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756564571521024', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:09:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756565125169152', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:09:57', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756568585469952', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:09:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756569235587072', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:09:58', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756571211104256', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:09:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756571588591616', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:09:59', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756573761241088', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:09:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756574377803776', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:09:59', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756593008902144', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:10:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756593524801536', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:10:04', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756593659019264', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:10:04', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756597756854272', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:10:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756598339862528', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:10:05', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756687795978240', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:10:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756688513204224', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:10:27', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756695463165952', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:10:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756695819681792', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:10:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756714366894080', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:10:33', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756714803101696', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:10:33', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756727079829504', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:10:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756727381819392', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:10:36', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756727734140928', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:10:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756729361530880', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:10:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756729952927744', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:10:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756730951172096', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:10:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756731223801856', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:10:37', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756774160891904', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:10:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756774668402688', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:10:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756789331689472', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 19:10:51', 'GET', '{\"id\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756789545598976', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 19:10:51', 'GET', '{\"roleId\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756932944658432', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:11:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756933238259712', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:11:25', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756934685294592', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:11:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756935184416768', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:11:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756936430125056', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:11:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756936719532032', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:11:26', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756937080242176', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:11:26', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756938128818176', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 19:11:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756938439196672', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 19:11:26', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756938808295424', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 19:11:26', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756940397936640', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:11:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756940955779072', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:11:27', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756941089996800', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:11:27', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756945963778048', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:11:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756946290933760', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:11:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756946643255296', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:11:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756948954316800', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:11:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756949566685184', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:11:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756953945538560', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:11:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756954390134784', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:11:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756959767232512', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 19:11:31', 'GET', '{\"id\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550756960018890752', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 19:11:31', 'GET', '{\"roleId\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757051375026176', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 19:11:53', 'GET', '{\"id\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757051681210368', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 19:11:53', 'GET', '{\"roleId\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757074913460224', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:11:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757075639074816', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:11:59', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757075785875456', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:11:59', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757077979496448', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:11:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757078533144576', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:12:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757081246859264', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:12:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757081574014976', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:12:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757086019977216', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:12:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757086636539904', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:12:02', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757100641320960', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:12:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757101111083008', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:12:05', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757111143858176', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 19:12:07', 'GET', '{\"id\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757111395516416', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 19:12:07', 'GET', '{\"roleId\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757266496684032', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:12:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757267041943552', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:12:45', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757267176161280', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:12:45', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757271265607680', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:12:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757271940890624', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:12:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757273819938816', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:12:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757274113540096', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:12:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757274449084416', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:12:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757293784825856', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:12:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757294275559424', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:12:51', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757294434942976', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:12:51', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757458818105344', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:13:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757459250118656', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:13:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757460105756672', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:13:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757460713930752', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:13:31', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757461024309248', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:13:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757461418573824', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:13:31', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757461829615616', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:13:31', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757466401406976', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:13:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757466946666496', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:13:32', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757467076689920', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:13:32', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757468444033024', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:13:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757468783771648', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:13:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757469853319168', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:13:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757470503436288', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:13:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757476480319488', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:13:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757476853612544', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:13:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757478736855040', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:13:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757479324057600', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:13:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757544251883520', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:13:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757544751005696', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:13:51', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757545795387392', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:13:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757546088988672', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:13:51', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757565361815552', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:13:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757565680582656', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:13:56', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757566162927616', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:13:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757566771101696', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:13:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550757567328944128', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:13:56', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550758974119477248', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:19:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550758974459215872', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:19:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550758974832508928', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:19:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550758975507791872', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:19:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550758976011108352', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:19:32', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550758976145326080', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:19:32', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550758978250866688', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:19:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550758978787737600', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:19:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760461558087680', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:25:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760462107541504', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:25:26', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760470546481152', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:25:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760471041409024', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:25:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760472345837568', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:25:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760472576524288', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:25:29', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760473738346496', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:25:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760474212302848', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:25:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760475080523776', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:25:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760475713863680', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:25:30', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760476418506752', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:25:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760476653387776', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:25:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760477014097920', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:25:30', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760477483859968', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:25:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760477882318848', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:25:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760478310137856', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:25:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760478930894848', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:25:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760479279022080', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:25:30', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760480398901248', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:25:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760480851886080', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:25:31', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760485784387584', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:25:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760486405144576', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:25:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760487248199680', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:25:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760487634075648', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:25:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760765372497920', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:26:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760765808705536', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:26:39', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760766370742272', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:26:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760767247351808', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:26:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760767947800576', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:26:39', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760768182681600', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:26:39', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760768816021504', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:26:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760769617133568', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:26:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760774096650240', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:26:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760774461554688', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:26:41', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760774906150912', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:26:41', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760775392690176', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:26:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760776156053504', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:26:41', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760776378351616', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:26:41', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760789976285184', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:26:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760790370549760', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:26:45', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760790899032064', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:26:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760794552270848', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:26:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760794980089856', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:26:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760801154105344', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:26:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760801854554112', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:26:47', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760802068463616', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:26:47', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760810951999488', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:26:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760811291738112', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:26:50', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760838676348928', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:26:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760838940590080', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:26:56', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760839380992000', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:26:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760841411035136', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:26:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760841733996544', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:26:57', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760870217515008', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:27:04', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760870674694144', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:27:04', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760906519216128', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:27:12', 'GET', '{\"id\":[\"520751187331383297\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760906934452224', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:27:12', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751187331383297\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760933228544000', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:27:19', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760933832523776', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:27:19', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760967596670976', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:27:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760968125153280', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:27:27', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760968255176704', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:27:27', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760970327162880', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:27:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760970977280000', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:27:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760972835356672', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:27:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760973238009856', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:27:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760973821018112', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:27:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760974613741568', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:27:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760977549754368', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:27:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760978065653760', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:27:29', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760978212454400', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:27:29', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760996197629952', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:27:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550760996818386944', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:27:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761001402761216', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:27:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761001822191616', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:27:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761002778492928', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:27:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761003231477760', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:27:35', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761027856236544', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:27:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761028128866304', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:27:41', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761028586045440', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:27:41', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761029202608128', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:27:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761029596872704', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:27:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761030305710080', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:27:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761030662225920', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:27:42', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761034143498240', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:27:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761034961387520', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:27:43', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761035116576768', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:27:43', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761037079511040', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:27:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761037784154112', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:27:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761041525473280', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:27:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761041852628992', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:27:45', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761047020011520', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:27:46', 'GET', '{\"id\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761047452024832', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:27:46', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751881509666817\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761063700758528', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:27:50', 'GET', '{\"id\":[\"520751187331383297\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761064199880704', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:27:50', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751187331383297\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761140737540096', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:28:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761141316354048', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:28:08', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761141463154688', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:28:08', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761142528507904', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:28:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761142859857920', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:28:09', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761143241539584', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:28:09', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761145049284608', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 19:28:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761145363857408', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 19:28:09', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761145724567552', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 19:28:09', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761146307575808', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:28:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761146718617600', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:28:10', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761150250221568', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:28:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761150661263360', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:28:10', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761151613370368', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:28:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761151911165952', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:28:11', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761169342693376', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:28:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761169812455424', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:28:15', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761171016220672', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:28:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761171347570688', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:28:15', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761180180774912', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:28:18', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761180616982528', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:28:18', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761198103035904', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:28:22', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761198585380864', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:28:22', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761210564313088', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:28:25', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761210971160576', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:28:25', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751483449245697\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761258375184384', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:28:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761258870112256', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:28:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761260161957888', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:28:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761260757549056', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:28:37', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761264926687232', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:28:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761265249648640', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:28:38', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761265606164480', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:28:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761266457608192', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:28:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761267153862656', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:28:38', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761267288080384', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:28:38', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761269125185536', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:28:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761269720776704', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:28:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761271780179968', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:28:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761272270913536', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:28:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761274254819328', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:28:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761274837827584', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:28:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761276779790336', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:28:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761277236969472', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:28:41', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761277748674560', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:28:41', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761279745163264', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:28:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761280273645568', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:28:41', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761280424640512', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:28:41', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761282492432384', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:28:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761282974777344', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:28:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761284765745152', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 19:28:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761285201952768', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 19:28:43', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761286913228800', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-02-28 19:28:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761287362019328', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-02-28 19:28:43', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761295213756416', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:28:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761295817736192', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:28:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761296551739392', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:28:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761297084416000', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:28:45', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761297499652096', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:28:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761298518867968', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:28:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761299085099008', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:28:46', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761299257065472', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:28:46', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761301211611136', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:28:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761301765259264', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:28:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761362066767872', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:29:01', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761362544918528', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:29:01', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751483449245697\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761393373052928', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:29:08', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761393830232064', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:29:08', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751483449245697\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761405301653504', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:29:11', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761405792387072', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:29:11', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751483449245697\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761425186848768', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:29:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761425685970944', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:29:16', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761427162365952', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:29:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761427476938752', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:29:16', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761429251129344', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:29:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761429586673664', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:29:17', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761430069018624', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:29:17', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761431629299712', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:29:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761431948066816', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:29:18', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761446514884608', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-02-28 19:29:21', 'GET', '{\"pid\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761446787514368', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-02-28 19:29:21', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761474440560640', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-02-28 19:29:28', 'GET', '{\"pid\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761474721579008', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-02-28 19:29:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761540526014464', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:29:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761541255823360', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:29:44', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761541390041088', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:29:44', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761556833468416', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:29:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761557139652608', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:29:47', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761573161893888', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:29:51', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761573694570496', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:29:51', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751483449245697\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761595521728512', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:29:57', 'GET', '{\"id\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761595966324736', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:29:57', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751881509666817\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761609375514624', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:30:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761609711058944', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:30:00', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761610185015296', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:30:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761611057430528', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:30:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761611795628032', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:30:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761617877368832', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 19:30:02', 'GET', '{\"id\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761618141609984', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 19:30:02', 'GET', '{\"roleId\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761638903414784', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:30:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761639209598976', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:30:07', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761642762174464', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:30:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761643051581440', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:30:08', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761645056458752', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:30:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761645488472064', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:30:08', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761661267443712', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/newRoleMenu', '2019-02-28 19:30:12', 'GET', '{\"id\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761661506519040', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/menuTreeChecked', '2019-02-28 19:30:12', 'GET', '{\"roleId\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761865903341568', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:31:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761866285023232', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:31:01', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761866792534016', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:31:01', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761871158804480', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:31:02', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761871842476032', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:31:02', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761877324431360', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:31:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761877894856704', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:31:04', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550761878129737728', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:31:04', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762040218615808', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:31:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762040734515200', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:31:43', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762043183988736', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:31:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762043582447616', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:31:43', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762868472020992', 'debug', '0:0:0:0:0:0:0:1', '/dashboard', '2019-02-28 19:35:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762870099410944', 'debug', '0:0:0:0:0:0:0:1', '/login', '2019-02-28 19:35:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762910410866688', 'admin', '0:0:0:0:0:0:0:1', '/login/action', '2019-02-28 19:35:10', 'POST', '{\"username\":[\"admin\"],\"password\":[\"123456\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762911044206592', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-02-28 19:35:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762912042450944', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-02-28 19:35:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762912206028800', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-02-28 19:35:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762915620192256', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:35:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762916006068224', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:35:11', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762916719099904', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:35:12', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762917130141696', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:35:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762917889310720', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:35:12', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762918082248704', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:35:12', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762921332834304', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 19:35:13', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762921836150784', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 19:35:13', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762923136385024', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:35:13', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762923874582528', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:35:13', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762923941691392', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:35:13', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762924382093312', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:35:13', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762924772163584', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:35:13', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762925032210432', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:35:14', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762925552304128', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:35:14', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762925753630720', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:35:14', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762931940229120', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:35:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762932443545600', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:35:15', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762938294599680', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:35:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762938659504128', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:35:17', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762939125071872', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:35:17', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762942321131520', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 19:35:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762942656675840', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 19:35:18', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762942971248640', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 19:35:18', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762957017972736', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 19:35:21', 'POST', '{\"extra_cascadeOrg\":[\"true\"],\"extra_orgId\":[\"520707116877479937\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762963888242688', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 19:35:23', 'POST', '{\"extra_cascadeOrg\":[\"true\"],\"extra_orgId\":[\"520709414647234561\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762963942768640', 'admin', '0:0:0:0:0:0:0:1', '/utils/orgInfo', '2019-02-28 19:35:23', 'GET', '{\"id\":[\"520709414647234561\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762975263195136', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:35:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762975623905280', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:35:26', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762976081084416', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:35:26', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762976831864832', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:35:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762977389707264', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:35:26', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762977561673728', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:35:26', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762983651803136', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:35:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762984369029120', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:35:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762985304358912', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:35:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762985677651968', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:35:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762986684284928', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:35:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762987296653312', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:35:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762988051628032', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:35:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762988387172352', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:35:29', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762988924043264', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:35:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762990463352832', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:35:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762991067332608', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:35:29', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762991222521856', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:35:29', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762992715694080', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:35:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762993361616896', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:35:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762996175994880', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:35:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762996675117056', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:35:31', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550762997040021504', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:35:31', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763000609374208', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:35:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763000974278656', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:35:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763026848940032', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:35:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763027230621696', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:35:38', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763027671023616', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:35:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763028878983168', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:35:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763029403271168', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:35:38', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763029575237632', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:35:38', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763030938386432', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:35:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763031500423168', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:35:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763034864254976', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:35:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763035224965120', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:35:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763037666050048', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:35:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763038093869056', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:35:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763040572702720', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:35:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763040891469824', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:35:41', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763041243791360', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:35:41', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763043336749056', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:35:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763043961700352', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:35:42', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763044108500992', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:35:42', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763045513592832', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:35:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763046063046656', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:35:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763048197947392', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:35:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763048529297408', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:35:43', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763051679219712', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:35:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763052304171008', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:35:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763062404055040', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-02-28 19:35:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763062857039872', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-02-28 19:35:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763064845139968', 'admin', '0:0:0:0:0:0:0:1', '/exStaff', '2019-02-28 19:35:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763065281347584', 'admin', '0:0:0:0:0:0:0:1', '/exStaff/query', '2019-02-28 19:35:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763077931368448', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:35:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763078241746944', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:35:50', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763078602457088', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:35:50', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763079604895744', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:35:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763080259207168', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:35:51', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763080397619200', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:35:51', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763083551735808', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:35:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763083958583296', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:35:51', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763085703413760', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:35:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763086273839104', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:35:52', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763091395084288', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:35:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763091705462784', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:35:53', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763092166836224', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:35:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763093068611584', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:35:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763093622259712', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:35:54', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763093752283136', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:35:54', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763095715217408', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:35:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763096528912384', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:35:54', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763098865139712', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:35:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763099548811264', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:35:55', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763101159424000', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:35:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763101532717056', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:35:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763104510672896', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:35:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763105072709632', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:35:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763116183420928', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:35:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763116984532992', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:35:59', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763122969804800', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:36:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763123250823168', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:36:01', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763123615727616', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:36:01', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763126656598016', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:36:02', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763127369629696', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:36:02', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763127508041728', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:36:02', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763130561495040', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:36:03', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763130863484928', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:36:03', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763133283598336', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:36:03', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763134260871168', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:36:03', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763138287403008', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:36:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763138694250496', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:36:04', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763140887871488', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:36:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763141248581632', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:36:05', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763142892748800', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:36:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763143450591232', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:36:06', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763163600027648', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:36:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763164153675776', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:36:11', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763164262727680', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:36:11', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763167521701888', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:36:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763167869829120', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:36:11', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763168259899392', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:36:11', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763170864562176', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:36:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763171443376128', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:36:12', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763173544722432', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:36:13', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763173867683840', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:36:13', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763175486685184', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:36:13', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763175855783936', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:36:13', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763176635924480', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:36:13', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763177063743488', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:36:14', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763177831301120', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:36:14', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763178485612544', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:36:14', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763179202838528', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:36:14', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763179529994240', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:36:14', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763179890704384', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:36:14', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763181463568384', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:36:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763182457618432', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:36:15', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763182658945024', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:36:15', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763183934013440', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 19:36:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763184378609664', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 19:36:15', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763190565208064', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:36:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763191085301760', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:36:17', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763191227908096', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:36:17', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763193467666432', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:36:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763193769656320', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:36:18', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763194121977856', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:36:18', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763312036446208', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:36:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763312757866496', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:36:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763314091655168', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:36:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763314695634944', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:36:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763315555467264', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:36:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763315870040064', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:36:47', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763316264304640', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:36:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763319649107968', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 19:36:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763320005623808', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 19:36:48', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763320370528256', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 19:36:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763321112920064', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:36:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763321532350464', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:36:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763323893743616', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:36:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763324220899328', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:36:49', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763348501725184', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:36:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763348958904320', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:36:55', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763350535962624', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:36:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763350829563904', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:36:55', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763351253188608', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:36:55', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763352972853248', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-02-28 19:36:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763353262260224', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-02-28 19:36:56', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763353593610240', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-02-28 19:36:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763359817957376', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:36:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763360346439680', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:36:57', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763360480657408', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:36:57', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763361856389120', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:36:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763362414231552', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:36:58', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763908881711104', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-02-28 19:39:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763909418582016', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-02-28 19:39:08', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763913105375232', 'admin', '0:0:0:0:0:0:0:1', '/exStaff', '2019-02-28 19:39:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763913545777152', 'admin', '0:0:0:0:0:0:0:1', '/exStaff/query', '2019-02-28 19:39:09', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763921078747136', 'admin', '0:0:0:0:0:0:0:1', '/exStaff/newModel', '2019-02-28 19:39:11', 'GET', '{\"id\":[\"538058415805562880\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763992331583488', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:39:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763992725848064', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:39:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763993141084160', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:39:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763994177077248', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:39:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763994495844352', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:39:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763994881720320', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:39:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763995368259584', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:39:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763996114845696', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:39:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763996404252672', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:39:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763997045981184', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:39:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763998304272384', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-02-28 19:39:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763998782423040', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-02-28 19:39:30', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550763999877136384', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:39:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764000263012352', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:39:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764002842509312', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:39:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764003467460608', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:39:31', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764003601678336', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:39:31', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764021372944384', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:39:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764021725265920', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:39:35', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764022346022912', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:39:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764023021305856', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:39:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764023558176768', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:39:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764023704977408', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:39:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764029916741632', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:39:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764030269063168', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:39:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764032559153152', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:39:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764033163132928', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:39:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764060656795648', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:39:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764061214638080', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:39:44', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764061348855808', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:39:44', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764106647339008', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:39:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764107012243456', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:39:55', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764116441038848', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:39:58', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764116889829376', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:39:58', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751483449245697\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764136913436672', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:40:02', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764137420947456', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:40:03', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764154768588800', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:40:07', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764155422900224', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:40:07', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751483449245697\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764175765274624', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:40:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764176167927808', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:40:12', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764183235330048', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:40:13', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764183549902848', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:40:14', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764183986110464', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:40:14', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764184803999744', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:40:14', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764185236013056', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:40:14', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764186162954240', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:40:14', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764186469138432', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:40:14', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764188109111296', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:40:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764188817948672', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:40:15', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764206765375488', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:40:19', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764207079948288', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:40:19', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764230400278528', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:40:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764230735822848', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:40:25', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764231088144384', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:40:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764232384184320', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:40:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764232879112192', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:40:25', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764233000747008', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:40:25', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764236389744640', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:40:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764237056638976', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:40:26', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764238084243456', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:40:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764238461730816', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:40:27', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764239376089088', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:40:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764239975874560', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:40:27', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764253179543552', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:40:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764253452173312', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:40:30', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764270887895040', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:40:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764271319908352', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:40:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764293176426496', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/openRoleUser', '2019-02-28 19:40:40', 'GET', '{\"id\":[\"520339201795817472\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764293797183488', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/queryRoleUser', '2019-02-28 19:40:40', 'POST', '{\"search_EQ_a.sysRoleId\":[\"520339201795817472\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764338957254656', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:40:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764339263438848', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:40:51', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764340957937664', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:40:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764341545140224', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:40:51', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764342610493440', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:40:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764342891511808', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:40:52', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764343361273856', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:40:52', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764344418238464', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:40:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764344695062528', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:40:52', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764345072549888', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:40:52', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764346863517696', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-02-28 19:40:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764347308113920', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-02-28 19:40:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764348289581056', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:40:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764348595765248', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:40:53', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764445354164224', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-02-28 19:41:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764445622599680', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-02-28 19:41:16', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764446008475648', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-02-28 19:41:16', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764447019302912', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:41:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764447333875712', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:41:16', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764461254770688', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:41:20', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764461753892864', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:41:20', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751483449245697\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764496084271104', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:41:28', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764496621142016', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:41:28', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751483449245697\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764569815941120', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:41:46', 'GET', '{\"id\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764570277314560', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:41:46', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751881509666817\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764675868917760', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:42:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764676288348160', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:42:11', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764869075337216', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:42:57', 'GET', '{\"id\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764869519933440', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:42:57', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751881509666817\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764883952533504', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:43:01', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764884401324032', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:43:01', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751483449245697\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764900410982400', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:43:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764900792664064', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:43:05', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764901287591936', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:43:05', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764905209266176', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-02-28 19:43:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764905574170624', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-02-28 19:43:06', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764910737358848', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:43:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764911316172800', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:43:07', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764911492333568', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:43:07', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764912717070336', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:43:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764913400741888', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:43:08', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764918408740864', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:43:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764919209852928', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:43:09', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764919365042176', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:43:09', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764921357336576', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-02-28 19:43:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764921650937856', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-02-28 19:43:10', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764929607532544', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:43:11', 'GET', '{\"id\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764930102460416', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:43:12', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751881509666817\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764948972634112', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-02-28 19:43:16', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764949454979072', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-02-28 19:43:16', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751483449245697\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764958317543424', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:43:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764958623727616', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:43:18', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764958976049152', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:43:18', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764960381140992', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:43:19', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764961316470784', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:43:19', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764961446494208', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:43:19', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764961731706880', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:43:19', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764962134360064', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:43:19', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764962537013248', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:43:19', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764965615632384', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:43:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764966211223552', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:43:20', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764968744583168', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:43:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764969491169280', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:43:21', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764969646358528', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:43:21', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764976076226560', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-02-28 19:43:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764976449519616', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-02-28 19:43:23', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764976776675328', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-02-28 19:43:23', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764978118852608', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:43:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764978659917824', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:43:23', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764984011849728', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-02-28 19:43:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764985110757376', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-02-28 19:43:25', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764985240780800', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-02-28 19:43:25', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764987472150528', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:43:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764988046770176', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:43:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764993746829312', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-02-28 19:43:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550764994493415424', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-02-28 19:43:27', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960770326724608', 'debug', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 08:41:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960770389639168', 'debug', '0:0:0:0:0:0:0:1', '/login', '2019-03-01 08:41:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960801310048256', 'admin', '0:0:0:0:0:0:0:1', '/login/action', '2019-03-01 08:41:31', 'POST', '{\"username\":[\"admin\"],\"password\":[\"123456\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960801347796992', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 08:41:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960802941632512', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 08:41:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960802983575552', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 08:41:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960807190462464', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 08:41:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960807916077056', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 08:41:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960809442803712', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 08:41:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960809761570816', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 08:41:33', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960810126475264', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 08:41:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960812534005760', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 08:41:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960813112819712', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 08:41:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960814564048896', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 08:41:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960814937341952', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 08:41:34', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960815226748928', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 08:41:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960815495184384', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 08:41:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960816002695168', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 08:41:34', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960816094969856', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 08:41:34', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960819337166848', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 08:41:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960819660128256', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 08:41:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960821455290368', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 08:41:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960821782446080', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 08:41:36', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960822050881536', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 08:41:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960822738747392', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 08:41:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960823044931584', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 08:41:36', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960823330144256', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 08:41:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960824953339904', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 08:41:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960825465044992', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 08:41:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960828635938816', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 08:41:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960829072146432', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 08:41:38', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960829193781248', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 08:41:38', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960831127355392', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 08:41:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960831408373760', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 08:41:38', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960831668420608', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 08:41:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960833652326400', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 08:41:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960834109505536', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 08:41:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960836366041088', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 08:41:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960836676419584', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 08:41:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960838152814592', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 08:41:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960838526107648', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 08:41:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960840107360256', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 08:41:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960840493236224', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 08:41:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960840992358400', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 08:41:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960841504063488', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 08:41:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960843060150272', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 08:41:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960843362140160', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 08:41:41', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960843643158528', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 08:41:41', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960845538983936', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 08:41:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960845857751040', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 08:41:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960847564832768', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 08:41:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960847942320128', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 08:41:42', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960939587862528', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 08:42:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960940246368256', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 08:42:04', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960941202669568', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 08:42:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960941773094912', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 08:42:04', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960948525924352', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-03-01 08:42:06', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960948920188928', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-03-01 08:42:06', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960962069331968', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-03-01 08:42:09', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('550960962446819328', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-03-01 08:42:09', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751483449245697\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123490002960384', 'debug', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 19:27:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123493912051712', 'debug', '0:0:0:0:0:0:0:1', '/login', '2019-03-01 19:28:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123555413131264', 'admin', '0:0:0:0:0:0:0:1', '/login/action', '2019-03-01 19:28:14', 'POST', '{\"username\":[\"admin\"],\"password\":[\"123456\"],\"remember\":[\"on\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123556126162944', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 19:28:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123557480923136', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 19:28:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123557606752256', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 19:28:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123561805250560', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:28:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123562367287296', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:28:16', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123563441029120', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 19:28:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123564028231680', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 19:28:17', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123565022281728', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:28:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123565475266560', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:28:17', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123565840171008', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:28:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123566247018496', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:28:17', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123912906244096', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 19:29:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123913535389696', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 19:29:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123914764320768', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:29:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123915091476480', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:29:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123917457063936', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:29:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123917826162688', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:29:41', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123921756225536', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/themeList', '2019-03-01 19:29:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123926390931456', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/themeSet', '2019-03-01 19:29:43', 'POST', '{\"colorName\":[\"green\"],\"color\":[\"#40b370\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123933726769152', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 19:29:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123934406246400', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 19:29:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123934456578048', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 19:29:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123942312509440', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:29:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123942652248064', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:29:47', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123951758082048', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:29:49', 'GET', '{\"id\":[\"520749715428474880\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123952156540928', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:29:49', 'POST', '{\"menuId\":[\"520749715428474880\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123952215261184', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:29:49', 'POST', '{\"menuId\":[\"520749715428474880\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123977452388352', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:29:55', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123977871818752', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:29:55', 'POST', '{\"menuId\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551123977926344704', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:29:55', 'POST', '{\"menuId\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551124183904419840', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 19:30:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551124184420319232', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 19:30:44', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551124184990744576', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 19:30:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551124186228064256', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 19:30:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551124187201142784', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 19:30:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551124947313885184', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:33:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551124947838173184', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:33:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551124948412792832', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:33:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551124948786085888', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:33:47', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551124962451128320', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-03-01 19:33:50', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551124962987999232', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-03-01 19:33:50', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551124977408016384', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:33:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551124977718394880', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:33:54', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125025063698432', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:34:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125025676066816', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:34:05', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125028435918848', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:34:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125028981178368', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:34:06', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125250079719424', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:34:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125250595618816', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:34:59', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125303519346688', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:35:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125304223989760', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:35:11', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125305239011328', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:35:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125305721356288', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:35:12', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125697662287872', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:36:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125698371125248', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:36:45', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125698811527168', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:36:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125699377758208', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:36:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125699507781632', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:36:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125700136927232', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:36:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125709905461248', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-03-01 19:36:48', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125710513635328', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-03-01 19:36:48', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125757842161664', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:37:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125758400004096', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:37:00', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125833629040640', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-01 19:37:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125834472095744', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-01 19:37:18', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125835403231232', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-01 19:37:18', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125862364217344', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 19:37:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125862938836992', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 19:37:25', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125863450542080', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 19:37:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125863941275648', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-01 19:37:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125864490729472', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-01 19:37:25', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125865140846592', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-01 19:37:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125880668160000', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 19:37:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125881460883456', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 19:37:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125882769506304', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:37:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125883256045568', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:37:29', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125953418362880', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:37:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125954085257216', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:37:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125954634711040', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:37:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125955247079424', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:37:47', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125971223183360', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:37:50', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125971785220096', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:37:51', 'POST', '{\"menuId\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125971873300480', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:37:51', 'POST', '{\"menuId\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125990844137472', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:37:55', 'GET', '{\"id\":[\"520749715428474880\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125991376814080', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:37:55', 'POST', '{\"menuId\":[\"520749715428474880\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551125991464894464', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:37:55', 'POST', '{\"menuId\":[\"520749715428474880\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126046187978752', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 19:38:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126046959730688', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 19:38:09', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126048582926336', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:38:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126049191100416', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:38:09', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126138450083840', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:38:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126138932428800', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:38:30', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126165922775040', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:38:37', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126166568697856', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:38:37', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126166681944064', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:38:37', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126176395952128', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 19:38:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126176769245184', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 19:38:39', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126177310310400', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 19:38:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126177805238272', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 19:38:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126178581184512', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 19:38:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126178908340224', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:38:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126179302604800', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:38:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126181445894144', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 19:38:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126182205063168', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 19:38:41', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126183324942336', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 19:38:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126183912144896', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 19:38:41', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126185266905088', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:38:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126185673752576', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:38:42', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126188609765376', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 19:38:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126189675118592', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 19:38:43', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126190878883840', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:38:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126191398977536', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:38:43', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126193529683968', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 19:38:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126194108497920', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 19:38:44', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126194662146048', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 19:38:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126195652001792', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 19:38:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126196235010048', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 19:38:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126197031927808', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:38:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126197468135424', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:38:44', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126219899273216', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 19:38:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126220276760576', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 19:38:50', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126220880740352', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 19:38:50', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126222092894208', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:38:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126222520713216', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:38:50', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126231974674432', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:38:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126232427659264', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:38:53', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126233673367552', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:38:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126234113769472', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:38:53', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126262123331584', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 19:39:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126262559539200', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 19:39:00', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126263058661376', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 19:39:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126263889133568', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 19:39:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126264472141824', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 19:39:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126265453608960', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:39:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126265864650752', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:39:01', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126267315879936', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:39:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126267752087552', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:39:01', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126311888748544', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 19:39:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126312509505536', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 19:39:12', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126313709076480', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:39:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126314174644224', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:39:12', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126332315009024', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:39:17', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126332944154624', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:39:17', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126333007069184', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:39:17', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126342494584832', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 19:39:19', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126342960152576', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 19:39:19', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126343522189312', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 19:39:19', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126343933231104', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 19:39:19', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126344495267840', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 19:39:19', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126344566571008', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 19:39:19', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126345388654592', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 19:39:20', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126346042966016', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 19:39:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126346474979328', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 19:39:20', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126346969907200', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 19:39:20', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126348651823104', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 19:39:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126350153383936', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 19:39:21', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551126350346321920', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 19:39:21', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127016498266112', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 19:42:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127017064497152', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 19:42:00', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127017702031360', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 19:42:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127018138238976', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:42:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127018725441536', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:42:00', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127025352441856', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:42:02', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127025755095040', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:42:02', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127025939644416', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:42:02', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127179866406912', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:42:39', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127180487163904', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:42:39', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127180625575936', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:42:39', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127263467274240', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:42:59', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127264205471744', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:42:59', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127264285163520', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:42:59', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127643274084352', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:44:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127644075196416', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:44:29', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127646101045248', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:44:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127646667276288', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:44:30', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127652954537984', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:44:31', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127653508186112', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:44:32', 'POST', '{\"menuId\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551127653617238016', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:44:32', 'POST', '{\"menuId\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551128166081495040', 'debug', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 19:46:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551128166127632384', 'debug', '0:0:0:0:0:0:0:1', '/login', '2019-03-01 19:46:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551128188923674624', 'admin', '0:0:0:0:0:0:0:1', '/login/action', '2019-03-01 19:46:39', 'POST', '{\"username\":[\"admin\"],\"password\":[\"123456\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551128188965617664', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 19:46:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551128191033409536', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 19:46:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551128191134072832', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 19:46:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551128200780972032', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:46:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551128201305260032', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:46:42', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551128202601299968', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 19:46:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551128203100422144', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 19:46:43', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551128204287410176', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:46:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551128204685869056', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:46:43', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551128209307992064', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:46:44', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551128209836474368', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:46:44', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551128209886806016', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:46:44', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551129248606191616', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 19:50:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551129249491189760', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 19:50:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551129249541521408', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 19:50:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551129253605801984', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:50:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551129254176227328', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:50:53', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551129258685104128', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:50:54', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551129259070980096', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:50:54', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551129259108728832', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:50:54', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551129462687662080', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:51:43', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551129463044177920', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:51:43', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551129463081926656', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:51:43', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551130226843713536', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:54:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551130227409944576', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:54:45', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551130235668529152', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:54:47', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551130236348006400', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:54:47', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551130236389949440', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:54:47', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551130656273334272', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:56:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551130656621461504', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:56:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551130658412429312', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:56:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551130659079323648', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:56:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551130666943643648', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:56:30', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551130667425988608', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:56:30', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551130667476320256', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:56:30', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551130749202333696', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:56:50', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551130749898588160', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:56:50', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551130749999251456', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:56:50', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551131083341561856', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 19:58:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551131083983290368', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 19:58:09', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551131093915402240', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:58:12', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551131094636822528', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:58:12', 'POST', '{\"menuId\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551131094720708608', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:58:12', 'POST', '{\"menuId\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551131165524754432', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-03-01 19:58:29', 'GET', '{\"id\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551131166673993728', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-03-01 19:58:29', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551131296428982272', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:59:00', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551131297288814592', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:59:00', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551131297427226624', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:59:00', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551131476519813120', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 19:59:43', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551131477316730880', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 19:59:43', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132033254948864', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 20:01:56', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132034173501440', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 20:01:56', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132152197021696', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:02:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132153090408448', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:02:24', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132158954045440', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 20:02:26', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132160086507520', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 20:02:26', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132187634696192', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:02:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132188670689280', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 20:02:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132188721020928', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 20:02:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132190658789376', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:02:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132191715753984', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 20:02:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132191774474240', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 20:02:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132194282668032', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:02:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132194924396544', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:02:34', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132199475216384', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/themeList', '2019-03-01 20:02:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132204122505216', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/themeSet', '2019-03-01 20:02:37', 'POST', '{\"colorName\":[\"default\"],\"color\":[\"#447eff\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132211504480256', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:02:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132212922155008', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 20:02:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132212968292352', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 20:02:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132218815152128', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:02:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132219381383168', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:02:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132226457174016', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 20:02:42', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132227119874048', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 20:02:42', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132826045513728', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:05:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132826724990976', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:05:05', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132830139154432', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-03-01 20:05:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132830793465856', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-03-01 20:05:06', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132843573510144', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 20:05:09', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132844303319040', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 20:05:09', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132900788011008', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 20:05:23', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551132901542985728', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 20:05:23', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551133115272134656', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:06:14', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551133116245213184', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:06:14', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551133118375919616', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newModel', '2019-03-01 20:06:14', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551133119063785472', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-03-01 20:06:15', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551133129679568896', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 20:06:17', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551133130405183488', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 20:06:17', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551133282369011712', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:06:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551133283023323136', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:06:54', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551133289318973440', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 20:06:55', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551133290082336768', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 20:06:55', 'POST', '{\"menuId\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551133894808698880', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:09:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551133895207157760', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:09:20', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551133896993931264', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:09:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551133897316892672', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:09:20', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551133902094204928', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 20:09:21', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551133902480080896', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 20:09:21', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135042319941632', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 20:13:53', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135043146219520', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 20:13:53', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135143213924352', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/updateMenuButtonAction', '2019-03-01 20:14:17', 'POST', '{\"status\":[\"P\"],\"buttonCode\":[\"god\"],\"buttonTxt\":[\"god\"]}', 'ActiveRecordException: You can\'t update model without Primary Key, id can not be null.', NULL);
INSERT INTO `sys_visit_log` VALUES ('551135306443653120', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 20:14:56', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135307131518976', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuButton', '2019-03-01 20:14:56', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135369630842880', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/updateMenuButtonAction', '2019-03-01 20:15:11', 'POST', '{\"status\":[\"P\"],\"buttonCode\":[\"yy\"],\"buttonTxt\":[\"jj\"]}', 'ActiveRecordException: You can\'t update model without Primary Key, id can not be null.', NULL);
INSERT INTO `sys_visit_log` VALUES ('551135690000171008', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/updateMenuButtonAction', '2019-03-01 20:16:28', 'POST', '超长文本参数', 'ActiveRecordException: You can\'t update model without Primary Key, id can not be null.', NULL);
INSERT INTO `sys_visit_log` VALUES ('551135969747664896', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 20:17:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135970871738368', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 20:17:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135971039510528', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 20:17:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135971446358016', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 20:17:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135972377493504', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 20:17:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135972583014400', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 20:17:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135978345988096', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 20:17:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135979226791936', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 20:17:37', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135979394564096', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 20:17:37', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135981265223680', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 20:17:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135982481571840', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 20:17:37', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135982682898432', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 20:17:37', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135987770589184', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 20:17:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135988663975936', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 20:17:39', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551135988840136704', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 20:17:39', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551136008289124352', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:17:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551136008922464256', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:17:44', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551136011833311232', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-01 20:17:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551136012500205568', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-01 20:17:44', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551136013091602432', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-01 20:17:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551136014513471488', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 20:17:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551136015310389248', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 20:17:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551136017919246336', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 20:17:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551136018540003328', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 20:17:46', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551136019009765376', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 20:17:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551136019806683136', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:17:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551136020444217344', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:17:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137099194040320', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 20:22:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137100070649856', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 20:22:04', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137100695601152', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:22:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137101366689792', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:22:04', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137108224376832', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 20:22:06', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137419794055168', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 20:23:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137420578390016', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:23:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137422058979328', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 20:23:21', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137422889451520', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:23:21', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137429742944256', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 20:23:22', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137448361459712', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:23:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137449200320512', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:23:27', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137449657499648', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:23:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137450341171200', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:23:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137451305861120', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:23:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137451758845952', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 20:23:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137453067468800', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 20:23:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137453461733376', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:23:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137454220902400', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:23:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551137469739827200', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuButton', '2019-03-01 20:23:32', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551138738818777088', 'debug', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:28:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551138740743962624', 'debug', '0:0:0:0:0:0:0:1', '/login', '2019-03-01 20:28:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551138757529567232', 'debug', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:28:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551138760088092672', 'admin', '0:0:0:0:0:0:0:1', '/login', '2019-03-01 20:28:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551138760666906624', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:28:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551138794682712064', 'admin', '0:0:0:0:0:0:0:1', '/login/action', '2019-03-01 20:28:48', 'POST', '{\"username\":[\"admin\"],\"password\":[\"123456\"],\"remember\":[\"on\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551138794804346880', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:28:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551138796201050112', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 20:28:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551138796314296320', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 20:28:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551138800508600320', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:28:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551138801150328832', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:28:49', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551138807567613952', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:28:51', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551138808289034240', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:28:51', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139016657862656', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:29:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139017458974720', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:29:41', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139018461413376', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:29:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139019547738112', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:29:41', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139024652206080', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:29:43', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139025684004864', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:29:43', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139031396646912', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:29:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139471244918784', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:31:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139472180248576', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:31:29', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139473518231552', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:31:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139474449367040', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:31:30', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139486793203712', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:31:33', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139487850168320', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:31:33', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139507177521152', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:31:38', 'GET', '{\"id\":[\"520749715428474880\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139507982827520', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:31:38', 'POST', '{\"menuId\":[\"520749715428474880\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139528518139904', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:31:43', 'GET', '{\"id\":[\"520749715428474880\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139529457664000', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:31:43', 'POST', '{\"menuId\":[\"520749715428474880\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139785893216256', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:32:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139786715299840', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:32:44', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139787906482176', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:32:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139788724371456', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:32:45', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139812992614400', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:32:51', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139813802115072', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:32:51', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139818310991872', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:32:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551139835700576256', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:32:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140155231043584', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:34:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140156057321472', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:34:12', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140171853070336', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:34:16', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140172670959616', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:34:16', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140176378724352', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:34:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140374366650368', 'debug', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:35:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140378917470208', 'admin', '0:0:0:0:0:0:0:1', '/login', '2019-03-01 20:35:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140379005550592', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:35:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140380775546880', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 20:35:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140380918153216', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 20:35:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140384831438848', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:35:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140385536081920', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:35:07', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140390162399232', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:35:08', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140391085146112', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:35:08', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140396059590656', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:35:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140457850077184', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:35:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140575072485376', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:35:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140963481812992', 'debug', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:37:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140966988251136', 'admin', '0:0:0:0:0:0:0:1', '/login', '2019-03-01 20:37:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140967072137216', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:37:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140972499566592', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 20:37:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140972629590016', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 20:37:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140978270928896', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:37:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140978686164992', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:37:29', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140986114277376', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:37:30', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140986785366016', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:37:30', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551140990283415552', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:37:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141066657497088', 'debug', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:37:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141066913349632', 'admin', '0:0:0:0:0:0:0:1', '/login', '2019-03-01 20:37:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141066955292672', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:37:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141068020645888', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 20:37:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141068075171840', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 20:37:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141071933931520', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:37:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141072508551168', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 20:37:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141072546299904', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 20:37:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141076111458304', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:37:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141076568637440', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 20:37:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141076618969088', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 20:37:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141092746067968', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:37:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141105744216064', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:37:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141106448859136', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:37:59', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141107572932608', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:37:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141108357267456', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:37:59', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141123460956160', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:38:03', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141124178182144', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:38:03', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141127823032320', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:38:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141524725825536', 'debug', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:39:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141527380819968', 'admin', '0:0:0:0:0:0:0:1', '/login', '2019-03-01 20:39:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141529196953600', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:39:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141530354581504', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 20:39:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141530497187840', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 20:39:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141533806493696', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:39:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141534200758272', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:39:41', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141539212951552', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:39:42', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141539628187648', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:39:42', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141543394672640', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:39:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141893296095232', 'debug', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:41:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141895619739648', 'debug', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:41:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141896701870080', 'admin', '0:0:0:0:0:0:0:1', '/login', '2019-03-01 20:41:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141896710258688', 'admin', '0:0:0:0:0:0:0:1', '/login', '2019-03-01 20:41:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141896768978944', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:41:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141897410707456', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 20:41:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141897540730880', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 20:41:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141897603645440', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 20:41:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141898132127744', 'admin', '0:0:0:0:0:0:0:1', '/login', '2019-03-01 20:41:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141898757079040', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:41:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141898912268288', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 20:41:08', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141900166365184', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 20:41:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141900220891136', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 20:41:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141903714746368', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 20:41:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141904180314112', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 20:41:09', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141904843014144', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:41:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141905182752768', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:41:09', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141909788098560', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:41:11', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141910194946048', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:41:11', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141914062094336', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:41:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551141914389250048', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/menuComboTree', '2019-03-01 20:41:12', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142022249971712', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:41:37', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142023122386944', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:41:38', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142025886433280', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:41:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142238009163776', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 20:42:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142238680252416', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 20:42:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142239808520192', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:42:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142240227950592', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:42:29', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142245126897664', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:42:30', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142245768626176', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:42:31', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142249291841536', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:42:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142917553520640', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:45:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142917972951040', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:45:11', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142919273185280', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:45:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142919600340992', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:45:11', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142924943884288', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:45:13', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142925463977984', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:45:13', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551142929670864896', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:45:14', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143004987981824', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:45:32', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143005407412224', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:45:32', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143008574111744', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:45:32', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143068158394368', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:45:47', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143068766568448', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:45:47', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143072235257856', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:45:48', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143140384309248', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:46:04', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143202741026816', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:46:19', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143203244343296', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:46:19', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143206692061184', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:46:20', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143438507048960', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:47:15', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143439060697088', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:47:15', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143442688770048', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:47:16', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143532925026304', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 20:47:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143533390594048', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 20:47:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143534493696000', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:47:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143534917320704', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:47:38', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143539363282944', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:47:39', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143539732381696', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:47:39', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143543180099584', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:47:40', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143659802722304', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:48:08', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143660364759040', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:48:08', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143664244490240', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:48:09', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551143740203335680', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:48:27', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144028238774272', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:49:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144031178981376', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 20:49:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144031267061760', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 20:49:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144033997553664', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 20:49:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144035662692352', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 20:49:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144035725606912', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 20:49:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144038858752000', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 20:49:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144039873773568', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 20:49:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144040800714752', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:49:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144041769598976', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:49:39', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144048233021440', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:49:40', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144049034133504', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:49:41', 'POST', '{\"menuId\":[\"520751483449245697\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144053710782464', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:49:42', 'GET', '{\"menuId\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144294774210560', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:50:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144295495630848', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:50:39', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144301602537472', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:50:41', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144302038745088', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:50:41', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144306761531392', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:50:42', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144329700179968', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:50:47', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144461258719232', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:51:19', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144461652983808', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:51:19', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144468649082880', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:51:21', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144479411666944', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:51:23', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551144494762819584', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:51:27', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145154581364736', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 20:54:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145154942074880', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:54:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145155059515392', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 20:54:04', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145155562831872', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 20:54:04', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145155994845184', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:54:04', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145160990261248', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:54:06', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145161556492288', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:54:06', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145189364727808', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 20:54:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145189826101248', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 20:54:13', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145194691493888', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:54:14', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145195064786944', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:54:14', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145208494948352', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 20:54:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145208859852800', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 20:54:17', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145209258311680', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 20:54:17', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145291982569472', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 20:54:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145292322308096', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 20:54:37', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145297875566592', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 20:54:38', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145298269831168', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 20:54:38', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145313067335680', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:54:42', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551145324148686848', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 20:54:45', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551147515831910400', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:03:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551147517555769344', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 21:03:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551147517627072512', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 21:03:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551147519153799168', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:03:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551147520978321408', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 21:03:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551147521049624576', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 21:03:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551147568919216128', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:03:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551147569615470592', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:03:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551147600498130944', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:03:47', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551147601332797440', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:03:47', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551147633138204672', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:03:55', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148045199212544', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:05:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148046109376512', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:05:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148046537195520', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:05:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148046830796800', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:05:34', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148053080309760', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:05:35', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148053474574336', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:05:35', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148059124301824', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:05:37', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148247830233088', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:06:22', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148249252102144', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:06:22', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148251923873792', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:06:23', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148260262150144', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/addButtonAction', '2019-03-01 21:06:25', 'POST', '{\"id\":[\"\"],\"sysMenuId\":[\"520751411466600448\"],\"buttonTxt\":[\"1\"],\"buttonCode\":[\"1\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148267602182144', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:06:26', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148285054681088', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:06:30', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148292457627648', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/addButtonAction', '2019-03-01 21:06:32', 'POST', '{\"id\":[\"\"],\"sysMenuId\":[\"520751411466600448\"],\"buttonTxt\":[\"2\"],\"buttonCode\":[\"2\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148299822825472', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:06:34', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148306395299840', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:06:36', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148319032737792', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/addButtonAction', '2019-03-01 21:06:39', 'POST', '{\"id\":[\"\"],\"sysMenuId\":[\"520751411466600448\"],\"buttonTxt\":[\"3\"],\"buttonCode\":[\"3\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148326406324224', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:06:40', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148354793373696', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:06:47', 'GET', '{\"id\":[\"551148292415684608\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148373546106880', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:06:52', 'GET', '{\"id\":[\"551148292415684608\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148389782257664', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:06:55', 'GET', '{\"id\":[\"551148260224401408\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148404076445696', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:06:59', 'GET', '{\"id\":[\"551148292415684608\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148413782065152', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:07:01', 'GET', '{\"id\":[\"551148260224401408\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148427526799360', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:07:04', 'GET', '{\"id\":[\"551148318990794752\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148489891905536', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:07:19', 'GET', '{\"id\":[\"551148292415684608\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148506174193664', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/updateButtonAction', '2019-03-01 21:07:23', 'POST', '超长文本参数', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148513551974400', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:07:25', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148531679756288', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/deleteButtonAction', '2019-03-01 21:07:29', 'POST', '{\"ids\":[\"551148260224401408,551148292415684608,551148318990794752\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148578425274368', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/deleteButtonAction', '2019-03-01 21:07:40', 'POST', '{\"ids\":[\"551148260224401408,551148292415684608,551148318990794752\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148600726388736', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/deleteButtonAction', '2019-03-01 21:07:46', 'POST', '{\"ids\":[\"551148260224401408,551148292415684608,551148318990794752\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148746373595136', 'debug', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:08:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148750584676352', 'admin', '0:0:0:0:0:0:0:1', '/login', '2019-03-01 21:08:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148750689533952', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:08:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148754854477824', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 21:08:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148754997084160', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 21:08:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148770444705792', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:08:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148771258400768', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:08:26', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148772025958400', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:08:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148773057757184', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:08:27', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148777826680832', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:08:28', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148778820730880', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:08:28', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551148790363455488', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/deleteButtonAction', '2019-03-01 21:08:31', 'POST', '{\"ids\":[\"551148260224401408,551148292415684608,551148318990794752\"]}', 'ActiveRecordException: java.sql.SQLException: sql injection violation, syntax error: syntax error, expect RPAREN, actual LITERAL_CHARS , : delete from sys_role_button where sysButtonId in (551148260224401408\',\'551148292415684608\',\'551148318990794752)', NULL);
INSERT INTO `sys_visit_log` VALUES ('551149071578955776', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:09:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551149072736583680', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:09:38', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551149082312179712', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:09:41', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551149084166062080', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:09:41', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551149113966592000', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/deleteButtonAction', '2019-03-01 21:09:48', 'POST', '{\"ids\":[\"551148260224401408,551148292415684608,551148318990794752\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551149121327595520', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:09:50', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551150186378821632', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:14:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551150189113507840', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:14:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551150192183738368', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 21:14:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551150192317956096', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 21:14:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551150200492654592', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:14:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551150202426228736', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 21:14:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551150202505920512', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 21:14:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551150204586295296', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:14:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551150205450321920', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:14:08', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551150211544645632', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:14:10', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551150212375117824', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:14:10', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551150217693495296', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:14:11', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153160698200064', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:25:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153164049448960', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:25:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153166079492096', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 21:25:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153166092075008', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 21:25:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153168923230208', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:25:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153170823249920', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 21:25:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153170944884736', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 21:25:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153175957078016', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:25:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153176779161600', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:25:57', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153182269505536', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:25:58', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153183255166976', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:25:58', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153187134898176', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:25:59', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153200099491840', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/addButtonAction', '2019-03-01 21:26:02', 'POST', '{\"id\":[\"\"],\"sysMenuId\":[\"520751411466600448\"],\"buttonTxt\":[\"1\"],\"buttonCode\":[\"1\"]}', 'ActiveRecordException: The attribute name does not exist: \"btnControl\"', NULL);
INSERT INTO `sys_visit_log` VALUES ('551153460930674688', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/addButtonAction', '2019-03-01 21:27:05', 'POST', '{\"id\":[\"\"],\"sysMenuId\":[\"520751411466600448\"],\"buttonTxt\":[\"1\"],\"buttonCode\":[\"1\"]}', 'ActiveRecordException: The attribute name does not exist: \"btnControl\"', NULL);
INSERT INTO `sys_visit_log` VALUES ('551153478869712896', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:27:09', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153491632979968', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/addButtonAction', '2019-03-01 21:27:12', 'POST', '{\"id\":[\"\"],\"sysMenuId\":[\"520751411466600448\"],\"buttonTxt\":[\"1\"],\"buttonCode\":[\"1\"]}', 'ActiveRecordException: The attribute name does not exist: \"btnControl\"', NULL);
INSERT INTO `sys_visit_log` VALUES ('551153761498693632', 'debug', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:28:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153766779322368', 'admin', '0:0:0:0:0:0:0:1', '/login', '2019-03-01 21:28:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153766863208448', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:28:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153770495475712', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 21:28:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153770671636480', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 21:28:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153776845651968', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:28:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153777797758976', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:28:20', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153807879307264', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:28:27', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153809112432640', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:28:28', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153814279815168', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:28:29', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153822651645952', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/addButtonAction', '2019-03-01 21:28:31', 'POST', '{\"id\":[\"\"],\"sysMenuId\":[\"520751411466600448\"],\"buttonTxt\":[\"1\"],\"buttonCode\":[\"1\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153830012649472', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:28:33', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153850464075776', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:28:37', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153851487485952', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:28:38', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153869510410240', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:28:42', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153870273773568', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:28:42', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153936141123584', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:28:58', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153937068064768', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:28:58', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153941358837760', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:28:59', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153950384979968', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/addButtonAction', '2019-03-01 21:29:01', 'POST', '{\"id\":[\"\"],\"sysMenuId\":[\"520751411466600448\"],\"buttonTxt\":[\"2\"],\"buttonCode\":[\"2\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153957754372096', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:29:03', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153968475013120', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:29:06', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153969594892288', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:29:06', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153974007300096', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:29:07', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153986464382976', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/addButtonAction', '2019-03-01 21:29:10', 'POST', '{\"id\":[\"\"],\"sysMenuId\":[\"520751411466600448\"],\"buttonTxt\":[\"3\"],\"buttonCode\":[\"3\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551153993829580800', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:29:12', 'POST', '{\"menuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"10\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154061437566976', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:29:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154062309982208', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:29:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154067909378048', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:29:29', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154068895039488', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:29:29', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154074444103680', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:29:31', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154084808228864', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/addButtonAction', '2019-03-01 21:29:33', 'POST', '{\"id\":[\"\"],\"sysMenuId\":[\"520751411466600448\"],\"buttonTxt\":[\"4\"],\"buttonCode\":[\"4\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154092169232384', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:29:35', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154328803475456', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:30:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154329407455232', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:30:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154330040795136', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:30:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154330485391360', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:30:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154330917404672', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:30:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154331240366080', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:30:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154336357416960', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:30:33', 'GET', '{\"id\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154336806207488', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:30:33', 'POST', '{\"menuId\":[\"520751483449245697\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154351465299968', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:30:37', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154351817621504', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:30:37', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154361691013120', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:30:39', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154409619324928', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:30:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154410013589504', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:30:51', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154415097085952', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:30:52', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154415466184704', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:30:52', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154472546467840', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:31:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154472953315328', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:31:06', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154477223116800', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:31:07', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154477743210496', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:31:07', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154482881232896', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:31:08', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154568088518656', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/deleteButtonAction', '2019-03-01 21:31:28', 'POST', '超长文本参数', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154594026094592', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/deleteButtonAction', '2019-03-01 21:31:35', 'POST', '超长文本参数', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551154628859789312', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/deleteButtonAction', '2019-03-01 21:31:43', 'POST', '超长文本参数', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155314548801536', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:34:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155316419461120', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:34:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155318109765632', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:34:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155323688189952', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:34:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155326359961600', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 21:34:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155326515150848', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 21:34:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155331321823232', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:34:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155332789829632', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 21:34:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155332844355584', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 21:34:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155335763591168', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:34:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155336493400064', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:34:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155342461894656', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:34:33', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155343367864320', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:34:33', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155346601672704', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:34:34', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155369028616192', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/deleteButtonAction', '2019-03-01 21:34:39', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155485366026240', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:35:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155487463178240', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 21:35:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155487609978880', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 21:35:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155491481321472', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:35:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155492471177216', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:35:09', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155497940549632', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:35:10', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155498804576256', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:35:10', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155519205670912', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/deleteButtonAction', '2019-03-01 21:35:15', 'POST', '超长文本参数', 'ActiveRecordException: java.sql.SQLException: No value specified for parameter 1', NULL);
INSERT INTO `sys_visit_log` VALUES ('551155787930533888', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:36:19', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155788907806720', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:36:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155790182875136', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:36:20', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155791659270144', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:36:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155792464576512', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:36:20', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155797455798272', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:36:22', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155799020273664', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:36:22', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155810512666624', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/deleteButtonAction', '2019-03-01 21:36:25', 'POST', '超长文本参数', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155817835921408', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:36:26', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155868113043456', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:36:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155868767354880', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:36:39', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155869325197312', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:36:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155869534912512', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:36:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155870319247360', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:36:39', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155870415716352', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:36:39', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155870805786624', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 21:36:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155872307347456', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 21:36:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155879844511744', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:36:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155880314273792', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:36:41', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155881513844736', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:36:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155881836806144', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:36:42', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155901113827328', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:36:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155901831053312', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:36:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155912186789888', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:36:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155912526528512', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:36:49', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155912803352576', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:36:49', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155913965174784', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:36:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155914288136192', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:36:49', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155914569154560', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:36:50', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155915873583104', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:36:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155916397871104', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:36:50', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155916544671744', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:36:50', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155929987416064', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:36:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155930276823040', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:36:53', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155930549452800', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:36:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155932025847808', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:36:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155932529164288', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:36:54', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155932659187712', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:36:54', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155944864612352', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:36:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155945158213632', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:36:57', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155946970152960', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:36:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155947402166272', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:36:57', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155948857589760', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:36:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155949172162560', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:36:58', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155950363344896', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:36:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155950837301248', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:36:58', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155951806185472', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:36:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155952070426624', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:36:58', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155957887926272', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:37:00', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155958223470592', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:37:00', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155964393291776', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:37:01', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551155978859446272', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:37:05', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156061420126208', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/addButtonAction', '2019-03-01 21:37:25', 'POST', '{\"id\":[\"\"],\"sysMenuId\":[\"520751411466600448\"],\"buttonTxt\":[\"增加\"],\"buttonCode\":[\"sysMenu:add\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156068718215168', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:37:26', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156161034846208', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:37:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156161550745600', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:37:48', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156166219005952', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:37:50', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156166743293952', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:37:50', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156172791480320', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:37:51', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156321907376128', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/addButtonAction', '2019-03-01 21:38:27', 'POST', '{\"id\":[\"\"],\"sysMenuId\":[\"520751411466600448\"],\"buttonTxt\":[\"编辑\"],\"buttonCode\":[\"sysMenu:update\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156329222242304', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:38:28', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156351359778816', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:38:34', 'GET', '{\"id\":[\"551156061378183168\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156364928352256', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/updateButtonAction', '2019-03-01 21:38:37', 'POST', '超长文本参数', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156372255801344', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:38:39', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156395022483456', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:38:44', 'GET', '{\"id\":[\"551156321852850176\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156522164420608', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/updateButtonAction', '2019-03-01 21:39:14', 'POST', '超长文本参数', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156529500258304', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:39:16', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156586307911680', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:39:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156586681204736', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:39:30', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156593987682304', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:39:32', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156594360975360', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:39:32', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156620600541184', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:39:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156620906725376', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:39:38', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156621217103872', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:39:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156622714470400', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:39:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156623326838784', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:39:38', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156623465250816', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:39:39', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156624815816704', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:39:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156625386242048', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:39:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156636010414080', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:39:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551156636287238144', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:39:42', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157055122046976', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:41:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157055784747008', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:41:22', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157056929792000', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:41:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157057235976192', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:41:22', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157059895164928', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:41:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157060209737728', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:41:23', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157061677744128', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:41:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157062101368832', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:41:23', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157104455450624', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:41:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157104887463936', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:41:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157106560991232', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:41:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157106888146944', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:41:34', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157447964753920', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:42:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157448455487488', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:42:55', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157451261476864', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:42:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157451567661056', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:42:56', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157453396377600', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:42:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157453702561792', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:42:56', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157454264598528', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:42:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157454579171328', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:42:57', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157475810738176', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:43:02', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157476154671104', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:43:02', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157485247922176', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:43:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157485730267136', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:43:04', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157486778843136', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:43:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157487194079232', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:43:04', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157488121020416', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:43:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157488443981824', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:43:05', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157495372972032', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:43:06', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157495687544832', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:43:06', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157510136922112', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:43:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157510753484800', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 21:43:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157510799622144', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 21:43:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157511026114560', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:43:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157511441350656', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 21:43:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157511483293696', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 21:43:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157511932084224', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:43:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157512271822848', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 21:43:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157512309571584', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 21:43:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157515086200832', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:43:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157515329470464', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:43:11', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157552990126080', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:43:20', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157553443110912', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:43:20', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157578764124160', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:43:26', 'GET', '{\"id\":[\"520751187331383297\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157579137417216', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:43:26', 'POST', '{\"menuId\":[\"520751187331383297\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157596770271232', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:43:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157597105815552', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:43:31', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157597407805440', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:43:31', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157598049533952', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:43:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157598569627648', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:43:31', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157598687068160', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:43:31', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157603166584832', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:43:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157603481157632', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:43:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157610158489600', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:43:34', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157610473062400', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:43:34', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157629192241152', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:43:38', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157659970043904', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:43:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157660410445824', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:43:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157661303832576', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:43:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157661735845888', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:43:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157662549540864', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:43:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157662838947840', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:43:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157668702584832', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:43:48', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157669025546240', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:43:48', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157733705908224', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:44:03', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157734121144320', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:44:03', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157734473465856', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:44:03', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157735945666560', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:44:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157736268627968', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:44:04', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157738047012864', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:44:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157738357391360', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:44:04', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157738923622400', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:44:04', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157740181913600', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:44:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157740509069312', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:44:05', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157740806864896', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:44:05', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157741423427584', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:44:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157741943521280', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:44:05', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157742073544704', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:44:05', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157746158796800', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:44:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157746674696192', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:44:06', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157754148945920', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:44:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157754488684544', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:44:08', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157754769702912', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:44:08', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157755549843456', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:44:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157755910553600', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:44:09', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157756212543488', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:44:09', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157761774190592', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/userNotice', '2019-03-01 21:44:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157762562719744', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeData', '2019-03-01 21:44:10', 'POST', '{\"page\":[\"1\"],\"rows\":[\"20\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157775363735552', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/themeList', '2019-03-01 21:44:13', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157780724056064', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/themeSet', '2019-03-01 21:44:14', 'POST', '{\"colorName\":[\"green\"],\"color\":[\"#40b370\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157788055699456', 'admin', '0:0:0:0:0:0:0:1', '/dashboard', '2019-03-01 21:44:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157788970057728', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/menuTree', '2019-03-01 21:44:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157789062332416', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/noticeUnreadCount', '2019-03-01 21:44:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157794632368128', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:44:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157795144073216', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:44:18', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157795257319424', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:44:18', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157798692454400', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 21:44:19', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157799053164544', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 21:44:19', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157803847254016', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:44:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157804170215424', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:44:20', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157804455428096', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:44:20', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157805592084480', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:44:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157806099595264', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:44:20', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157806208647168', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:44:21', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157807588573184', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:44:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157808146415616', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:44:21', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157812172947456', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:44:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157812709818368', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:44:22', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157813880029184', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 21:44:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157814383345664', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 21:44:22', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157816455331840', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 21:44:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157816820236288', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 21:44:23', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157818917388288', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:44:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157819236155392', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:44:24', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157819500396544', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:44:24', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157823807946752', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:44:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157824290291712', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:44:25', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157824395149312', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:44:25', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157830082625536', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:44:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157830493667328', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:44:26', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157836579602432', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:44:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157837066141696', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:44:28', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157837170999296', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:44:28', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157839880519680', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:44:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157840400613376', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:44:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157851943337984', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:44:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157852245327872', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:44:31', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157856385105920', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:44:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157856779370496', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:44:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157859602137088', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:44:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157859895738368', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:44:33', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157860256448512', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:44:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157861443436544', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-01 21:44:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157861820923904', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-01 21:44:34', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157862076776448', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-01 21:44:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157863968407552', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:44:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157864215871488', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:44:34', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157864547221504', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:44:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157865088286720', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:44:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157865444802560', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:44:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157868473090048', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:44:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157868783468544', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:44:35', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157883211874304', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:44:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157883488698368', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:44:39', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157883811659776', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:44:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157885887840256', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:44:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157886152081408', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:44:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157888911933440', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:44:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157889419444224', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:44:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157915709341696', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:44:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157916162326528', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:44:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157918611800064', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:44:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157918888624128', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:44:47', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157931303763968', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:44:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157931609948160', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:44:50', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157939470073856', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-03-01 21:44:52', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157939910475776', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-03-01 21:44:52', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157971162234880', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:45:00', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551157971531333632', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:45:00', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158046504517632', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:45:18', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158058022076416', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:45:21', 'GET', '{\"id\":[\"551156321852850176\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158066679119872', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:45:23', 'GET', '{\"id\":[\"551156061378183168\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158089538076672', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-03-01 21:45:28', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158089898786816', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-03-01 21:45:28', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158113407860736', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:45:34', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158113839874048', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:45:34', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158162766430208', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:45:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158163081003008', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:45:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158164213465088', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:45:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158164469317632', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:45:46', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158164817444864', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:45:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158165262041088', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:45:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158165664694272', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:45:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158166147039232', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:45:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158166423863296', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:45:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158167493410816', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:45:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158167908646912', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:45:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158169041108992', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:45:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158169330515968', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:45:47', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158170605584384', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:45:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158170911768576', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:45:47', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158171276673024', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:45:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158172283305984', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:45:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158172568518656', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:45:48', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158177370996736', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:45:49', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158177714929664', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:45:49', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158196304084992', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openMenuRole', '2019-03-01 21:45:54', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158196966785024', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryMenuRole', '2019-03-01 21:45:54', 'POST', '{\"search_EQ_a.sysMenuId\":[\"520751411466600448\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158209566474240', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-01 21:45:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158209914601472', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-01 21:45:57', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158210304671744', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-01 21:45:57', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158210996731904', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:45:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158211298721792', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:45:57', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158211634266112', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:45:57', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158212158554112', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:45:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158212590567424', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:45:57', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158213429428224', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:45:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158213727223808', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:45:58', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158214926794752', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:45:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158215199424512', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:45:58', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158215493025792', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:45:58', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158216793260032', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:45:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158217174941696', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:45:58', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158218173186048', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:45:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158218496147456', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:45:59', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158220027068416', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:45:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158220400361472', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:45:59', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158221595738112', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:46:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158221855784960', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:46:00', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158222174552064', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:46:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158223021801472', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-01 21:46:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158223307014144', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-01 21:46:00', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158223579643904', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-01 21:46:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158228176601088', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:46:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158228663140352', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:46:01', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158228780580864', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:46:01', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158230726737920', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:46:02', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158231074865152', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:46:02', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158231347494912', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:46:02', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158234275119104', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:46:03', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158234799407104', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:46:03', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158239232786432', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:46:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158239958401024', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:46:04', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158240067452928', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:46:04', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158242802139136', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:46:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158243150266368', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:46:05', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158243427090432', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:46:05', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158244739907584', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:46:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158245205475328', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:46:05', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158245318721536', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:46:05', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158248657387520', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 21:46:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158249030680576', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 21:46:06', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158251874418688', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:46:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158252407095296', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:46:07', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158260091060224', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:46:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158260611153920', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:46:09', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158260720205824', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:46:09', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158266130857984', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:46:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158266588037120', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:46:10', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158266697089024', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:46:10', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158273496055808', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:46:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158274196504576', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:46:12', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158274313945088', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:46:12', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158287786049536', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:46:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158288088039424', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:46:15', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158288759128064', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:46:16', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158289501519872', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:46:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158289988059136', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:46:16', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158290105499648', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:46:16', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158294203334656', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:46:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158294543073280', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:46:17', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158294803120128', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:46:17', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158427477344256', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:46:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158428014215168', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:46:49', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158428131655680', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:46:49', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158435643654144', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:46:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158436004364288', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:46:51', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158436302159872', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:46:51', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158436587372544', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:46:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158437031968768', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:46:51', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158437161992192', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:46:51', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158440324497408', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 21:46:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158440760705024', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 21:46:52', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158444766265344', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:46:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158445290553344', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:46:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158446553038848', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:46:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158446888583168', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:46:53', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158447161212928', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:46:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158447668723712', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:46:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158448205594624', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:46:54', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158448352395264', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:46:54', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158452290846720', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:46:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158452810940416', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:46:55', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158530002911232', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:47:13', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158530472673280', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:47:13', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158531663855616', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:47:13', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158532116840448', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:47:14', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158535904296960', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:47:14', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158536478916608', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:47:15', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158537972088832', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:47:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158538357964800', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:47:15', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158538643177472', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:47:15', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158550026518528', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:47:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158550559195136', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:47:18', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158562601041920', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:47:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158562898837504', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:47:21', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158563326656512', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:47:21', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158564551393280', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:47:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158565063098368', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:47:21', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158565172150272', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:47:21', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158602329489408', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:47:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158602660839424', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:47:30', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158602941857792', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:47:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158604485361664', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:47:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158605160644608', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:47:31', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158605382942720', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:47:31', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158605978533888', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 21:47:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158606595096576', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 21:47:31', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158606960001024', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:47:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158607467511808', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:47:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158607933079552', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:47:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158608222486528', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:47:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158608516087808', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:47:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158611829587968', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:47:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158612110606336', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:47:33', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158624378945536', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:47:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158624785793024', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:47:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158626912305152', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:47:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158627247849472', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:47:36', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158637557448704', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:47:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158637989462016', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:47:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158639109341184', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:47:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158639373582336', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:47:39', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158639683960832', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:47:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158641915330560', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:47:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158642200543232', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:47:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158658226978816', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:47:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158658654797824', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:47:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158660462542848', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:47:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158660722589696', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:47:44', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158665306963968', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:47:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158665814474752', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:47:45', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158665927720960', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:47:45', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158676602224640', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:47:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158677009072128', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:47:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158683090812928', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:47:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158683346665472', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:47:50', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158947722035200', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:48:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158948011442176', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:48:53', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158948372152320', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:48:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158949420728320', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:48:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158949705940992', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:48:53', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158962582454272', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:48:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158963043827712', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:48:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158964373422080', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:48:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158964750909440', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:48:57', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158971692482560', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:48:58', 'GET', '{\"id\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158972019638272', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:48:58', 'POST', '{\"menuId\":[\"520751881509666817\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158990919172096', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:49:03', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158991598649344', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:49:03', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158993586749440', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:49:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158993968431104', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:49:04', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158995134447616', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:49:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158995415465984', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:49:04', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158995730038784', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:49:04', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158996392738816', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:49:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158996954775552', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:49:04', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158997063827456', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:49:04', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158998502473728', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:49:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551158999093870592', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:49:05', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159003598553088', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:49:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159003959263232', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:49:06', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159004252864512', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:49:06', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159005116891136', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:49:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159005699899392', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:49:06', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159010015838208', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:49:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159010477211648', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:49:08', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159010586263552', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:49:08', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159014105284608', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 21:49:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159014516326400', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 21:49:09', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159020275105792', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 21:49:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159020619038720', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 21:49:10', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159024758816768', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:49:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159025325047808', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:49:11', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159036754526208', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:49:14', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159037085876224', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:49:14', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159037371088896', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:49:14', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159048800567296', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:49:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159049312272384', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:49:17', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159049429712896', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:49:17', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159050662838272', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:49:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159050964828160', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:49:17', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159051354898432', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:49:17', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159052206342144', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:49:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159052705464320', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:49:18', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159070573199360', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:49:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159071168790528', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:49:22', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159071537889280', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:49:22', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159072062177280', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:49:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159072544522240', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:49:22', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159072661962752', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:49:22', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159076684300288', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:49:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159077196005376', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:49:24', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159080450785280', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 21:49:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159080886992896', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 21:49:24', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159082719903744', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:49:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159083281940480', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:49:25', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159085152600064', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:49:25', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159085685276672', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:49:26', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159085806911488', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:49:26', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159096431083520', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:49:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159096733073408', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:49:28', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159097139920896', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:49:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159098159136768', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:49:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159098456932352', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:49:29', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159101401333760', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-01 21:49:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159101703323648', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-01 21:49:29', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159101992730624', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-01 21:49:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159102747705344', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:49:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159102957420544', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:49:30', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159103259410432', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:49:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159103792087040', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:49:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159104186351616', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:49:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159105746632704', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:49:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159106027651072', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:49:30', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159107571154944', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:49:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159107965419520', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:49:31', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159108414210048', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:49:31', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159109202739200', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:49:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159109609586688', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:49:31', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159110624608256', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:49:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159110888849408', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:49:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159112780480512', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:49:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159113246048256', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:49:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159114303012864', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:49:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159114739220480', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:49:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159115682938880', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:49:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159115934597120', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:49:33', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159116270141440', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:49:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159117134168064', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-01 21:49:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159117444546560', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-01 21:49:33', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159117725564928', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-01 21:49:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159120082763776', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:49:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159120380559360', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:49:34', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159120653189120', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:49:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159122830032896', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:49:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159123320766464', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:49:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159123446595584', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:49:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159127733174272', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:49:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159128450400256', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:49:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159129649971200', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 21:49:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159130002292736', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 21:49:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159132380463104', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 21:49:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159132808282112', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 21:49:37', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159134297260032', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-03-01 21:49:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159134846713856', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-03-01 21:49:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159139233955840', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:49:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159139720495104', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:49:38', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159139842129920', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:49:38', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159172738056192', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-01 21:49:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159173010685952', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-01 21:49:46', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159173354618880', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-01 21:49:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159175133003776', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:49:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159175434993664', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:49:47', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159177934798848', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:49:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159178253565952', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:49:48', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159178522001408', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:49:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159180669485056', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:49:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159181319602176', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:49:48', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159181487374336', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:49:48', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159187338428416', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:49:50', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159187862716416', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:49:50', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159219085115392', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:49:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159219420659712', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:49:57', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159219705872384', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:49:58', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159220448264192', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:49:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159220947386368', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:49:58', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159221060632576', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:49:58', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159234998304768', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 21:50:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159235338043392', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 21:50:01', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159239180025856', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:50:02', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159239733673984', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:50:02', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159240878718976', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:50:03', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159241205874688', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:50:03', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159241478504448', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:50:03', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159245530202112', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:50:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159245974798336', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:50:04', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159246318731264', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:50:04', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159247472164864', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:50:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159247988064256', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:50:04', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159248118087680', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:50:04', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159250722750464', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 21:50:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159251075072000', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 21:50:05', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159253872672768', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-03-01 21:50:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159254350823424', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-03-01 21:50:06', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159273975971840', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:50:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159274705780736', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:50:11', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159274839998464', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:50:11', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159278883307520', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:50:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159279424372736', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:50:12', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159293571760128', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:50:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159293890527232', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:50:15', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159295836684288', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:50:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159296243531776', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:50:16', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159297854144512', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-01 21:50:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159298235826176', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-01 21:50:16', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159298827223040', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-01 21:50:16', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159300878237696', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:50:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159301184421888', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:50:17', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159301553520640', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:50:17', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159313381457920', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:50:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159313729585152', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:50:20', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159314018992128', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:50:20', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159315717685248', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:50:20', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159316241973248', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:50:21', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159316355219456', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:50:21', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159325029040128', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:50:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159325314252800', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:50:23', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159330531966976', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:50:24', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159330871705600', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:50:24', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159532483510272', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:51:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159532949078016', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:51:12', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159533083295744', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:51:12', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159535906062336', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:51:13', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159536279355392', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:51:13', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159536711368704', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:51:13', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159538514919424', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:51:14', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159539030818816', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:51:14', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159544982536192', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:51:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159545301303296', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:51:15', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159545590710272', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:51:15', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159546026917888', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:51:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159546555400192', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:51:15', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159546677035008', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:51:15', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159547247460352', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 21:51:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159547574616064', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 21:51:16', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159549604659200', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:51:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159550305107968', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:51:16', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159558379143168', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/userInfo', '2019-03-01 21:51:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159570538430464', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:51:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159571071107072', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:51:21', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159571180158976', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:51:21', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159698938658816', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:51:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159699488112640', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:51:52', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159701904031744', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:51:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159702264741888', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:51:53', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159910029590528', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:52:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159910318997504', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:52:42', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159910646153216', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:52:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159911556317184', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:52:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159912084799488', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:52:43', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159912755888128', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:52:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159913070460928', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:52:43', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159930577485824', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:52:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159930816561152', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:52:47', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159931131133952', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:52:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159931995160576', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:52:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159932393619456', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:52:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159933165371392', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:52:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159933458972672', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:52:48', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159953017012224', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:52:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159953394499584', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:52:52', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159954266914816', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:52:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159954669568000', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:52:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159955193856000', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:52:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159955512623104', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:52:53', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159956603142144', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-01 21:52:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159956926103552', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-01 21:52:53', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159957261647872', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-01 21:52:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159959119724544', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:52:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159959459463168', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:52:54', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159959757258752', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:52:54', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159965033693184', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:52:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159965729947648', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:52:55', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159967525109760', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:52:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159967831293952', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:52:56', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159968103923712', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:52:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159968624017408', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:52:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159969144111104', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:52:56', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159969257357312', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:52:56', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159971711025152', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:52:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551159972277256192', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:52:57', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160072030388224', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:53:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160072357543936', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:53:21', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160076988055552', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:53:22', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160077319405568', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:53:22', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160247150968832', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:54:02', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160247591370752', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:54:03', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160335881469952', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:54:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160336187654144', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:54:24', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160338066702336', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:54:24', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160338377080832', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:54:24', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160435676545024', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:54:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160436381188096', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:54:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160437136162816', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:54:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160437492678656', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:54:48', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160440160256000', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:54:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160440751652864', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:54:49', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160443763163136', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:54:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160444014821376', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:54:49', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160459160453120', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:54:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160459563106304', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:54:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160461177913344', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:54:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160461463126016', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:54:54', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160462754971648', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:54:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160463027601408', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:54:54', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160463329591296', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:54:54', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160464726294528', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:54:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160465095393280', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:54:54', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160468484390912', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:54:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160468777992192', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:54:55', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160470522822656', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-01 21:54:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160470854172672', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-01 21:54:56', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160471147773952', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-01 21:54:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160473001656320', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:54:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160473416892416', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:54:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160480027115520', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:54:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160480522043392', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:54:58', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160480639483904', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:54:58', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160868063150080', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:56:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160868977508352', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:56:31', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160869556322304', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:56:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160869816369152', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:56:31', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160873750626304', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:56:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160874081976320', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:56:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160874371383296', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:56:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160881178738688', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:56:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160881979850752', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:56:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160884597096448', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:56:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160884848754688', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:56:35', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160885108801536', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:56:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160887109484544', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:56:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160887436640256', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:56:35', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160887709270016', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:56:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160896529891328', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:56:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160897104510976', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:56:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160903790231552', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:56:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160904415182848', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:56:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160909423181824', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 21:56:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160909771309056', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 21:56:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160928545013760', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:56:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160928847003648', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:56:45', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160929115439104', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:56:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160930335981568', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:56:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160930877046784', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:56:45', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160930986098688', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:56:46', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160932705763328', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:56:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160933410406400', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:56:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160936820375552', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:56:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160937348857856', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:56:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160940255510528', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:56:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160940620414976', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:56:48', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160940901433344', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:56:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160956290334720', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:56:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160956785262592', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:56:52', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160956898508800', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:56:52', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160971951865856', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:56:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160972492931072', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:56:55', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160973675724800', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:56:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160974288093184', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:56:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160975194062848', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 21:56:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160975609298944', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 21:56:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160976863395840', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 21:56:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160977270243328', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 21:56:57', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160978373345280', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-03-01 21:56:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160978834718720', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-03-01 21:56:57', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160981938503680', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:56:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160982496346112', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:56:58', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160982626369536', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:56:58', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160988531949568', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:56:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160988884271104', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:56:59', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551160989177872384', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:56:59', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161003572723712', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:57:03', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161003895685120', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:57:03', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161009360863232', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/openButton', '2019-03-01 21:57:04', 'GET', '{\"id\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161009688018944', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/queryButton', '2019-03-01 21:57:04', 'POST', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161017187434496', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:57:06', 'GET', '{\"menuId\":[\"520751411466600448\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161030189776896', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/newButtonModel', '2019-03-01 21:57:09', 'GET', '{\"id\":[\"551156061378183168\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161154576056320', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:57:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161154999681024', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:57:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161156710957056', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:57:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161157008752640', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:57:39', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161158493536256', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:57:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161158950715392', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:57:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161160733294592', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:57:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161160989147136', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:57:40', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161161563766784', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:57:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161162431987712', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-01 21:57:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161162759143424', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-01 21:57:41', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161163077910528', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-01 21:57:41', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161165388972032', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 21:57:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161165716127744', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 21:57:41', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161166290747392', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 21:57:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161167637118976', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:57:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161167876194304', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:57:42', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161172565426176', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:57:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161173051965440', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:57:43', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161173152628736', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:57:43', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161174951985152', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:57:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161175283335168', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:57:44', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161175568547840', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:57:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161178903019520', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:57:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161179481833472', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:57:45', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161179611856896', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:57:45', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161180803039232', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:57:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161181105029120', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:57:45', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161181369270272', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:57:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161188919017472', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:57:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161189468471296', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:57:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161354614996992', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:58:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161355307057152', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:58:27', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161356204638208', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:58:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161356485656576', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:58:27', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161362122801152', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:58:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161362630311936', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:58:28', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161362739363840', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:58:28', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161367223074816', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:58:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161367772528640', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:58:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161373153820672', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:58:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161373598416896', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:58:31', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161373707468800', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:58:31', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161375112560640', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:58:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161375406161920', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:58:31', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161375670403072', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:58:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161378866462720', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:58:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161379382362112', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:58:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161380430938112', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 21:58:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161380779065344', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 21:58:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161382003802112', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 21:58:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161382406455296', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 21:58:33', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161383547305984', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-03-01 21:58:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161383975124992', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-03-01 21:58:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161385711566848', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 21:58:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161386093248512', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 21:58:34', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161386877583360', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 21:58:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161387259265024', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 21:58:34', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161388018434048', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 21:58:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161388333006848', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 21:58:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161389499023360', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:58:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161389972979712', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 21:58:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161391759753216', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:58:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161392070131712', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:58:35', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161392338567168', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:58:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161394297307136', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:58:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161394792235008', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:58:36', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161394918064128', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:58:36', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161404967616512', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 21:58:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161405282189312', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 21:58:39', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161407635193856', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:58:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161408063012864', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:58:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161413633048576', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:58:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161414388023296', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:58:41', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161414522241024', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:58:41', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161733981405184', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:59:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161734597967872', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:59:57', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161737055830016', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 21:59:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161737462677504', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 21:59:58', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161739870208000', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 21:59:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161740272861184', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 21:59:58', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161740574851072', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 21:59:59', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161741422100480', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 21:59:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161741975748608', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 21:59:59', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161742093189120', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 21:59:59', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161744521691136', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 21:59:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161745075339264', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:00:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161751773642752', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:00:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161752251793408', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:00:01', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161752373428224', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:00:01', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161753556221952', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:00:02', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161754432831488', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:00:02', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161757389815808', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 22:00:03', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161757842800640', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 22:00:03', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161758996234240', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 22:00:03', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161759373721600', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 22:00:03', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161760082558976', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 22:00:03', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161760422297600', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 22:00:03', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161761177272320', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:00:03', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161761693171712', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:00:04', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161762196488192', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:00:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161762754330624', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:00:04', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161765614845952', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:00:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161766143328256', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:00:05', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161766290128896', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:00:05', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161768177565696', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 22:00:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161768538275840', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 22:00:05', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161773600800768', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:00:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161774133477376', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:00:07', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161792148013056', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:00:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161792533889024', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:00:11', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161792810713088', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:00:11', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161794282913792', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:00:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161794815590400', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:00:11', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161794928836608', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:00:12', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161797239898112', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:00:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161797764186112', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:00:12', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161834510483456', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:00:21', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161835156406272', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:00:21', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161835261263872', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:00:21', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161838767702016', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:00:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161839107440640', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:00:22', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161839396847616', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:00:22', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161842429329408', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:00:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161842928451584', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:00:23', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161843045892096', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:00:23', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161844807499776', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:00:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161845151432704', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:00:23', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551161845432451072', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:00:24', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162064870047744', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 22:01:16', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162065255923712', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 22:01:16', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162163813679104', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:01:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162164321189888', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:01:40', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162164434436096', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:01:40', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162166653222912', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:01:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162166963601408', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:01:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162167236231168', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:01:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162171694776320', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:01:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162172223258624', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:01:41', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162176404979712', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:01:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162176753106944', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:01:43', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162177017348096', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:01:43', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162178263056384', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 22:01:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162178606989312', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 22:01:43', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162180607672320', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:01:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162181131960320', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:01:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162183170392064', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:01:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162183472381952', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:01:44', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162183753400320', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:01:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162185070411776', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:01:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162185628254208', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:01:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162187691851776', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 22:01:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162188081922048', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 22:01:45', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162190455898112', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 22:01:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162190795636736', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 22:01:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162192167174144', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:01:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162192708239360', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:01:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162294529163264', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 22:02:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162294894067712', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 22:02:11', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162297012191232', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 22:02:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162297440010240', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 22:02:11', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162298736050176', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 22:02:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162299381972992', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 22:02:12', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162300283748352', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-03-01 22:02:12', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162300728344576', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-03-01 22:02:12', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162303072960512', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:02:13', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162303886655488', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:02:13', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162303999901696', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:02:13', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162319455911936', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:02:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162319976005632', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:02:17', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162320085057536', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:02:17', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162321301405696', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:02:17', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162321662115840', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:02:17', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162321951522816', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:02:17', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162869429829632', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:04:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162869815705600', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:04:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162870147055616', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:04:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162871044636672', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:04:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162871405346816', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:04:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162871694753792', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:04:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162874991476736', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:04:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162875574484992', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:04:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162877885546496', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 22:04:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162878216896512', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 22:04:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162882390228992', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:04:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162882725773312', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:04:31', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162883002597376', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:04:31', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162884713873408', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:04:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162885384962048', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:04:31', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162885762449408', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:04:32', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162887897350144', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:04:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162888421638144', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:04:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162889575071744', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 22:04:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162889944170496', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 22:04:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162892045516800', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:04:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162892569804800', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:04:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162895451291648', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:04:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162895962996736', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:04:34', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162896067854336', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:04:34', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162898081120256', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:04:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162898425053184', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:04:35', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162898722848768', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:04:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162900224409600', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:04:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162900752891904', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:04:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162903328194560', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 22:04:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162903676321792', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 22:04:36', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162905635061760', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 22:04:36', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162906025132032', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 22:04:36', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162908436856832', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:04:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162909032448000', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:04:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162910211047424', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:04:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162910521425920', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:04:37', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551162910798249984', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:04:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163125328510976', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:05:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163126154788864', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:05:29', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163126309978112', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:05:29', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163127039787008', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:05:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163127392108544', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:05:29', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163127698292736', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:05:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163128545542144', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:05:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163129107578880', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:05:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163133603872768', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:05:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163133901668352', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:05:31', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163134384013312', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:05:31', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163135336120320', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:05:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163135872991232', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:05:31', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163137810759680', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:05:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163138309881856', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:05:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163139387817984', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:05:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163139714973696', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:05:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163140008574976', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:05:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163140671275008', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:05:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163140964876288', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:05:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163141258477568', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:05:32', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163142143475712', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:05:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163142592266240', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:05:33', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163142713901056', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:05:33', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163143984775168', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:05:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163144295153664', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:05:33', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163144609726464', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:05:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163147482824704', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:05:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163147994529792', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:05:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163150913765376', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:05:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163151400304640', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:05:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163151509356544', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:05:35', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163249953865728', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:05:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163250419433472', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:05:59', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163250532679680', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:05:59', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163251660947456', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:05:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163251941965824', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:05:59', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163252222984192', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:05:59', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163258149535744', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:06:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163258682212352', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:06:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163262972985344', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:06:02', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163263451136000', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:06:02', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163263631491072', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:06:02', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163420326494208', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:06:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163421026942976', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:06:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163422503337984', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 22:06:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163422876631040', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 22:06:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163425179303936', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:06:40', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163425472905216', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:06:40', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163425770700800', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:06:40', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163426735390720', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:06:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163427234512896', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:06:41', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163427356147712', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:06:41', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163428576690176', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:06:41', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163428933206016', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:06:41', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163429222612992', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:06:41', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163432984903680', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 22:06:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163433291087872', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 22:06:42', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163433760849920', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 22:06:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163434935255040', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 22:06:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163435245633536', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 22:06:43', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163438332641280', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 22:06:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163438701740032', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 22:06:43', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163440534650880', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 22:06:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163440832446464', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 22:06:44', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163441121853440', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 22:06:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163442514362368', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-01 22:06:44', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163442845712384', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-01 22:06:44', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163443160285184', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-01 22:06:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163445316157440', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:06:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163445643313152', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:06:45', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163445928525824', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:06:45', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163446901604352', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:06:45', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163447367172096', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:06:45', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163447476224000', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:06:46', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163450798112768', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:06:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163451339177984', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:06:46', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163452169650176', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:06:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163452463251456', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:06:47', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163452731686912', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:06:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163453633462272', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:06:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163454111612928', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:06:47', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163454229053440', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:06:47', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163456305233920', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:06:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163456837910528', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:06:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163459123806208', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 22:06:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163459547430912', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 22:06:48', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163460747001856', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 22:06:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163461103517696', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 22:06:49', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163461694914560', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:06:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163462185648128', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:06:49', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163476270120960', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 22:06:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163476668579840', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 22:06:52', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163477868150784', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 22:06:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163478170140672', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 22:06:53', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163479369711616', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 22:06:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163479877222400', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 22:06:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163480825135104', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-01 22:06:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163481106153472', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-01 22:06:54', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163481412337664', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-01 22:06:54', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163482431553536', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:06:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163482741932032', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:06:54', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163483001978880', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:06:54', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163484537094144', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:06:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163485048799232', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:06:54', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163485174628352', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:06:54', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163487338889216', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:06:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163487871565824', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:06:55', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163492506271744', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:06:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163492825038848', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:06:56', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163493236080640', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:06:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163493655511040', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:06:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163494116884480', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:06:57', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163494255296512', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:06:57', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163497128394752', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 22:06:57', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163497480716288', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 22:06:57', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163499988910080', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 22:06:58', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163500496420864', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 22:06:58', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163502031536128', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType', '2019-03-01 22:06:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163502505492480', 'admin', '0:0:0:0:0:0:0:1', '/sysNoticeType/query', '2019-03-01 22:06:59', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163504061579264', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-01 22:06:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163504443260928', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-01 22:06:59', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163505852547072', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:06:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163506402000896', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:07:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163509094744064', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:07:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163509627420672', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:07:00', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163509740666880', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:07:00', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163521660878848', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:07:03', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163521933508608', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:07:03', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163522201944064', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:07:03', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163523401515008', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:07:04', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163523980328960', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:07:04', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163524097769472', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:07:04', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163531538464768', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:07:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163531983060992', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:07:06', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163532360548352', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:07:06', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163535183314944', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:07:06', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163535514664960', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:07:06', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163535795683328', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:07:07', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163536454189056', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:07:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163536890396672', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:07:07', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163537007837184', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:07:07', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163539780272128', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:07:08', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163540254228480', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:07:08', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163540598161408', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:07:08', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163544469504000', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:07:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163544993792000', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:07:09', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163585192001536', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:07:18', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163585963753472', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:07:19', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163586089582592', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:07:19', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163600723509248', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:07:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163601243602944', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:07:22', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163602275401728', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:07:22', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163602858409984', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:07:23', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163604536131584', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:07:23', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163604989116416', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:07:23', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163605098168320', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:07:23', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163620608704512', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:07:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163621099438080', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:07:27', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163621212684288', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:07:27', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163622605193216', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:07:27', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163622911377408', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:07:27', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163623242727424', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:07:27', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163624375189504', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:07:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551163624903671808', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:07:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164006996377600', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:08:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164007466139648', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:08:59', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164007608745984', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:08:59', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164009437462528', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:08:59', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164009982722048', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:09:00', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164010100162560', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:09:00', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164011488477184', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:09:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164011882741760', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:09:00', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164012176343040', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:09:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164012943900672', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:09:00', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164013514326016', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:09:00', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164014130888704', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:09:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164014437072896', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:09:01', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164014726479872', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:09:01', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164015028469760', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:09:01', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164015510814720', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:09:01', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164015645032448', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:09:01', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164031096848384', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-03-01 22:09:05', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164031528861696', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-03-01 22:09:05', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164040336900096', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/newModel', '2019-03-01 22:09:07', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164051250479104', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-03-01 22:09:09', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164051640549376', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-03-01 22:09:10', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164052701708288', 'admin', '0:0:0:0:0:0:0:1', '/exStaff', '2019-03-01 22:09:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164053163081728', 'admin', '0:0:0:0:0:0:0:1', '/exStaff/query', '2019-03-01 22:09:10', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164054681419776', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:09:10', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164055285399552', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:09:10', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164057198002176', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:09:11', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164057713901568', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:09:11', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164057827147776', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:09:11', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164073102802944', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:09:15', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164073601925120', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:09:15', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164073710977024', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:09:15', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164417580990464', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 22:10:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164418147221504', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 22:10:37', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164419023831040', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 22:10:37', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164419350986752', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 22:10:37', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164423633371136', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable', '2019-03-01 22:10:38', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164424069578752', 'admin', '0:0:0:0:0:0:0:1', '/exSingleTable/query', '2019-03-01 22:10:38', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164425218818048', 'admin', '0:0:0:0:0:0:0:1', '/exStaff', '2019-03-01 22:10:39', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164425642442752', 'admin', '0:0:0:0:0:0:0:1', '/exStaff/query', '2019-03-01 22:10:39', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164437805924352', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:10:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164438405709824', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:10:42', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164439072604160', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:10:42', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164439626252288', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:10:42', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164439764664320', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:10:42', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164442805534720', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:10:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164443128496128', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:10:43', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164443443068928', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:10:43', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164444038660096', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:10:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164444596502528', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:10:43', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164444730720256', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:10:43', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164445334700032', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:10:43', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164446018371584', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:10:44', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164457401712640', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:10:46', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164457926000640', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:10:46', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164458068606976', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:10:46', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164459255595008', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-01 22:10:47', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164459599527936', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-01 22:10:47', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164459947655168', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-01 22:10:47', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164463298904064', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-01 22:10:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164463873523712', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-01 22:10:48', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164464011935744', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-01 22:10:48', 'POST', '{\"search_IS_delFlag\":[\"null\"],\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164465358307328', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-01 22:10:48', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164465786126336', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-01 22:10:48', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164466708873216', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-01 22:10:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164466947948544', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-01 22:10:49', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164468382400512', 'admin', '0:0:0:0:0:0:0:1', '/sysUser', '2019-03-01 22:10:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164468688584704', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/orgComboTree', '2019-03-01 22:10:49', 'POST', '{\"withRoot\":[\"false\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164469414199296', 'admin', '0:0:0:0:0:0:0:1', '/sysUser/query', '2019-03-01 22:10:49', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164470739599360', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-01 22:10:49', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164471029006336', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-01 22:10:50', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164471465213952', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-01 22:10:50', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164476812951552', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 22:10:51', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164477177856000', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 22:10:51', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164479891570688', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:10:52', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164480461996032', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:10:52', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164483825827840', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock', '2019-03-01 22:10:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164484203315200', 'admin', '0:0:0:0:0:0:0:1', '/sysUserUnlock/query', '2019-03-01 22:10:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164486761840640', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:10:53', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164487332265984', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:10:53', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164488787689472', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:10:54', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164489404252160', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:10:54', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164492092801024', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-01 22:10:55', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('551164492663226368', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-01 22:10:55', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
