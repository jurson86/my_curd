/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : my_curd_pro

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 25/02/2019 12:47:03
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
INSERT INTO `sys_file` VALUES ('548554215404863488', 'upload/image/20190222/17183653766.jpg', 'timg.jpg', 'image/jpeg', 'jpg', 33809.000000000000000000000000000000, 'admin 头像2', NULL, 'admin', '2019-02-22 17:18:36', NULL, NULL);
INSERT INTO `sys_file` VALUES ('548554311571865600', 'upload/image/20190222/17185953577.jpg', '14027794.jpg', 'image/jpeg', 'jpg', 38717.000000000000000000000000000000, 'testtetet', NULL, 'admin', '2019-02-22 17:18:59', NULL, NULL);
INSERT INTO `sys_file` VALUES ('549346032505323520', 'upload/image/20190224/21450035520.jpg', 'MRV_20190224_13_09_35.jpg', 'image/jpeg', 'jpg', 167375.000000000000000000000000000000, 'test', NULL, 'admin', '2019-02-24 21:45:00', NULL, NULL);

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
INSERT INTO `sys_menu` VALUES ('520749715428474880', '权限管理', '/', 'iconfont icon-permission', 1, '0', 'debug', '2018-12-07 23:53:27', 'debug', '2018-12-10 18:51:00');
INSERT INTO `sys_menu` VALUES ('520750975204458496', '系统运维', '/', 'iconfont icon-operation', 3, '0', 'debug', '2018-12-07 23:58:27', 'zhangchuang', '2018-12-16 14:08:18');
INSERT INTO `sys_menu` VALUES ('520751187331383297', '配置文件', '/sysFile', 'iconfont icon-file', 1, '520750975204458496', 'debug', '2018-12-07 23:59:18', 'admin', '2019-02-22 17:52:36');
INSERT INTO `sys_menu` VALUES ('520751411466600448', '菜单管理', '/sysMenu', 'iconfont icon-menu', 1, '520749715428474880', 'debug', '2018-12-08 00:00:11', 'debug', '2018-12-10 18:52:08');
INSERT INTO `sys_menu` VALUES ('520751483449245697', '角色管理', '/sysRole', 'iconfont icon-role', 2, '520749715428474880', 'debug', '2018-12-08 00:00:28', 'debug', '2018-12-10 18:52:22');
INSERT INTO `sys_menu` VALUES ('520751566345469952', '机构管理', '/sysOrg', 'iconfont icon-org', 5, '520749715428474880', 'debug', '2018-12-08 00:00:48', 'zhangchuang', '2018-12-16 11:09:56');
INSERT INTO `sys_menu` VALUES ('520751881509666817', '用户管理', '/sysUser', 'iconfont icon-user', 4, '520749715428474880', 'debug', '2018-12-08 00:02:03', 'zhangchuang', '2018-12-16 11:08:39');
INSERT INTO `sys_menu` VALUES ('520752428128141312', '数据字典', '/sysDict', 'iconfont icon-dict', 1, '520750975204458496', 'debug', '2018-12-08 00:04:13', 'debug', '2018-12-10 19:03:56');
INSERT INTO `sys_menu` VALUES ('520752734161338369', 'durid监控', '/druidWeb', 'iconfont icon-database', 3, '520750975204458496', 'debug', '2018-12-08 00:05:26', 'admin', '2018-12-16 14:32:50');
INSERT INTO `sys_menu` VALUES ('520752809180659712', '访问日志', '/sysVisitLog', 'iconfont icon-visitLog', 4, '520750975204458496', 'debug', '2018-12-08 00:05:44', 'debug', '2018-12-10 19:04:31');
INSERT INTO `sys_menu` VALUES ('520752938604298240', '业务日志', '/sysServiceLog', 'iconfont icon-serviceLog', 5, '520750975204458496', 'debug', '2018-12-08 00:06:15', 'debug', '2018-12-10 19:05:01');
INSERT INTO `sys_menu` VALUES ('520753306482507776', '账号解锁', '/sysUserUnlock', 'iconfont icon-unlock', 6, '520750975204458496', 'debug', '2018-12-08 00:07:43', 'admin', '2018-12-16 14:33:01');
INSERT INTO `sys_menu` VALUES ('520753615527215104', '系统通知', '/', 'iconfont icon-notice', 2, '0', 'debug', '2018-12-08 00:08:57', 'zhangchuang', '2018-12-16 14:08:09');
INSERT INTO `sys_menu` VALUES ('520753742492991488', '通知类型', '/sysNoticeType', 'iconfont icon-noticeType', 1, '520753615527215104', 'debug', '2018-12-08 00:09:27', 'debug', '2018-12-10 19:06:54');
INSERT INTO `sys_menu` VALUES ('520754960745365504', '类型角色', '/sysNTRole', 'iconfont icon-typeRole', 2, '520753615527215104', 'debug', '2018-12-08 00:14:17', 'admin', '2018-12-21 23:00:30');
INSERT INTO `sys_menu` VALUES ('529975794877857792', '定时任务', '/sysTask', 'iconfont icon-task', 7, '520750975204458496', 'admin', '2019-01-02 10:54:35', NULL, NULL);
INSERT INTO `sys_menu` VALUES ('533964782852636672', '测试例子', '/', 'iconfont icon-gencode', 4, '0', 'admin', '2019-01-13 11:05:24', 'admin', '2019-02-24 10:18:04');
INSERT INTO `sys_menu` VALUES ('533964972439371776', '普通单表', '/exSingleTable', 'iconfont icon-gencode', 1, '533964782852636672', 'admin', '2019-01-13 11:06:10', NULL, NULL);
INSERT INTO `sys_menu` VALUES ('537980279722082304', '一对多表', '/exStaff', 'iconfont icon-gencode', 3, '533964782852636672', 'admin', '2019-01-24 13:01:33', 'admin', '2019-02-22 22:28:47');

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
INSERT INTO `sys_notice` VALUES ('542773813763375104', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-06 18:29:21 删除了 3 条 访问日志。', '2019-02-06 18:29:21', '2019-02-16 18:29:21', '2019-02-26 18:29:21');
INSERT INTO `sys_notice` VALUES ('543385838310916096', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-08 11:01:19 删除了 1 条 访问日志。', '2019-02-08 11:01:19', '2019-02-18 11:01:19', '2019-02-28 11:01:19');
INSERT INTO `sys_notice` VALUES ('543385864177188864', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-08 11:01:25 删除了 2 条 访问日志。', '2019-02-08 11:01:25', '2019-02-18 11:01:25', '2019-02-28 11:01:25');
INSERT INTO `sys_notice` VALUES ('543385893218549760', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-08 11:01:32 删除了 2 条 访问日志。', '2019-02-08 11:01:32', '2019-02-18 11:01:32', '2019-02-28 11:01:32');
INSERT INTO `sys_notice` VALUES ('543391888758013952', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-08 11:25:22 删除了 1 条 访问日志。', '2019-02-08 11:25:22', '2019-02-18 11:25:22', '2019-02-28 11:25:22');
INSERT INTO `sys_notice` VALUES ('543391915693834240', 'delVisitLog', '访问日志删除', 'admin 于 2019-02-08 11:25:28 删除了 2 条 访问日志。', '2019-02-08 11:25:28', '2019-02-18 11:25:28', '2019-02-28 11:25:28');
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
INSERT INTO `sys_notice_detail` VALUES ('542773813885009920', '542773813763375104', NULL, '522465144505106432', 'Y', '2019-02-18 08:47:10');
INSERT INTO `sys_notice_detail` VALUES ('543385838378024960', '543385838310916096', NULL, '522465144505106432', 'Y', '2019-02-08 11:23:13');
INSERT INTO `sys_notice_detail` VALUES ('543385864189771777', '543385864177188864', NULL, '522465144505106432', 'Y', '2019-02-18 08:47:10');
INSERT INTO `sys_notice_detail` VALUES ('543385893226938368', '543385893218549760', NULL, '522465144505106432', 'Y', '2019-02-08 11:23:28');
INSERT INTO `sys_notice_detail` VALUES ('543391888766402560', '543391888758013952', NULL, '522465144505106432', 'Y', '2019-02-18 08:47:10');
INSERT INTO `sys_notice_detail` VALUES ('543391915702222848', '543391915693834240', NULL, '522465144505106432', 'Y', '2019-02-18 08:47:10');
INSERT INTO `sys_notice_detail` VALUES ('546764251134427136', '546764251063123968', NULL, '522465144505106432', 'Y', '2019-02-18 08:47:10');
INSERT INTO `sys_notice_detail` VALUES ('546764251134427137', '546764251063123968', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('546764251134427138', '546764251063123968', NULL, '522465900809420800', 'Y', '2019-02-24 21:37:44');
INSERT INTO `sys_notice_detail` VALUES ('546976233427042304', '546976233372516352', NULL, '522465144505106432', 'Y', '2019-02-22 17:40:14');
INSERT INTO `sys_notice_detail` VALUES ('546976233427042305', '546976233372516352', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('546976233427042306', '546976233372516352', NULL, '522465900809420800', 'Y', '2019-02-24 21:37:44');
INSERT INTO `sys_notice_detail` VALUES ('546976272098525184', '546976272090136576', NULL, '522465900809420800', 'Y', '2019-02-24 21:37:44');
INSERT INTO `sys_notice_detail` VALUES ('546976272102719488', '546976272090136576', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('546976272102719489', '546976272090136576', NULL, '522465144505106432', 'Y', '2019-02-22 17:40:17');
INSERT INTO `sys_notice_detail` VALUES ('548560911812526080', '548560911795748864', NULL, '522465144505106432', 'Y', '2019-02-22 17:54:18');
INSERT INTO `sys_notice_detail` VALUES ('548560911812526081', '548560911795748864', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('548560934948306944', '548560934939918336', NULL, '522465144505106432', 'Y', '2019-02-22 17:54:21');
INSERT INTO `sys_notice_detail` VALUES ('548560934948306945', '548560934939918336', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('548566326768041984', '548566326755459072', NULL, '522465144505106432', 'Y', '2019-02-22 23:03:42');
INSERT INTO `sys_notice_detail` VALUES ('548566326768041985', '548566326755459072', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('549173295384100864', '549173295270854656', NULL, '522465144505106432', 'Y', '2019-02-24 21:55:30');
INSERT INTO `sys_notice_detail` VALUES ('549173295384100865', '549173295270854656', NULL, '522044507147993088', 'N', NULL);

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
INSERT INTO `sys_notice_type` VALUES ('534774841853607936', '系统使用', '访问日志删除', 'delVisitLog', 'upload/image/20190222/17183653766.jpg', 'FTL{username!} 于 FTL{datetime!} 删除了 FTL{number!} 条 访问日志。', '删除系统访问日志时，触发改消息通知', 10, 20, 'admin', '2019-01-15 16:44:17', 'admin', '2019-02-22 17:38:42');
INSERT INTO `sys_notice_type` VALUES ('534775887648784384', '系统使用', '无权限操作', 'noPermissionOpe', 'upload/image/20190222/17183653766.jpg', 'FTL{username!} 于 FTL{date!} 访问 无权限操作 FTL{visitUrl!}.', '用户执行访问无权限路径，点击无权限的按钮时，触发该操作', 30, 60, 'admin', '2019-01-15 16:48:27', 'admin', '2019-02-22 17:38:49');

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
INSERT INTO `sys_notice_type_sys_role` VALUES ('534774841853607936', '520339201795817472', 'admin', '2019-01-15 17:02:09');
INSERT INTO `sys_notice_type_sys_role` VALUES ('534774841853607936', '520340379124367361', 'admin', '2019-01-15 17:02:09');
INSERT INTO `sys_notice_type_sys_role` VALUES ('534775887648784384', '520339201795817472', 'admin', '2019-01-15 17:02:17');

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
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520752734161338369', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520752809180659712', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520752938604298240', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520753306482507776', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520753742492991488', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520754960745365504', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '529975794877857792', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '533964972439371776', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '537980279722082304', 'admin', '2019-02-24 20:53:27');
INSERT INTO `sys_role_menu` VALUES ('520340379124367361', '520751187331383297', 'admin', '2019-01-15 17:03:04');
INSERT INTO `sys_role_menu` VALUES ('520340379124367361', '520752734161338369', 'admin', '2019-01-15 17:03:04');
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
INSERT INTO `sys_user` VALUES ('522465144505106432', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', '张闯', 'upload/image/20190222/17183653766.jpg', 'M', '15238002477@163.com', '15238002477', '520710334881726465', '开发工程师', 'staff', NULL, NULL, '2019-02-24 21:42:57', 'debug', '2018-12-12 17:29:57', 'admin', '2019-02-22 14:59:32', '0', NULL);
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

SET FOREIGN_KEY_CHECKS = 1;
