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

 Date: 29/03/2019 09:33:02
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
INSERT INTO `ex_single_table` VALUES ('551740098631172096', '1', 1, '1', 'admin', '2019-03-03 12:18:10', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('551742233389301760', '1', 1, '1', 'admin', '2019-03-03 12:26:39', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('551743428740775936', '2', 2, '2', 'admin', '2019-03-03 12:31:24', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('551747710315659264', '1', 1, '1', 'admin', '2019-03-03 12:48:25', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('558582651712176128', 'zhangchuang2', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', '2019-02-22 22:05:49');
INSERT INTO `ex_single_table` VALUES ('558582651728953344', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651737341952', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651745730560', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651754119168', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651766702080', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651775090688', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651779284992', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651791867904', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651796062208', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651808645120', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651817033728', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651829616640', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651838005248', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651846393856', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651858976768', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651863171072', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651871559680', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651879948288', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651892531200', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651900919808', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651913502720', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651917697024', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651930279936', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651938668544', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651947057152', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651955445760', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651963834368', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651972222976', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651984805888', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582651993194496', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652001583104', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652009971712', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652014166016', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652026748928', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652035137536', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652039331840', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652051914752', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652056109056', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652064497664', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652072886272', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652077080576', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652085469184', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652093857792', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652098052096', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652106440704', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652119023616', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652127412224', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652135800832', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652144189440', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652148383744', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652156772352', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652165160960', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652169355264', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652177743872', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652186132480', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652198715392', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652207104000', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652215492608', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652223881216', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652232269824', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652240658432', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652249047040', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652253241344', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652261629952', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:02', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582652270018560', '1', 1, '1', 'admin', '2019-03-22 09:28:02', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('558582652278407168', '1', 1, '1', 'admin', '2019-03-22 09:28:02', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('558582652286795776', '2', 2, '2', 'admin', '2019-03-22 09:28:02', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('558582652290990080', '1', 1, '1', 'admin', '2019-03-22 09:28:02', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('558582717097181184', 'zhangchuang2', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', '2019-02-22 22:05:49');
INSERT INTO `ex_single_table` VALUES ('558582717105569792', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717113958400', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717122347008', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717126541312', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717139124224', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717139124225', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717147512832', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717155901440', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717164290048', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717164290049', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717168484352', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717176872960', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717181067264', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717185261568', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717193650176', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717197844480', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717202038784', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717210427392', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717214621696', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717218816000', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717227204608', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717227204609', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717235593216', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717239787520', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717243981824', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717248176128', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717256564736', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717264953344', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717269147648', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717277536256', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717281730560', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717285924864', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717294313472', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717298507776', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717306896384', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717315284992', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717315284993', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717323673600', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717332062208', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717332062209', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717340450816', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717344645120', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717353033728', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717357228032', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717365616640', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717369810944', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717374005248', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717378199552', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717386588160', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717394976768', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717399171072', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717403365376', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717411753984', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717415948288', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717424336896', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717428531200', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717436919808', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717441114112', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717445308416', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717453697024', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717462085632', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717470474240', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717474668544', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717478862848', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:18', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582717487251456', '1', 1, '1', 'admin', '2019-03-22 09:28:18', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('558582717495640064', '1', 1, '1', 'admin', '2019-03-22 09:28:18', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('558582717499834368', '2', 2, '2', 'admin', '2019-03-22 09:28:18', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('558582717504028672', '1', 1, '1', 'admin', '2019-03-22 09:28:18', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('558582799561392128', 'zhangchuang2', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', '2019-02-22 22:05:49');
INSERT INTO `ex_single_table` VALUES ('558582799573975040', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799578169344', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799586557952', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799594946560', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799599140864', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799607529472', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799611723776', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799620112384', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799628500992', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799632695296', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799641083904', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799649472512', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799653666816', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799657861120', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799662055424', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799670444032', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799695609856', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799703998464', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799712387072', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799716581376', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799720775680', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799729164288', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799737552896', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799741747200', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799750135808', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799758524416', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799762718720', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799771107328', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799775301632', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799783690240', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799787884544', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799796273152', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799796273153', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799804661760', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799808856064', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799813050368', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799817244672', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799821438976', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799825633280', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799829827584', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799834021888', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799842410496', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799846604800', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799850799104', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799854993408', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799863382016', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799867576320', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799875964928', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799880159232', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799884353536', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799892742144', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799896936448', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799905325056', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799913713664', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799917907968', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799926296576', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799930490880', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799938879488', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799943073792', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799947268096', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799955656704', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799959851008', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799968239616', 'ggg', 3, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799976628224', 'hello', 5, 'F', 'admin', '2019-03-22 09:28:37', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558582799980822528', '1', 1, '1', 'admin', '2019-03-22 09:28:37', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('558582799989211136', '1', 1, '1', 'admin', '2019-03-22 09:28:37', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('558582799993405440', '2', 2, '2', 'admin', '2019-03-22 09:28:37', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('558582799997599744', '1', 1, '1', 'admin', '2019-03-22 09:28:37', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('558583102088151040', 'zhangchuang2', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', '2019-02-22 22:05:49');
INSERT INTO `ex_single_table` VALUES ('558583102096539648', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102104928256', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102109122560', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102113316864', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102121705472', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102130094080', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102134288384', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102142676992', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102146871296', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102151065600', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102159454208', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102163648512', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102167842816', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102176231424', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102180425728', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102184620032', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102193008640', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102197202944', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102205591552', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102209785856', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102213980160', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102222368768', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102226563072', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102230757376', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102234951680', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102239145984', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102247534592', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102251728896', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102255923200', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102260117504', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102264311808', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102272700416', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102276894720', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102285283328', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102293671936', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102302060544', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102306254848', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102310449152', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102318837760', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102323032064', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102327226368', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102335614976', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102339809280', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102348197888', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102352392192', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102356586496', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102360780800', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102364975104', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102373363712', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102377558016', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102381752320', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102385946624', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102390140928', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102394335232', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102398529536', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102402723840', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102406918144', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102411112448', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102423695360', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102427889664', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102436278272', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102440472576', 'zhangchuang', 20, 'M', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102444666880', 'ggg', 3, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102448861184', 'hello', 5, 'F', 'admin', '2019-03-22 09:29:50', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('558583102453055488', '1', 1, '1', 'admin', '2019-03-22 09:29:50', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('558583102457249792', '1', 1, '1', 'admin', '2019-03-22 09:29:50', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('558583102461444096', '2', 2, '2', 'admin', '2019-03-22 09:29:50', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('558583102465638400', '1', 1, '1', 'admin', '2019-03-22 09:29:50', NULL, NULL);

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
  UNIQUE INDEX `buttonCode`(`buttonCode`) USING BTREE,
  INDEX `sysMenuId`(`sysMenuId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单按钮' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_button
-- ----------------------------
INSERT INTO `sys_button` VALUES ('551755995999633408', '520752809180659712', 'sysVisitLog:delete', '删除', 'admin', '2019-03-03 13:21:20', NULL, NULL);
INSERT INTO `sys_button` VALUES ('551756070234619904', '520752809180659712', 'sysVisitLog:export', '导出', 'admin', '2019-03-03 13:21:38', NULL, NULL);
INSERT INTO `sys_button` VALUES ('551760372139294720', '520752938604298240', 'sysServiceLog:delete', '删除', 'admin', '2019-03-03 13:38:43', 'admin', '2019-03-03 13:56:39');
INSERT INTO `sys_button` VALUES ('551760483913302016', '520752938604298240', 'sysServiceLog:export', '导出', 'admin', '2019-03-03 13:39:10', NULL, NULL);

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
INSERT INTO `sys_file` VALUES ('553235186205065216', 'upload/image/20190307/15190696245.jpg', '002.jpg', 'image/jpeg', 'jpg', 182397.000000000000000000000000000000, 'admin 头像', NULL, 'admin', '2019-03-07 15:19:07', NULL, NULL);
INSERT INTO `sys_file` VALUES ('553236035060891648', 'upload/image/20190307/15222938823.jpg', 'timg.jpg', 'image/jpeg', 'jpg', 33809.000000000000000000000000000000, 'admin 头像', NULL, 'admin', '2019-03-07 15:22:29', NULL, NULL);
INSERT INTO `sys_file` VALUES ('553276540243148800', 'upload/image/20190307/18032657721.jpg', 'timg.jpg', 'image/jpeg', 'jpg', 33809.000000000000000000000000000000, 'admin 头像', NULL, 'admin', '2019-03-07 18:03:26', NULL, NULL);
INSERT INTO `sys_file` VALUES ('553573351314948096', 'upload/image/20190308/13425177021.jpg', 'timg.jpg', 'image/jpeg', 'jpg', 33809.000000000000000000000000000000, 'admin 头像', NULL, 'admin', '2019-03-08 13:42:51', NULL, NULL);

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
INSERT INTO `sys_menu` VALUES ('520751411466600448', '菜单管理', '/sysMenu', 'iconfont icon-menu', 1, '520749715428474880', NULL, 'debug', '2018-12-08 00:00:11', 'debug', '2018-12-10 18:52:08');
INSERT INTO `sys_menu` VALUES ('520751483449245697', '角色管理', '/sysRole', 'iconfont icon-role', 2, '520749715428474880', NULL, 'debug', '2018-12-08 00:00:28', 'debug', '2018-12-10 18:52:22');
INSERT INTO `sys_menu` VALUES ('520751566345469952', '机构管理', '/sysOrg', 'iconfont icon-org', 5, '520749715428474880', NULL, 'debug', '2018-12-08 00:00:48', 'zhangchuang', '2018-12-16 11:09:56');
INSERT INTO `sys_menu` VALUES ('520751881509666817', '用户管理', '/sysUser', 'iconfont icon-user', 4, '520749715428474880', NULL, 'debug', '2018-12-08 00:02:03', 'zhangchuang', '2018-12-16 11:08:39');
INSERT INTO `sys_menu` VALUES ('520752428128141312', '数据字典', '/sysDict', 'iconfont icon-dict', 1, '520750975204458496', NULL, 'debug', '2018-12-08 00:04:13', 'debug', '2018-12-10 19:03:56');
INSERT INTO `sys_menu` VALUES ('520752809180659712', '访问日志', '/sysVisitLog', 'iconfont icon-visitLog', 4, '520750975204458496', 'Y', 'debug', '2018-12-08 00:05:44', 'debug', '2018-12-10 19:04:31');
INSERT INTO `sys_menu` VALUES ('520752938604298240', '业务日志', '/sysServiceLog', 'iconfont icon-serviceLog', 5, '520750975204458496', 'Y', 'debug', '2018-12-08 00:06:15', 'debug', '2018-12-10 19:05:01');
INSERT INTO `sys_menu` VALUES ('520753306482507776', '账号解锁', '/sysUserUnlock', 'iconfont icon-unlock', 6, '520750975204458496', NULL, 'debug', '2018-12-08 00:07:43', 'admin', '2018-12-16 14:33:01');
INSERT INTO `sys_menu` VALUES ('520753742492991488', '通知类型', '/sysNoticeType', 'iconfont icon-noticeType', 8, '520750975204458496', NULL, 'debug', '2018-12-08 00:09:27', 'admin', '2019-02-27 14:52:08');
INSERT INTO `sys_menu` VALUES ('529975794877857792', '定时任务', '/sysTask', 'iconfont icon-task', 7, '520750975204458496', NULL, 'admin', '2019-01-02 10:54:35', NULL, NULL);
INSERT INTO `sys_menu` VALUES ('533964782852636672', '测试例子', '/', 'iconfont icon-gencode', 4, '0', NULL, 'admin', '2019-01-13 11:05:24', 'admin', '2019-02-24 10:18:04');
INSERT INTO `sys_menu` VALUES ('533964972439371776', '普通单表', '/exSingleTable', 'iconfont icon-gencode', 1, '533964782852636672', NULL, 'admin', '2019-01-13 11:06:10', NULL, NULL);
INSERT INTO `sys_menu` VALUES ('537980279722082304', '一对多表', '/exStaff', 'iconfont icon-gencode', 3, '533964782852636672', NULL, 'admin', '2019-01-24 13:01:33', 'admin', '2019-02-22 22:28:47');
INSERT INTO `sys_menu` VALUES ('560430837321957376', '代码生成', '/genOnline', 'iconfont icon-gencode', 9, '520750975204458496', NULL, 'admin', '2019-03-27 11:52:04', 'admin', '2019-03-27 11:52:33');

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
INSERT INTO `sys_notice` VALUES ('551738719984418816', 'delVisitLog', '访问日志删除', 'admin 于 2019-03-03 12:12:41 删除了 1 条 访问日志。', '2019-03-03 12:12:41', '2019-03-13 12:12:41', '2019-03-23 12:12:41');
INSERT INTO `sys_notice` VALUES ('551753143537369088', 'delVisitLog', '访问日志删除', 'admin 于 2019-03-03 13:10:00 删除了 2 条 访问日志。', '2019-03-03 13:10:00', '2019-03-13 13:10:00', '2019-03-23 13:10:00');
INSERT INTO `sys_notice` VALUES ('551903101087383552', 'delVisitLog', '访问日志删除', 'admin 于 2019-03-03 23:05:53 删除了 1 条 访问日志。', '2019-03-03 23:05:53', '2019-03-13 23:05:53', '2019-03-23 23:05:53');
INSERT INTO `sys_notice` VALUES ('551907498353754112', 'delVisitLog', '访问日志删除', 'admin 于 2019-03-03 23:23:21 删除了 2 条 访问日志。', '2019-03-03 23:23:21', '2019-03-13 23:23:21', '2019-03-23 23:23:21');
INSERT INTO `sys_notice` VALUES ('553237166633779200', 'delVisitLog', '访问日志删除', 'admin 于 2019-03-07 15:26:59 删除了 1 条 访问日志。', '2019-03-07 15:26:59', '2019-03-17 15:26:59', '2019-03-27 15:26:59');
INSERT INTO `sys_notice` VALUES ('553580006203195392', 'delVisitLog', '访问日志删除', 'admin 于 2019-03-08 14:09:18 删除了 1 条 访问日志。', '2019-03-08 14:09:18', '2019-03-18 14:09:18', '2019-03-28 14:09:18');
INSERT INTO `sys_notice` VALUES ('555437562424983552', 'delVisitLog', '访问日志删除', 'admin 于 2019-03-13 17:10:34 删除了 1 条 访问日志。', '2019-03-13 17:10:34', '2019-03-23 17:10:34', '2019-04-02 17:10:34');
INSERT INTO `sys_notice` VALUES ('555776301403734016', 'delVisitLog', '访问日志删除', 'admin 于 2019-03-14 15:36:35 删除了 1 条 访问日志。', '2019-03-14 15:36:36', '2019-03-24 15:36:36', '2019-04-03 15:36:36');
INSERT INTO `sys_notice` VALUES ('556953727529910272', 'delVisitLog', '访问日志删除', 'admin 于 2019-03-17 21:35:16 删除了 1 条 访问日志。', '2019-03-17 21:35:16', '2019-03-27 21:35:16', '2019-04-06 21:35:16');
INSERT INTO `sys_notice` VALUES ('560023441000890368', 'delVisitLog', '访问日志删除', 'admin 于 2019-03-26 08:53:12 删除了 1 条 访问日志。', '2019-03-26 08:53:13', '2019-04-05 08:53:13', '2019-04-15 08:53:13');

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
INSERT INTO `sys_notice_detail` VALUES ('551738720047333376', '551738719984418816', NULL, '522465144505106432', 'Y', '2019-03-04 18:38:29');
INSERT INTO `sys_notice_detail` VALUES ('551753143596089346', '551753143537369088', NULL, '522465144505106432', 'Y', '2019-03-04 18:38:32');
INSERT INTO `sys_notice_detail` VALUES ('551903101150298113', '551903101087383552', NULL, '522465144505106432', 'Y', '2019-03-12 09:18:01');
INSERT INTO `sys_notice_detail` VALUES ('551907498370531329', '551907498353754112', NULL, '522465144505106432', 'Y', '2019-03-12 09:18:01');
INSERT INTO `sys_notice_detail` VALUES ('553237166709276672', '553237166633779200', NULL, '522465144505106432', 'Y', '2019-03-12 09:18:01');
INSERT INTO `sys_notice_detail` VALUES ('553580006270304257', '553580006203195392', NULL, '522465144505106432', 'Y', '2019-03-12 09:18:01');
INSERT INTO `sys_notice_detail` VALUES ('555437562504675328', '555437562424983552', NULL, '549336387174793216', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('555437562504675329', '555437562424983552', NULL, '522465144505106432', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('555437562504675330', '555437562424983552', NULL, '522465900809420800', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('555437562504675331', '555437562424983552', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('555776301466648576', '555776301403734016', NULL, '522465144505106432', 'Y', '2019-03-14 15:36:40');
INSERT INTO `sys_notice_detail` VALUES ('555776301466648577', '555776301403734016', NULL, '549336387174793216', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('555776301466648578', '555776301403734016', NULL, '522465900809420800', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('555776301470842880', '555776301403734016', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('556953727601213440', '556953727529910272', NULL, '549336387174793216', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('556953727601213441', '556953727529910272', NULL, '522465144505106432', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('556953727601213442', '556953727529910272', NULL, '522465900809420800', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('556953727601213443', '556953727529910272', NULL, '522044507147993088', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('560023441042833408', '560023441000890368', NULL, '549336387174793216', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('560023441042833409', '560023441000890368', NULL, '522465144505106432', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('560023441042833410', '560023441000890368', NULL, '522465900809420800', 'N', NULL);
INSERT INTO `sys_notice_detail` VALUES ('560023441042833411', '560023441000890368', NULL, '522044507147993088', 'N', NULL);

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
INSERT INTO `sys_notice_type` VALUES ('534774841853607936', '系统使用', '访问日志删除', 'delVisitLog', 'upload/image/20190308/13425177021.jpg', 'FTL{username!} 于 FTL{datetime!} 删除了 FTL{number!} 条 访问日志。', '删除系统访问日志时，触发改消息通知', 10, 20, 'admin', '2019-01-15 16:44:17', 'admin', '2019-03-08 13:59:18');
INSERT INTO `sys_notice_type` VALUES ('534775887648784384', '系统使用', '无权限操作', 'noPermissionOpe', 'upload/image/20190308/13425177021.jpg', 'FTL{username!} 于 FTL{date!} 访问 无权限操作 FTL{visitUrl!}.', '用户执行访问无权限路径，点击无权限的按钮时，触发该操作', 30, 60, 'admin', '2019-01-15 16:48:27', 'admin', '2019-03-08 13:59:26');

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
-- Records of sys_role_button
-- ----------------------------
INSERT INTO `sys_role_button` VALUES ('520339201795817472', '551755995999633408', 'admin', '2019-03-03 13:39:18');
INSERT INTO `sys_role_button` VALUES ('520339201795817472', '551756070234619904', 'admin', '2019-03-03 13:39:18');
INSERT INTO `sys_role_button` VALUES ('520339201795817472', '551760372139294720', 'admin', '2019-03-03 13:39:18');
INSERT INTO `sys_role_button` VALUES ('520339201795817472', '551760483913302016', 'admin', '2019-03-03 13:39:18');

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
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520751187331383297', 'admin', '2019-03-27 11:52:47');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520751411466600448', 'admin', '2019-03-27 11:52:47');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520751483449245697', 'admin', '2019-03-27 11:52:47');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520751566345469952', 'admin', '2019-03-27 11:52:47');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520751881509666817', 'admin', '2019-03-27 11:52:47');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520752428128141312', 'admin', '2019-03-27 11:52:47');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520752809180659712', 'admin', '2019-03-27 11:52:47');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520752938604298240', 'admin', '2019-03-27 11:52:47');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520753306482507776', 'admin', '2019-03-27 11:52:47');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520753742492991488', 'admin', '2019-03-27 11:52:47');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '529975794877857792', 'admin', '2019-03-27 11:52:47');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '533964972439371776', 'admin', '2019-03-27 11:52:47');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '537980279722082304', 'admin', '2019-03-27 11:52:47');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '560430837321957376', 'admin', '2019-03-27 11:52:47');
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
INSERT INTO `sys_service_log` VALUES ('551692592069214208', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 09:09:23');
INSERT INTO `sys_service_log` VALUES ('551696014508032000', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 09:22:59');
INSERT INTO `sys_service_log` VALUES ('551696052042858496', '/dashboard/changePwd', '123456 修改为新密码：111111', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 09:23:08');
INSERT INTO `sys_service_log` VALUES ('551710519975739392', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 10:20:38');
INSERT INTO `sys_service_log` VALUES ('551722549587738624', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 11:08:26');
INSERT INTO `sys_service_log` VALUES ('551722918309003264', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 11:09:54');
INSERT INTO `sys_service_log` VALUES ('551722932229898240', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 11:09:57');
INSERT INTO `sys_service_log` VALUES ('551722961732632576', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 11:10:04');
INSERT INTO `sys_service_log` VALUES ('551723320735694848', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 11:11:30');
INSERT INTO `sys_service_log` VALUES ('551725949821911040', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 11:21:57');
INSERT INTO `sys_service_log` VALUES ('551725972429209600', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 11:22:02');
INSERT INTO `sys_service_log` VALUES ('551734022846283776', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 11:54:01');
INSERT INTO `sys_service_log` VALUES ('551734030974844928', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 11:54:03');
INSERT INTO `sys_service_log` VALUES ('551734055607992320', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 11:54:09');
INSERT INTO `sys_service_log` VALUES ('551734244909514752', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 11:54:54');
INSERT INTO `sys_service_log` VALUES ('551734257328848896', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 11:54:57');
INSERT INTO `sys_service_log` VALUES ('551734279361527808', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 11:55:02');
INSERT INTO `sys_service_log` VALUES ('551735631126986752', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 12:00:25');
INSERT INTO `sys_service_log` VALUES ('551735965392044032', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 12:01:44');
INSERT INTO `sys_service_log` VALUES ('551736007448330240', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 12:01:54');
INSERT INTO `sys_service_log` VALUES ('551736514594209792', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 12:03:55');
INSERT INTO `sys_service_log` VALUES ('551736536903712768', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 12:04:01');
INSERT INTO `sys_service_log` VALUES ('551737135128903680', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 12:06:23');
INSERT INTO `sys_service_log` VALUES ('551738617144279040', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 12:12:17');
INSERT INTO `sys_service_log` VALUES ('551738628414373888', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 12:12:19');
INSERT INTO `sys_service_log` VALUES ('551738644717633536', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 12:12:23');
INSERT INTO `sys_service_log` VALUES ('551738925836664832', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 12:13:30');
INSERT INTO `sys_service_log` VALUES ('551738948922114048', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 12:13:36');
INSERT INTO `sys_service_log` VALUES ('551738968228495360', '/sysVisitLog/deleteAction', 'PermissionInterceptor: 访问无权限路径', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 12:13:40');
INSERT INTO `sys_service_log` VALUES ('551739745911177216', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 12:16:46');
INSERT INTO `sys_service_log` VALUES ('551739788181372928', '/sysVisitLog/deleteAction', 'PermissionInterceptor: 访问无权限路径', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 12:16:56');
INSERT INTO `sys_service_log` VALUES ('551741085911613440', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 12:22:05');
INSERT INTO `sys_service_log` VALUES ('551750055489437696', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 12:57:44');
INSERT INTO `sys_service_log` VALUES ('551752463833628672', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:07:18');
INSERT INTO `sys_service_log` VALUES ('551752710735527936', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:08:17');
INSERT INTO `sys_service_log` VALUES ('551753092727570432', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:09:48');
INSERT INTO `sys_service_log` VALUES ('551753116005957632', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:09:53');
INSERT INTO `sys_service_log` VALUES ('551753349729353728', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:10:49');
INSERT INTO `sys_service_log` VALUES ('551753367999741952', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:10:54');
INSERT INTO `sys_service_log` VALUES ('551753612984844288', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:11:52');
INSERT INTO `sys_service_log` VALUES ('551753639786446848', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:11:58');
INSERT INTO `sys_service_log` VALUES ('551753755431796736', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:12:26');
INSERT INTO `sys_service_log` VALUES ('551753783365861376', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:12:33');
INSERT INTO `sys_service_log` VALUES ('551758217047179264', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:30:10');
INSERT INTO `sys_service_log` VALUES ('551759533836337152', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:35:24');
INSERT INTO `sys_service_log` VALUES ('551759642867269632', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:35:50');
INSERT INTO `sys_service_log` VALUES ('551759665159995392', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:35:55');
INSERT INTO `sys_service_log` VALUES ('551759724412928000', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:36:09');
INSERT INTO `sys_service_log` VALUES ('551759740451946496', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:36:13');
INSERT INTO `sys_service_log` VALUES ('551759892961034240', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:36:49');
INSERT INTO `sys_service_log` VALUES ('551759910367395840', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:36:53');
INSERT INTO `sys_service_log` VALUES ('551760012058296320', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:37:18');
INSERT INTO `sys_service_log` VALUES ('551760028931981312', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:37:22');
INSERT INTO `sys_service_log` VALUES ('551760159655854080', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:37:53');
INSERT INTO `sys_service_log` VALUES ('551760181369765888', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:37:58');
INSERT INTO `sys_service_log` VALUES ('551760265595584512', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:38:18');
INSERT INTO `sys_service_log` VALUES ('551760281999507456', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:38:22');
INSERT INTO `sys_service_log` VALUES ('551760531313131520', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:39:21');
INSERT INTO `sys_service_log` VALUES ('551760553001877504', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:39:27');
INSERT INTO `sys_service_log` VALUES ('551761063582892032', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:41:28');
INSERT INTO `sys_service_log` VALUES ('551761822282153984', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:44:29');
INSERT INTO `sys_service_log` VALUES ('551762068949172224', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:45:28');
INSERT INTO `sys_service_log` VALUES ('551762078558322688', '/sysFile/newModel', 'PermissionInterceptor: 访问无权限路径', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:45:30');
INSERT INTO `sys_service_log` VALUES ('551762427260174336', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:46:53');
INSERT INTO `sys_service_log` VALUES ('551762790759530496', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:48:20');
INSERT INTO `sys_service_log` VALUES ('551762829158383616', '/login/action', '登录', 'zhaoli', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:48:29');
INSERT INTO `sys_service_log` VALUES ('551764420926111744', '/logout', '退出', 'zhaoli', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:54:49');
INSERT INTO `sys_service_log` VALUES ('551764440786141184', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:54:53');
INSERT INTO `sys_service_log` VALUES ('551764622286258176', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:55:37');
INSERT INTO `sys_service_log` VALUES ('551764644759339008', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:55:42');
INSERT INTO `sys_service_log` VALUES ('551764984426659840', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:57:03');
INSERT INTO `sys_service_log` VALUES ('551765497931104256', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 13:59:06');
INSERT INTO `sys_service_log` VALUES ('551766415967780864', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 14:02:44');
INSERT INTO `sys_service_log` VALUES ('551901025171144704', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 22:57:38');
INSERT INTO `sys_service_log` VALUES ('551902696043446272', '/sysVisitLog/deleteAction', 'PermissionInterceptor: 访问无权限路径', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 23:04:16');
INSERT INTO `sys_service_log` VALUES ('551902776603443200', '/sysVisitLog/deleteAction', 'PermissionInterceptor: 访问无权限路径', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-03 23:04:35');
INSERT INTO `sys_service_log` VALUES ('552193309821370368', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-04 18:19:04');
INSERT INTO `sys_service_log` VALUES ('552196403347062784', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-04 18:31:21');
INSERT INTO `sys_service_log` VALUES ('552197660539355136', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-04 18:36:21');
INSERT INTO `sys_service_log` VALUES ('552200049090625536', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-04 18:45:51');
INSERT INTO `sys_service_log` VALUES ('552200163100196864', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-04 18:46:18');
INSERT INTO `sys_service_log` VALUES ('552200216493686784', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-04 18:46:30');
INSERT INTO `sys_service_log` VALUES ('552205256314847232', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-04 19:06:32');
INSERT INTO `sys_service_log` VALUES ('553234677423407104', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-07 15:17:05');
INSERT INTO `sys_service_log` VALUES ('553250949980749824', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-07 16:21:45');
INSERT INTO `sys_service_log` VALUES ('553250963922616320', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-07 16:21:48');
INSERT INTO `sys_service_log` VALUES ('553263768503582720', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-07 17:12:41');
INSERT INTO `sys_service_log` VALUES ('553263886011203584', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-07 17:13:09');
INSERT INTO `sys_service_log` VALUES ('553269499407630336', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-07 17:35:27');
INSERT INTO `sys_service_log` VALUES ('553269701883461632', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-07 17:36:16');
INSERT INTO `sys_service_log` VALUES ('553270488474845184', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-07 17:39:23');
INSERT INTO `sys_service_log` VALUES ('553270510654324736', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-07 17:39:29');
INSERT INTO `sys_service_log` VALUES ('553270613569961984', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-07 17:39:53');
INSERT INTO `sys_service_log` VALUES ('553275942571606016', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-07 18:01:04');
INSERT INTO `sys_service_log` VALUES ('553276275372851200', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-07 18:02:23');
INSERT INTO `sys_service_log` VALUES ('553571674583203840', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-08 13:36:12');
INSERT INTO `sys_service_log` VALUES ('553572612169531392', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-08 13:39:55');
INSERT INTO `sys_service_log` VALUES ('553577636681482240', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-08 13:59:53');
INSERT INTO `sys_service_log` VALUES ('553577877258371072', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-08 14:00:50');
INSERT INTO `sys_service_log` VALUES ('553579446154559488', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-08 14:07:04');
INSERT INTO `sys_service_log` VALUES ('553579957431828480', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-08 14:09:06');
INSERT INTO `sys_service_log` VALUES ('553655092130086912', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-08 19:07:40');
INSERT INTO `sys_service_log` VALUES ('553656200898543616', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-08 19:12:04');
INSERT INTO `sys_service_log` VALUES ('553656243269402624', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-08 19:12:14');
INSERT INTO `sys_service_log` VALUES ('553656283476000768', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-08 19:12:24');
INSERT INTO `sys_service_log` VALUES ('553665161974513664', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-08 19:47:41');
INSERT INTO `sys_service_log` VALUES ('554684287580897280', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-11 15:17:19');
INSERT INTO `sys_service_log` VALUES ('554684677458231296', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-11 15:18:52');
INSERT INTO `sys_service_log` VALUES ('554685132926091264', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-11 15:20:41');
INSERT INTO `sys_service_log` VALUES ('554955848594489344', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-12 09:16:24');
INSERT INTO `sys_service_log` VALUES ('554955848737095680', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-12 09:16:24');
INSERT INTO `sys_service_log` VALUES ('554956254515036160', '/dashboard/noticeSetAllRead', '用户 admin 设置所有系统通知为 已读', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-12 09:18:01');
INSERT INTO `sys_service_log` VALUES ('554957146274398208', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-12 09:21:34');
INSERT INTO `sys_service_log` VALUES ('554957740812795904', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-12 09:23:56');
INSERT INTO `sys_service_log` VALUES ('554960939732959232', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-12 09:36:38');
INSERT INTO `sys_service_log` VALUES ('554960961602060288', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-12 09:36:43');
INSERT INTO `sys_service_log` VALUES ('554960984171610112', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-12 09:36:49');
INSERT INTO `sys_service_log` VALUES ('554961021467361280', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-12 09:36:58');
INSERT INTO `sys_service_log` VALUES ('555416222439571456', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-13 15:45:46');
INSERT INTO `sys_service_log` VALUES ('555427415879319552', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-13 16:30:15');
INSERT INTO `sys_service_log` VALUES ('555428877053198336', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-13 16:36:03');
INSERT INTO `sys_service_log` VALUES ('555435855242592256', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-13 17:03:47');
INSERT INTO `sys_service_log` VALUES ('555742781390192640', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-14 13:23:24');
INSERT INTO `sys_service_log` VALUES ('555744910603452416', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-14 13:31:51');
INSERT INTO `sys_service_log` VALUES ('555744958431100928', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-14 13:32:03');
INSERT INTO `sys_service_log` VALUES ('555774015503859712', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-14 15:27:31');
INSERT INTO `sys_service_log` VALUES ('555774042938802176', '/login/action', '登录', 'zhaoli', '0:0:0:0:0:0:0:1', NULL, '2019-03-14 15:27:37');
INSERT INTO `sys_service_log` VALUES ('555774938456260608', '/logout', '退出', 'zhaoli', '0:0:0:0:0:0:0:1', NULL, '2019-03-14 15:31:11');
INSERT INTO `sys_service_log` VALUES ('555775024204611584', '/login/action', '登录', 'zhaoli', '0:0:0:0:0:0:0:1', NULL, '2019-03-14 15:31:31');
INSERT INTO `sys_service_log` VALUES ('555775878680805376', '/logout', '退出', 'zhaoli', '0:0:0:0:0:0:0:1', NULL, '2019-03-14 15:34:55');
INSERT INTO `sys_service_log` VALUES ('555775928660131840', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-14 15:35:07');
INSERT INTO `sys_service_log` VALUES ('555815304026914816', '/login/action', '登录', 'zhaoli', '0:0:0:0:0:0:0:1', NULL, '2019-03-14 18:11:35');
INSERT INTO `sys_service_log` VALUES ('555815828667236352', '/logout', '退出', 'zhaoli', '0:0:0:0:0:0:0:1', NULL, '2019-03-14 18:13:40');
INSERT INTO `sys_service_log` VALUES ('555815879514783744', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-14 18:13:52');
INSERT INTO `sys_service_log` VALUES ('555827089517838336', '/login/action', '登录', 'zhaoli', '0:0:0:0:0:0:0:1', NULL, '2019-03-14 18:58:24');
INSERT INTO `sys_service_log` VALUES ('555827195197521920', '/logout', '退出', 'zhaoli', '0:0:0:0:0:0:0:1', NULL, '2019-03-14 18:58:50');
INSERT INTO `sys_service_log` VALUES ('555827239447429120', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-14 18:59:00');
INSERT INTO `sys_service_log` VALUES ('556953517454000128', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-17 21:34:26');
INSERT INTO `sys_service_log` VALUES ('557960328021803008', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-20 16:15:08');
INSERT INTO `sys_service_log` VALUES ('558582438566035456', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-22 09:27:11');
INSERT INTO `sys_service_log` VALUES ('558584856120918016', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-22 09:36:48');
INSERT INTO `sys_service_log` VALUES ('558670221624213504', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-22 15:16:00');
INSERT INTO `sys_service_log` VALUES ('558670245523357696', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-22 15:16:06');
INSERT INTO `sys_service_log` VALUES ('558671555937173504', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-22 15:21:19');
INSERT INTO `sys_service_log` VALUES ('558674337972879360', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-22 15:32:22');
INSERT INTO `sys_service_log` VALUES ('560022740841529344', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-26 08:50:26');
INSERT INTO `sys_service_log` VALUES ('560142237531373568', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-26 16:45:16');
INSERT INTO `sys_service_log` VALUES ('560428644283973632', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-27 11:43:21');
INSERT INTO `sys_service_log` VALUES ('560430533062950912', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-27 11:50:51');
INSERT INTO `sys_service_log` VALUES ('560431034278084608', '/logout', '退出', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-27 11:52:51');
INSERT INTO `sys_service_log` VALUES ('560431053492191232', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-27 11:52:55');
INSERT INTO `sys_service_log` VALUES ('560432579795222528', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-27 11:58:59');
INSERT INTO `sys_service_log` VALUES ('560440243879149568', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-27 12:29:27');
INSERT INTO `sys_service_log` VALUES ('560445297126277120', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-27 12:49:31');
INSERT INTO `sys_service_log` VALUES ('560446237728309248', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-27 12:53:16');
INSERT INTO `sys_service_log` VALUES ('560504726043492352', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-27 16:45:40');
INSERT INTO `sys_service_log` VALUES ('560516620812812288', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-27 17:32:56');
INSERT INTO `sys_service_log` VALUES ('560516734289707008', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-27 17:33:23');
INSERT INTO `sys_service_log` VALUES ('560517772874874880', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-27 17:37:31');
INSERT INTO `sys_service_log` VALUES ('560543646571560960', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-27 19:20:20');
INSERT INTO `sys_service_log` VALUES ('560561013888385024', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-27 20:29:20');
INSERT INTO `sys_service_log` VALUES ('560563732615266304', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-27 20:40:09');
INSERT INTO `sys_service_log` VALUES ('560890687927615488', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-28 18:19:21');
INSERT INTO `sys_service_log` VALUES ('560898962547015680', '/login/action', '登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-28 18:52:14');
INSERT INTO `sys_service_log` VALUES ('560912007360937984', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-28 19:44:04');
INSERT INTO `sys_service_log` VALUES ('561107303445561344', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-29 08:40:06');
INSERT INTO `sys_service_log` VALUES ('561107303860797440', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-29 08:40:06');
INSERT INTO `sys_service_log` VALUES ('561116596903346176', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-29 09:17:02');
INSERT INTO `sys_service_log` VALUES ('561116597427634176', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-29 09:17:02');
INSERT INTO `sys_service_log` VALUES ('561119926878732288', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-29 09:30:16');
INSERT INTO `sys_service_log` VALUES ('561119931014316032', '/login', '通过cookie登录', 'admin', '0:0:0:0:0:0:0:1', NULL, '2019-03-29 09:30:17');

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
INSERT INTO `sys_task_log` VALUES ('553278087110852608', 'com.github.qinyou.system.task.TestTask', '2019-03-07 18:09:35', '2019-03-07 18:09:40', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('558576159881691136', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-03-22 09:02:14', '2019-03-22 09:02:14', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('558591088877633536', 'com.github.qinyou.system.task.TestTask', '2019-03-22 10:01:34', '2019-03-22 10:01:39', 'success', NULL);

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
INSERT INTO `sys_user` VALUES ('522465144505106432', 'admin', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', '张闯', 'upload/image/20190308/13425177021.jpg', 'M', '15238002477@163.com', '15238002477', '520710334881726465', '开发工程师', 'staff', NULL, NULL, '2019-03-29 09:30:17', 'debug', '2018-12-12 17:29:57', 'admin', '2019-02-22 14:59:32', '0', NULL);
INSERT INTO `sys_user` VALUES ('522465900809420800', 'zhaoli', '7c4a8d09ca3762af61e59520943dc26494f8941b', '赵丽', NULL, 'F', 'zhaoli@istek.net.cn', 'kaka', '520706929148821505', 'xxx', 'director', NULL, NULL, '2019-03-14 18:58:24', 'debug', '2018-12-12 17:32:57', NULL, NULL, '0', NULL);
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
INSERT INTO `sys_user_setting` VALUES ('546795821421559808', 'admin', 'default', '#447eff');
INSERT INTO `sys_user_setting` VALUES ('549344229646663680', 'zhaoli', 'green', '#40b370');

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
INSERT INTO `sys_visit_log` VALUES ('561120221163683840', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-29 09:31:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120221868326912', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-29 09:31:26', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120222258397184', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-29 09:31:26', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120222933680128', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-29 09:31:26', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120228877008896', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-29 09:31:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120229237719040', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-29 09:31:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120229606817792', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-29 09:31:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120231271956480', 'admin', '0:0:0:0:0:0:0:1', '/sysFile', '2019-03-29 09:31:28', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120231565557760', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/fileTypeData', '2019-03-29 09:31:28', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120231926267904', 'admin', '0:0:0:0:0:0:0:1', '/sysFile/query', '2019-03-29 09:31:28', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120232400224256', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-29 09:31:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120233146810368', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-29 09:31:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"],\"search_IS_delFlag\":[\"null\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120233151004672', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-29 09:31:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"],\"search_IS_delFlag\":[\"null\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120234212163584', 'admin', '0:0:0:0:0:0:0:1', '/sysDict', '2019-03-29 09:31:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120234740645888', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryGroup', '2019-03-29 09:31:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"],\"search_IS_delFlag\":[\"null\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120234883252224', 'admin', '0:0:0:0:0:0:0:1', '/sysDict/queryDict', '2019-03-29 09:31:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"],\"search_IS_delFlag\":[\"null\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120235524980736', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-29 09:31:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120236024102912', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-29 09:31:29', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120236305121280', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-29 09:31:29', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120236871352320', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-29 09:31:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120236938461184', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-29 09:31:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120237634715648', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-29 09:31:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120238087700480', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-29 09:31:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120238750400512', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-29 09:31:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120238955921408', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-29 09:31:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120239513763840', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-29 09:31:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120239719284736', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-29 09:31:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120240319070208', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-29 09:31:30', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120240574922752', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-29 09:31:30', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120241095016448', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-29 09:31:31', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120241673830400', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-29 09:31:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120242181341184', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-29 09:31:31', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120242512691200', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-29 09:31:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120243049562112', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-29 09:31:31', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120243276054528', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-29 09:31:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120243645153280', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-29 09:31:31', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120244114915328', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-29 09:31:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120244538540032', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-29 09:31:31', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120244920221696', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-29 09:31:31', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120245301903360', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-29 09:31:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120245582921728', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-29 09:31:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120245977186304', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-29 09:31:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120246228844544', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-29 09:31:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120246631497728', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-29 09:31:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120246971236352', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-29 09:31:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120247361306624', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-29 09:31:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120247633936384', 'admin', '0:0:0:0:0:0:0:1', '/sysTask', '2019-03-29 09:31:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120248024006656', 'admin', '0:0:0:0:0:0:0:1', '/sysTask/query', '2019-03-29 09:31:32', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120248959336448', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-29 09:31:32', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120249487818752', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-29 09:31:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120249710116864', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-29 09:31:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120250272153600', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-29 09:31:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120250507034624', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-29 09:31:33', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120251136180224', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-29 09:31:33', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120254156079104', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-29 09:31:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120254604869632', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-29 09:31:34', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120255221432320', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-29 09:31:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120255582142464', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-29 09:31:34', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120256085458944', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu', '2019-03-29 09:31:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120256353894400', 'admin', '0:0:0:0:0:0:0:1', '/sysMenu/query', '2019-03-29 09:31:34', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120257184366592', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-29 09:31:34', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120257603796992', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-29 09:31:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120258144862208', 'admin', '0:0:0:0:0:0:0:1', '/sysRole', '2019-03-29 09:31:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120258488795136', 'admin', '0:0:0:0:0:0:0:1', '/sysRole/query', '2019-03-29 09:31:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120259315073024', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg', '2019-03-29 09:31:35', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120259633840128', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/query', '2019-03-29 09:31:35', 'POST', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120260002938880', 'admin', '0:0:0:0:0:0:0:1', '/sysOrg/queryUser', '2019-03-29 09:31:35', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120345784844288', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog', '2019-03-29 09:31:56', 'GET', NULL, NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120346757922816', 'admin', '0:0:0:0:0:0:0:1', '/sysServiceLog/query', '2019-03-29 09:31:56', 'POST', '{\"page\":[\"1\"],\"rows\":[\"40\"]}', NULL, NULL);
INSERT INTO `sys_visit_log` VALUES ('561120402449891328', 'admin', '0:0:0:0:0:0:0:1', '/dashboard/userInfo', '2019-03-29 09:32:09', 'GET', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
