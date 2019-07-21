/*
 Navicat Premium Data Transfer

 Source Server         : localhost-mysql-master
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : my_curd

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 21/07/2019 22:00:20
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
INSERT INTO `ex_single_table` VALUES ('576412545519190016', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545535967232', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545540161536', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545548550144', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545552744448', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545556938752', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545565327360', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545569521664', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545573715968', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545582104576', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545586298880', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545590493184', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545594687488', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545598881792', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545603076096', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545607270400', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545611464704', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545615659008', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545624047616', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545628241920', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545628241921', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545636630528', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545645019136', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545645019137', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545649213440', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545657602048', '1', 1, '1', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412545665990656', '1', 1, '1', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412545670184960', '2', 2, '2', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412545674379264', '1', 1, '1', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412545678573568', 'zhangchuang2', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', '2019-02-22 22:05:49');
INSERT INTO `ex_single_table` VALUES ('576412545686962176', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545691156480', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545695350784', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545703739392', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545707933696', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545716322304', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545720516608', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545724710912', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545728905216', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545737293824', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545749876736', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545754071040', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545758265344', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545762459648', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545770848256', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545770848257', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545779236864', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545783431168', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545787625472', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545796014080', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545800208384', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545808596992', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545812791296', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545812791297', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545821179904', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545825374208', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545829568512', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545833762816', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545842151424', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545842151425', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545850540032', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545854734336', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545858928640', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545867317248', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545871511552', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545875705856', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545879900160', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545888288768', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545892483072', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545896677376', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545900871680', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545909260288', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545913454592', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545917648896', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545921843200', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545926037504', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545934426112', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545934426113', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545938620416', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545947009024', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545951203328', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545955397632', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545963786240', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545963786241', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545972174848', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545972174849', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545980563456', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545984757760', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545988952064', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545993146368', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412545997340672', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546001534976', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546005729280', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546014117888', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546018312192', '1', 1, '1', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412546026700800', '1', 1, '1', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412546026700801', '2', 2, '2', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412546035089408', '1', 1, '1', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412546039283712', 'zhangchuang2', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', '2019-02-22 22:05:49');
INSERT INTO `ex_single_table` VALUES ('576412546043478016', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546047672320', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546051866624', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546056060928', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546060255232', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546064449536', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546068643840', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546077032448', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546085421056', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546089615360', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546093809664', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546102198272', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546106392576', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546110586880', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546114781184', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546123169792', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546123169793', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546127364096', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546135752704', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546135752705', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546144141312', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546148335616', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546152529920', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546156724224', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546160918528', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546169307136', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546173501440', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546177695744', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546181890048', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546186084352', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546190278656', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546194472960', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546198667264', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546202861568', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546207055872', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546211250176', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546215444480', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546219638784', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546223833088', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546228027392', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546232221696', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546236416000', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546240610304', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546244804608', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546248998912', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546253193216', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546253193217', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546261581824', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546265776128', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546269970432', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546274164736', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546278359040', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546286747648', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546286747649', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546295136256', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546299330560', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546303524864', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546307719168', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546311913472', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546320302080', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546320302081', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546324496384', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546332884992', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546337079296', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546341273600', '1', 1, '1', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412546345467904', '1', 1, '1', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412546353856512', '2', 2, '2', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412546353856513', '1', 1, '1', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412546362245120', 'zhangchuang2', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', '2019-02-22 22:05:49');
INSERT INTO `ex_single_table` VALUES ('576412546366439424', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546374828032', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546379022336', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546387410944', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546391605248', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546395799552', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546404188160', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546408382464', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546412576768', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546416771072', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546420965376', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546425159680', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546433548288', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546437742592', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546441936896', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546446131200', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546450325504', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546458714112', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546467102720', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546471297024', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546479685632', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546483879936', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546488074240', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546492268544', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546500657152', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546504851456', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546509045760', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546513240064', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546521628672', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546525822976', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546530017280', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546538405888', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546542600192', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546546794496', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546550988800', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546559377408', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546563571712', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546567766016', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546576154624', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546580348928', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546588737536', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546597126144', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546601320448', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546609709056', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546613903360', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546639069184', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546647457792', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546651652096', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546655846400', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546660040704', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546664235008', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546668429312', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546676817920', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546676817921', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546685206528', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546689400832', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546693595136', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546697789440', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546701983744', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546706178048', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546710372352', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546718760960', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546722955264', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546727149568', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546735538176', '1', 1, '1', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412546739732480', '1', 1, '1', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412546743926784', '2', 2, '2', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412546752315392', '1', 1, '1', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412546756509696', 'zhangchuang2', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', '2019-02-22 22:05:49');
INSERT INTO `ex_single_table` VALUES ('576412546760704000', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546764898304', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546773286912', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546777481216', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546785869824', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546790064128', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546794258432', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546798452736', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546802647040', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546806841344', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546815229952', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546819424256', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546823618560', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546827812864', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546832007168', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546836201472', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546840395776', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546844590080', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546848784384', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546857172992', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546861367296', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546865561600', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546869755904', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546873950208', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546882338816', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546886533120', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546890727424', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546894921728', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546899116032', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546903310336', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546907504640', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546911698944', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546915893248', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546920087552', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546924281856', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546932670464', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546936864768', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546941059072', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546945253376', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546949447680', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546957836288', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546962030592', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546966224896', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546970419200', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546974613504', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546978807808', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546983002112', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546991390720', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546995585024', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412546999779328', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412547003973632', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412547008167936', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412547012362240', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412547016556544', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412547020750848', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412547024945152', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412547029139456', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412547033333760', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412547037528064', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412547041722368', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412547045916672', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412547050110976', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412547054305280', 'ggg', 3, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412547058499584', 'hello', 5, 'F', 'admin', '2019-05-10 14:17:40', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576412547066888192', '1', 1, '1', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412547071082496', '1', 1, '1', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412547079471104', '2', 2, '2', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576412547083665408', '1', 1, '1', 'admin', '2019-05-10 14:17:40', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427366151094272', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366159482880', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366167871488', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366172065792', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366180454400', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366184648704', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366193037312', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366201425920', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366205620224', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366214008832', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366218203136', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366222397440', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366230786048', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366234980352', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366239174656', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366243368960', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366251757568', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366255951872', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366264340480', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366272729088', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366276923392', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366285312000', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366289506304', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366293700608', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366302089216', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366306283520', '1', 1, '1', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427366310477824', '1', 1, '1', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427366314672128', '2', 2, '2', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427366318866432', '1', 1, '1', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427366327255040', 'zhangchuang2', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', '2019-02-22 22:05:49');
INSERT INTO `ex_single_table` VALUES ('576427366335643648', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366344032256', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366348226560', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366352420864', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366360809472', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366365003776', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366369198080', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366373392384', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366377586688', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366381780992', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366385975296', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366394363904', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366398558208', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366411141120', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366415335424', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366423724032', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366427918336', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366432112640', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366436306944', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366440501248', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366444695552', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366448889856', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366453084160', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366457278464', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366461472768', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366465667072', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366474055680', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366478249984', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366486638592', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366490832896', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366495027200', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366499221504', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366503415808', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366507610112', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366515998720', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366520193024', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366528581632', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366532775936', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366536970240', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366545358848', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366549553152', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366557941760', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366562136064', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366566330368', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366570524672', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366574718976', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366578913280', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366583107584', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366587301888', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366591496192', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366595690496', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366599884800', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366604079104', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366612467712', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366616662016', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366625050624', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366629244928', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366633439232', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366637633536', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366641827840', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366646022144', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366650216448', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366654410752', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366654410753', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366658605056', '1', 1, '1', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427366662799360', '1', 1, '1', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427366666993664', '2', 2, '2', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427366671187968', '1', 1, '1', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427366675382272', 'zhangchuang2', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', '2019-02-22 22:05:49');
INSERT INTO `ex_single_table` VALUES ('576427366683770880', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366687965184', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366696353792', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366700548096', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366704742400', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366708936704', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366717325312', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366721519616', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366725713920', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366729908224', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366734102528', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366738296832', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366742491136', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366746685440', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366755074048', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366759268352', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366767656960', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366771851264', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366780239872', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366784434176', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366788628480', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366792822784', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366797017088', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366801211392', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366805405696', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366809600000', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366813794304', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366817988608', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366826377216', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366830571520', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366838960128', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366843154432', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366872514560', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366880903168', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366885097472', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366889291776', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366897680384', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366901874688', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366906068992', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366910263296', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366914457600', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366918651904', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366922846208', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366927040512', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366931234816', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366935429120', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366939623424', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366943817728', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366948012032', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366952206336', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366960594944', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366968983552', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366973177856', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366977372160', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366981566464', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366989955072', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366994149376', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427366998343680', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367002537984', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367006732288', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367010926592', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367015120896', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367019315200', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367023509504', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367027703808', '1', 1, '1', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427367036092416', '1', 1, '1', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427367040286720', '2', 2, '2', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427367044481024', '1', 1, '1', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427367052869632', 'zhangchuang2', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', '2019-02-22 22:05:49');
INSERT INTO `ex_single_table` VALUES ('576427367057063936', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367061258240', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367065452544', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367073841152', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367078035456', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367082229760', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367086424064', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367090618368', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367099006976', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367107395584', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367111589888', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367119978496', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367124172800', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367128367104', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367132561408', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367140950016', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367145144320', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367149338624', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367153532928', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367157727232', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367161921536', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367174504448', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367182893056', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367187087360', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367195475968', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367199670272', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367203864576', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367208058880', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367212253184', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367216447488', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367220641792', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367224836096', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367233224704', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367241613312', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367245807616', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367254196224', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367258390528', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367262584832', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367270973440', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367275167744', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367279362048', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367287750656', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367291944960', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367296139264', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367300333568', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367312916480', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367317110784', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367325499392', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367329693696', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367333888000', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367338082304', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367342276608', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367346470912', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367350665216', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367354859520', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367359053824', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367363248128', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367363248129', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367367442432', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367375831040', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367384219648', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367392608256', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367396802560', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367400996864', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367409385472', '1', 1, '1', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427367413579776', '1', 1, '1', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427367417774080', '2', 2, '2', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427367421968384', '1', 1, '1', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427367426162688', 'zhangchuang2', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', '2019-02-22 22:05:49');
INSERT INTO `ex_single_table` VALUES ('576427367430356992', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367434551296', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367438745600', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367442939904', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367455522816', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367463911424', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367468105728', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367476494336', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367480688640', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367484882944', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367489077248', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367497465856', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367501660160', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367505854464', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367510048768', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367522631680', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367531020288', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367539408896', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367547797504', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367551991808', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367560380416', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367564574720', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367568769024', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367572963328', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367577157632', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367585546240', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367593934848', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367602323456', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367606517760', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367610712064', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367614906368', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367619100672', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367623294976', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367627489280', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367631683584', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367640072192', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367644266496', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367648460800', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367656849408', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367665238016', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367669432320', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367677820928', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367682015232', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367686209536', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367690403840', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367694598144', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367698792448', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367702986752', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367707181056', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367711375360', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367715569664', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367719763968', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367723958272', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367732346880', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367736541184', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367740735488', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367744929792', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367749124096', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367753318400', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367757512704', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367761707008', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367765901312', 'zhangchuang', 20, 'M', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367774289920', 'ggg', 3, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367778484224', 'hello', 5, 'F', 'admin', '2019-05-10 15:16:34', 'admin', NULL);
INSERT INTO `ex_single_table` VALUES ('576427367782678528', '1', 1, '1', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427367786872832', '1', 1, '1', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427367795261440', '2', 2, '2', 'admin', '2019-05-10 15:16:34', NULL, NULL);
INSERT INTO `ex_single_table` VALUES ('576427367803650048', '1', 1, '1', 'admin', '2019-05-10 15:16:34', NULL, NULL);

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
INSERT INTO `ex_staff` VALUES ('538058415805562880', '张大炮', 'M', 'akb48', '汉族', 180, 180, '开发', '中国河南郑州', '1101202221121', 'admin', '2019-01-24 18:12:02', 'admin', '2019-05-06 19:12:48');
INSERT INTO `ex_staff` VALUES ('575044145819680768', '徐珠贤', '女', 'xxxxxxx', '朝鲜族', 170, 49, '偶像歌手', '韩国首尔', 'xxxxxxx', 'admin', '2019-05-06 19:40:08', NULL, NULL);

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
INSERT INTO `ex_staff_education` VALUES ('538058415943974912', '清华大学', '本科', '2019-01-24 00:00:00', '2020-03-05 00:00:00', '538058415805562880', 'admin', '2019-01-24 18:12:03', 'admin', '2019-05-06 19:12:48');
INSERT INTO `ex_staff_education` VALUES ('538058415943974913', '北大学', '专科', '2019-01-24 00:00:00', '2019-01-25 00:00:00', '538058415805562880', 'admin', '2019-01-24 18:12:03', 'admin', '2019-05-06 19:12:48');
INSERT INTO `ex_staff_education` VALUES ('575037266418728960', '复旦大学', '本科', '2019-05-06 00:00:00', '2019-05-08 00:00:00', '538058415805562880', 'admin', '2019-05-06 19:12:48', NULL, NULL);
INSERT INTO `ex_staff_education` VALUES ('575044145832263680', '东国大学', '本科', '2013-05-02 00:00:00', '2019-05-06 00:00:00', '575044145819680768', 'admin', '2019-05-06 19:40:08', NULL, NULL);
INSERT INTO `ex_staff_education` VALUES ('575044145832263681', 'xxxxxx', '高中', '2019-05-06 00:00:00', '2019-05-16 00:00:00', '575044145819680768', 'admin', '2019-05-06 19:40:08', NULL, NULL);

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
INSERT INTO `ex_staff_experience` VALUES ('538058416011083776', '微软', '软件', '2019-01-24 00:00:00', '2019-01-24 00:00:00', '538058415805562880', '桃谷绘', 'alallalala alaal', 'admin', '2019-01-24 18:12:03', 'admin', '2019-05-06 19:12:48');
INSERT INTO `ex_staff_experience` VALUES ('538063690293837824', 'facebook', '互联网', '2019-01-28 00:00:00', '2022-07-13 00:00:00', '538058415805562880', '扎克', '跌幅扩大开放', 'admin', '2019-01-24 18:33:00', 'admin', '2019-05-06 19:12:48');
INSERT INTO `ex_staff_experience` VALUES ('540235184860037120', 'llalalla', 'lalal', '2019-01-30 00:00:00', '2019-01-30 00:00:00', '538058415805562880', 'llal', 'lsdlfl', 'admin', '2019-01-30 18:21:45', 'admin', '2019-05-06 19:12:48');
INSERT INTO `ex_staff_experience` VALUES ('575044145874206720', 'SM 娱乐', '娱乐文化', '2019-05-06 00:00:00', '2019-05-06 00:00:00', '575044145819680768', '金泰妍', 'xxxxx', 'admin', '2019-05-06 19:40:08', NULL, NULL);

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
INSERT INTO `ex_staff_family` VALUES ('538058416078192640', '马云', '父亲', '538058415805562880', '老板', '啦啦啦', 'admin', '2019-01-24 18:12:03', 'admin', '2019-05-06 19:12:48');
INSERT INTO `ex_staff_family` VALUES ('538064117307539456', '亦菲', '妻子', '538058415805562880', 'actor star', '爱卡卡', 'admin', '2019-01-24 18:34:42', 'admin', '2019-05-06 19:12:48');
INSERT INTO `ex_staff_family` VALUES ('575044145886789632', 'bb', '父亲', '575044145819680768', 'bb', 'bbb', 'admin', '2019-05-06 19:40:08', NULL, NULL);
INSERT INTO `ex_staff_family` VALUES ('575044145886789633', 'mm', '母亲', '575044145819680768', 'mm', 'mmm', 'admin', '2019-05-06 19:40:08', NULL, NULL);

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
  `state` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态，on启用off禁用',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `groupCode`(`groupCode`) USING BTREE,
  INDEX `dictValue`(`dictValue`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('521827824076587009', 'userState', '正常', '0', 'debug', '2018-12-10 23:17:28', 'debug', '2018-12-11 13:15:56', 1, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('521827863423352832', 'userState', '禁用', '1', 'debug', '2018-12-10 23:17:37', 'debug', '2018-12-11 13:16:01', 2, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('521827943521976321', 'jobLevel', '普通员工', 'staff', 'debug', '2018-12-10 23:17:56', NULL, NULL, 1, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('521828020609089537', 'jobLevel', '组长', 'monitor', 'debug', '2018-12-10 23:18:15', NULL, NULL, 2, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('521828077643235328', 'jobLevel', '主管', 'director', 'debug', '2018-12-10 23:18:28', NULL, NULL, 3, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('538060176058482688', 'education', '小学', '小学', 'admin', '2019-01-24 18:19:02', NULL, NULL, 1, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('538060214528638976', 'education', '初中', '初中', 'admin', '2019-01-24 18:19:11', NULL, NULL, 2, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('538060303070396416', 'education', '高中', '高中', 'admin', '2019-01-24 18:19:32', NULL, NULL, 3, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('538060348284993536', 'education', '专科', '专科', 'admin', '2019-01-24 18:19:43', NULL, NULL, 4, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('538060393835134976', 'education', '本科', '本科', 'admin', '2019-01-24 18:19:54', NULL, NULL, 5, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('538060704649838592', 'familyRelation', '父亲', '父亲', 'admin', '2019-01-24 18:21:08', NULL, NULL, 1, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('538060775592296448', 'familyRelation', '母亲', '母亲', 'admin', '2019-01-24 18:21:25', NULL, NULL, 2, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('538060824728567808', 'familyRelation', '妻子', '妻子', 'admin', '2019-01-24 18:21:37', NULL, NULL, 3, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('538060869523734528', 'familyRelation', '丈夫', '丈夫', 'admin', '2019-01-24 18:21:47', NULL, NULL, 4, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('538060914461507584', 'familyRelation', '儿子', '儿子', 'admin', '2019-01-24 18:21:58', NULL, NULL, 5, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('538060979527745536', 'familyRelation', '女儿', '女儿', 'admin', '2019-01-24 18:22:14', 'admin', '2019-02-22 10:20:48', 6, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('546767390843600896', 'theme', '默认', 'default #447eff', 'admin', '2019-02-17 18:58:24', 'admin', '2019-02-17 19:00:44', 1, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('546767600428777472', 'theme', '绿色', 'green #40b370', 'admin', '2019-02-17 18:59:14', 'admin', '2019-02-17 19:00:39', 2, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('546767700571979776', 'theme', '浅绿色', 'wechat #09b83e', 'admin', '2019-02-17 18:59:38', 'admin', '2019-02-17 20:56:30', 3, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('546767905048494080', 'theme', '深蓝色', 'wordpress #21759b', 'admin', '2019-02-17 19:00:27', 'admin', '2019-02-17 20:56:23', 4, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('546798242201862144', 'theme', '红色', 'gplus #fc5832', 'admin', '2019-02-17 21:00:59', 'admin', '2019-05-12 14:54:38', 5, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('546798541595475968', 'theme', '紫色', 'yahoo #7280fa', 'admin', '2019-02-17 21:02:11', 'admin', '2019-04-12 14:00:21', 6, NULL, 'on');
INSERT INTO `sys_dict` VALUES ('601173470222483456', 'OACategory', '测试', '测试', 'admin', '2019-07-17 22:08:45', 'admin', '2019-07-17 22:17:56', 1, NULL, 'on');

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
INSERT INTO `sys_dict_group` VALUES ('601173420599672832', '流程分类', 'OACategory', 'admin', '2019-07-17 22:08:33', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `menuName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `menuCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单编码',
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
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `menuCode`(`menuCode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('520749715428474880', '权限管理', NULL, '/', 'iconfont icon-permission', 2, '0', 'debug', '2018-12-07 23:53:27', 'admin', '2019-07-18 22:21:26');
INSERT INTO `sys_menu` VALUES ('520750975204458496', '系统运维', NULL, '/', 'iconfont icon-operation', 3, '0', 'debug', '2018-12-07 23:58:27', 'zhangchuang', '2018-12-16 14:08:18');
INSERT INTO `sys_menu` VALUES ('520751411466600448', '菜单管理', 'sysMenu', '/sysMenu', 'iconfont icon-menu', 1, '520749715428474880', 'debug', '2018-12-08 00:00:11', 'debug', '2018-12-10 18:52:08');
INSERT INTO `sys_menu` VALUES ('520751483449245697', '角色管理', 'sysRole', '/sysRole', 'iconfont icon-role', 2, '520749715428474880', 'debug', '2018-12-08 00:00:28', 'debug', '2018-12-10 18:52:22');
INSERT INTO `sys_menu` VALUES ('520751566345469952', '机构管理', 'sysOrg', '/sysOrg', 'iconfont icon-org', 5, '520749715428474880', 'debug', '2018-12-08 00:00:48', 'zhangchuang', '2018-12-16 11:09:56');
INSERT INTO `sys_menu` VALUES ('520751881509666817', '用户管理', 'sysUser', '/sysUser', 'iconfont icon-user', 4, '520749715428474880', 'debug', '2018-12-08 00:02:03', 'zhangchuang', '2018-12-16 11:08:39');
INSERT INTO `sys_menu` VALUES ('520752428128141312', '数据字典', 'sysDict', '/sysDict', 'iconfont icon-dict', 1, '520750975204458496', 'debug', '2018-12-08 00:04:13', 'debug', '2018-12-10 19:03:56');
INSERT INTO `sys_menu` VALUES ('520752809180659712', '访问日志', 'sysVisitLog', '/sysVisitLog', 'iconfont icon-visitLog', 5, '520750975204458496', 'debug', '2018-12-08 00:05:44', 'admin', '2019-05-11 16:01:11');
INSERT INTO `sys_menu` VALUES ('520753306482507776', '账号解锁', 'sysUserUnlock', '/sysUserUnlock', 'iconfont icon-unlock', 4, '520750975204458496', 'debug', '2018-12-08 00:07:43', 'admin', '2019-05-11 16:01:02');
INSERT INTO `sys_menu` VALUES ('520753742492991488', '通知类型', 'sysNoticeType', '/sysNoticeType', 'iconfont icon-noticeType', 2, '520750975204458496', 'debug', '2018-12-08 00:09:27', 'admin', '2019-05-11 16:00:44');
INSERT INTO `sys_menu` VALUES ('529975794877857792', '定时任务', 'sysTask', '/sysTask', 'iconfont icon-task', 3, '520750975204458496', 'admin', '2019-01-02 10:54:35', 'admin', '2019-05-11 16:00:53');
INSERT INTO `sys_menu` VALUES ('533964782852636672', '测试例子', NULL, '/', 'iconfont icon-gencode', 4, '0', 'admin', '2019-01-13 11:05:24', 'admin', '2019-02-24 10:18:04');
INSERT INTO `sys_menu` VALUES ('533964972439371776', '普通单表', 'exSingleTable', '/exSingleTable', 'iconfont icon-gencode', 1, '533964782852636672', 'admin', '2019-01-13 11:06:10', NULL, NULL);
INSERT INTO `sys_menu` VALUES ('537980279722082304', '一对多表', 'exStaff', '/exStaff', 'iconfont icon-gencode', 3, '533964782852636672', 'admin', '2019-01-24 13:01:33', 'admin', '2019-05-11 17:10:27');
INSERT INTO `sys_menu` VALUES ('560430837321957376', '代码生成', 'genOnline', '/genOnline', 'iconfont icon-gencode', 9, '520750975204458496', 'admin', '2019-03-27 11:52:04', 'admin', '2019-03-27 11:52:33');
INSERT INTO `sys_menu` VALUES ('589554668238012416', '系统参数', 'sysSetting', '/sysSetting', 'iconfont icon-setting', 10, '520750975204458496', 'admin', '2019-06-15 20:39:46', 'admin', '2019-06-16 18:46:51');
INSERT INTO `sys_menu` VALUES ('601158856554315776', '流程部署', 'processDeploy', '/processDeploy', 'iconfont icon-gencode', 3, '601517151597101056', 'admin', '2019-07-17 21:10:40', 'admin', '2019-07-21 20:54:58');
INSERT INTO `sys_menu` VALUES ('601159063673241600', '流程定义', 'processDefine', '/processDefine', 'iconfont icon-gencode', 4, '601517151597101056', 'admin', '2019-07-17 21:11:30', 'admin', '2019-07-21 20:14:07');
INSERT INTO `sys_menu` VALUES ('601517151597101056', 'OA办公', NULL, '/', 'iconfont icon-gencode', 0, '0', 'admin', '2019-07-18 20:54:25', 'admin', '2019-07-18 21:42:31');
INSERT INTO `sys_menu` VALUES ('601521906507579392', '我的任务', 'myTask', '/myTask', 'iconfont icon-gencode', 2, '601517151597101056', 'admin', '2019-07-18 21:13:18', 'admin', '2019-07-20 23:19:15');
INSERT INTO `sys_menu` VALUES ('601522119347535872', '我的流程', 'myProcess', '/myProcess', 'iconfont icon-gencode', 1, '601517151597101056', 'admin', '2019-07-18 21:14:09', 'admin', '2019-07-20 23:19:05');
INSERT INTO `sys_menu` VALUES ('601522637276971008', '流程中心', 'processDefineLatest', '/processDefineLatest', 'iconfont icon-gencode', 0, '601517151597101056', 'admin', '2019-07-18 21:16:12', 'admin', '2019-07-18 21:17:06');

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
INSERT INTO `sys_notice` VALUES ('598227896263245824', 'delVisitLog', '访问日志删除', 'admin 于 2019-07-09 19:04:04 删除了 40 条 访问日志。', '2019-07-09 19:04:05', '2019-07-19 19:04:05', '2019-07-29 19:04:05');

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
-- Table structure for sys_notice_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_type`;
CREATE TABLE `sys_notice_type`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `cate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类',
  `typeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `typeCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息编码',
  `logo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'LOGO图标',
  `tpl` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息模板',
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
INSERT INTO `sys_notice_type` VALUES ('534774841853607936', '系统使用', '访问日志删除', 'delVisitLog', 'upload/image/2019_07_09/598094492565766144.jpg', 'FTL{username!} 于 FTL{datetime!} 删除了 FTL{number!} 条 访问日志。', '删除系统访问日志时，触发改消息通知', 10, 20, 'admin', '2019-01-15 16:44:17', 'admin', '2019-07-09 10:14:00');
INSERT INTO `sys_notice_type` VALUES ('534775887648784384', '系统使用', '无权限操作', 'noPermissionOpe', 'upload/image/2019_07_09/598094525994369024.jpg', 'FTL{username!} 于 FTL{date!} 访问 无权限操作 FTL{visitUrl!}.', '用户执行访问无权限路径，点击无权限的按钮时，触发该操作', 30, 60, 'admin', '2019-01-15 16:48:27', 'admin', '2019-07-09 10:14:08');

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
INSERT INTO `sys_notice_type_sys_role` VALUES ('534775887648784384', '538438949161402368', 'admin', '2019-04-03 18:56:55');

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
  UNIQUE INDEX `orgCode`(`orgCode`) USING BTREE,
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
INSERT INTO `sys_org` VALUES ('520707412714323969', '生产中心', 'sczxx', 'sczx', NULL, 6, '520706829357940736', 'debug', NULL, '2018-12-07 21:05:21', NULL, NULL);
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
INSERT INTO `sys_role` VALUES ('601143921250140160', '人力员工', 'hrStaff', '人力资源员工，用于测试activiti 流程审批', 4, 'admin', '2019-07-17 20:11:20', NULL, NULL);

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
INSERT INTO `sys_role_button` VALUES ('520339201795817472', '551755995999633408', 'admin', '2019-05-11 17:57:34');
INSERT INTO `sys_role_button` VALUES ('520339201795817472', '551756070234619904', 'admin', '2019-05-11 17:57:34');

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
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520751411466600448', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520751483449245697', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520751566345469952', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520751881509666817', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520752428128141312', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520752809180659712', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520753306482507776', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '520753742492991488', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '529975794877857792', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '533964972439371776', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '537980279722082304', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '560430837321957376', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '589554668238012416', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '601158856554315776', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '601159063673241600', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '601521906507579392', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '601522119347535872', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520339201795817472', '601522637276971008', 'admin', '2019-07-18 21:17:58');
INSERT INTO `sys_role_menu` VALUES ('520340379124367361', '520752809180659712', 'admin', '2019-01-15 17:03:04');
INSERT INTO `sys_role_menu` VALUES ('520340379124367361', '520753306482507776', 'admin', '2019-01-15 17:03:04');
INSERT INTO `sys_role_menu` VALUES ('520340379124367361', '529975794877857792', 'admin', '2019-01-15 17:03:04');
INSERT INTO `sys_role_menu` VALUES ('538438949161402368', '533964972439371776', 'admin', '2019-02-22 09:12:40');

-- ----------------------------
-- Table structure for sys_setting
-- ----------------------------
DROP TABLE IF EXISTS `sys_setting`;
CREATE TABLE `sys_setting`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `settingInfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '说明',
  `settingCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设置编码',
  `settingValue` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设置编码值',
  `updater` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后修改人',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sys_user_setting_sysUser`(`settingCode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户设置项' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_setting
-- ----------------------------
INSERT INTO `sys_setting` VALUES ('589566528542736384', '登录背景图', 'loginBackgroundImg', 'http://img.netbian.com/file/20130623/4788369295bc8017139e42f9425d6c1f.jpg', 'admin', '2019-06-18 17:11:37');
INSERT INTO `sys_setting` VALUES ('589588733792092160', '系统主题 default、wechat、yahoo、gplus 任选其一', 'sysTheme', 'default', 'admin', '2019-07-20 22:45:23');
INSERT INTO `sys_setting` VALUES ('589885672161017856', '系统标题', 'sysTitle', 'mycurd 开发脚手架', 'admin', '2019-06-18 16:20:35');

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
INSERT INTO `sys_task_log` VALUES ('565568215904681984', 'com.github.qinyou.system.task.TestTask', '2019-04-10 16:06:10', '2019-04-10 16:06:15', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('565568251669512192', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-04-10 16:06:19', '2019-04-10 16:06:19', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('566282509596229632', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-04-12 15:24:31', '2019-04-12 15:24:31', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('569596492520620032', 'com.github.qinyou.system.task.TestTask', '2019-04-21 18:53:06', '2019-04-21 18:53:11', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('569596565233074176', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-04-21 18:53:24', '2019-04-21 18:53:24', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('575044317534486528', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-05-06 19:40:49', '2019-05-06 19:40:49', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('576871454721703936', 'com.github.qinyou.system.task.TestTask', '2019-05-11 20:41:13', '2019-05-11 20:41:18', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('576925256971714560', 'com.github.qinyou.system.task.TestTask', '2019-05-12 00:15:00', '2019-05-12 00:15:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('576925508583817216', 'com.github.qinyou.system.task.TestTask', '2019-05-12 00:16:00', '2019-05-12 00:16:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('576925760237862912', 'com.github.qinyou.system.task.TestTask', '2019-05-12 00:17:00', '2019-05-12 00:17:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('576926011896102912', 'com.github.qinyou.system.task.TestTask', '2019-05-12 00:18:00', '2019-05-12 00:18:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('576926263558537216', 'com.github.qinyou.system.task.TestTask', '2019-05-12 00:19:00', '2019-05-12 00:19:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('576926515212582912', 'com.github.qinyou.system.task.TestTask', '2019-05-12 00:20:00', '2019-05-12 00:20:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('576926766866628608', 'com.github.qinyou.system.task.TestTask', '2019-05-12 00:21:00', '2019-05-12 00:21:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('576927018529062912', 'com.github.qinyou.system.task.TestTask', '2019-05-12 00:22:00', '2019-05-12 00:22:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('577105797226430464', 'com.github.qinyou.system.task.TestTask', '2019-05-12 12:12:24', '2019-05-12 12:12:29', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('577105831842021376', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-05-12 12:12:32', '2019-05-12 12:12:32', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('584842826433429504', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-06-02 20:36:36', '2019-06-02 20:36:36', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('584842835291799552', 'com.github.qinyou.system.task.TestTask', '2019-06-02 20:36:38', '2019-06-02 20:36:43', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('601926244816125952', 'com.github.qinyou.system.task.TestTask', '2019-07-20 00:00:00', '2019-07-20 00:00:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('601926496424034304', 'com.github.qinyou.system.task.TestTask', '2019-07-20 00:01:00', '2019-07-20 00:01:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602288632690114560', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:00:00', '2019-07-21 00:00:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602288884293828608', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:01:00', '2019-07-21 00:01:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602289135960457216', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:02:00', '2019-07-21 00:02:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602289387610308608', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:03:00', '2019-07-21 00:03:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602289639272742912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:04:00', '2019-07-21 00:04:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602289890930982912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:05:00', '2019-07-21 00:05:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602290142593417216', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:06:00', '2019-07-21 00:06:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602290394243268608', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:07:00', '2019-07-21 00:07:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602290645909897216', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:08:00', '2019-07-21 00:08:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602290897563942912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:09:00', '2019-07-21 00:09:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602291149226377216', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:10:00', '2019-07-21 00:10:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602291400876228608', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:11:00', '2019-07-21 00:11:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602291652534468608', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:12:00', '2019-07-21 00:12:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602291904247234560', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:13:00', '2019-07-21 00:13:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602292155859337216', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:14:00', '2019-07-21 00:14:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602292407513382912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:15:00', '2019-07-21 00:15:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602292659251314688', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:16:00', '2019-07-21 00:16:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602292910829862912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:17:00', '2019-07-21 00:17:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602293162488102912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:18:00', '2019-07-21 00:18:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602293414200868864', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:19:00', '2019-07-21 00:19:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602293665804582912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:20:00', '2019-07-21 00:20:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602294169171394560', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:22:00', '2019-07-21 00:22:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602294420783497216', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:23:00', '2019-07-21 00:23:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602294672487874560', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:24:00', '2019-07-21 00:24:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602294924091588608', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:25:00', '2019-07-21 00:25:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602295175754022912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:26:00', '2019-07-21 00:26:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602295427416457216', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:27:00', '2019-07-21 00:27:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602295679070502912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:28:00', '2019-07-21 00:28:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602295930724548608', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:29:00', '2019-07-21 00:29:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602296182386982912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:30:00', '2019-07-21 00:30:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602296434045222912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:31:00', '2019-07-21 00:31:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602296685699268608', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:32:00', '2019-07-21 00:32:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602296937357508608', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:33:00', '2019-07-21 00:33:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602297189019942912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:34:00', '2019-07-21 00:34:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602297692365783040', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:36:00', '2019-07-21 00:36:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602297943998857216', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:37:00', '2019-07-21 00:37:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602298195652902912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:38:00', '2019-07-21 00:38:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602298447315337216', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:39:00', '2019-07-21 00:39:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602298698969382912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:40:00', '2019-07-21 00:40:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602298950627622912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:41:00', '2019-07-21 00:41:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602299202285862912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:42:00', '2019-07-21 00:42:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602299453948297216', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:43:00', '2019-07-21 00:43:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602299705610731520', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:44:00', '2019-07-21 00:44:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602299957260582912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:45:00', '2019-07-21 00:45:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602300208918822912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:46:00', '2019-07-21 00:46:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602300460577062912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:47:00', '2019-07-21 00:47:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602300712235302912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:48:00', '2019-07-21 00:48:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602300963893542912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:49:00', '2019-07-21 00:49:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602301215551782912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:50:00', '2019-07-21 00:50:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602301467210022912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:51:00', '2019-07-21 00:51:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602301718889234432', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:52:00', '2019-07-21 00:52:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602301970526502912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:53:00', '2019-07-21 00:53:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602302222201520128', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:54:00', '2019-07-21 00:54:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602302473847177216', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:55:00', '2019-07-21 00:55:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602302725501222912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:56:00', '2019-07-21 00:56:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602302977159462912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:57:00', '2019-07-21 00:57:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602303228817702912', 'com.github.qinyou.system.task.TestTask', '2019-07-21 00:58:00', '2019-07-21 00:58:05', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602303732142571520', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:00:00', '2019-07-21 01:00:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602303983792422912', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:01:00', '2019-07-21 01:01:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602304235551326208', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:02:00', '2019-07-21 01:02:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602304487104708608', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:03:00', '2019-07-21 01:03:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602305242104594432', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:06:00', '2019-07-21 01:06:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602305493741862912', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:07:00', '2019-07-21 01:07:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602305745404297216', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:08:00', '2019-07-21 01:08:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602305997054148608', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:09:00', '2019-07-21 01:09:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602306248712388608', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:10:00', '2019-07-21 01:10:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602306500374822912', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:11:00', '2019-07-21 01:11:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602306752037257216', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:12:00', '2019-07-21 01:12:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602307003695497216', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:13:00', '2019-07-21 01:13:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602307255353737216', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:14:00', '2019-07-21 01:14:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602307507133612032', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:15:00', '2019-07-21 01:15:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602307758666022912', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:16:00', '2019-07-21 01:16:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602308010324262912', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:17:00', '2019-07-21 01:17:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602308261986697216', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:18:00', '2019-07-21 01:18:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602308513640742912', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:19:00', '2019-07-21 01:19:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602308765298982912', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:20:00', '2019-07-21 01:20:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602309016957222912', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:21:00', '2019-07-21 01:21:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602309268619657216', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:22:00', '2019-07-21 01:22:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602309520273702912', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:23:00', '2019-07-21 01:23:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602309771936137216', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:24:00', '2019-07-21 01:24:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602310023665680384', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:25:00', '2019-07-21 01:25:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602310275240034304', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:26:00', '2019-07-21 01:26:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602310526910857216', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:27:00', '2019-07-21 01:27:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602310778569097216', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:28:00', '2019-07-21 01:28:00', 'success', NULL);
INSERT INTO `sys_task_log` VALUES ('602311030223142912', 'com.github.qinyou.system.task.DelSysNoticeTask', '2019-07-21 01:29:00', '2019-07-21 01:29:00', 'success', NULL);

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
INSERT INTO `sys_user` VALUES ('522044507147993088', 'debug', '7c4a8d09ca3762af61e59520943dc26494f8941b', '开发调试', 'static/image/male.jpg', 'M', 'qinyou1994@outlook.com', '15238002477', '520707499788075008', '开发工程师', 'staff', NULL, NULL, NULL, 'debug', '2018-12-11 13:38:29', 'debug', '2018-12-12 11:21:13', '0', NULL);
INSERT INTO `sys_user` VALUES ('522465144505106432', 'admin', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', '张闯', 'upload/image/2019_07_09/598088017822875648.jpg', 'M', '15238002477@163.com', '15238002477', '520710334881726465', '开发工程师', 'staff', NULL, NULL, '2019-07-21 21:50:38', 'debug', '2018-12-12 17:29:57', 'admin', '2019-02-22 14:59:32', '0', NULL);
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
INSERT INTO `sys_user_role` VALUES ('522465144505106432', '520340379124367361', 'admin', '2019-04-18 18:19:29');
INSERT INTO `sys_user_role` VALUES ('522465144505106432', '538438949161402368', 'admin', '2019-04-18 18:19:29');
INSERT INTO `sys_user_role` VALUES ('522465900809420800', '520340379124367361', 'admin', '2019-02-24 21:37:12');
INSERT INTO `sys_user_role` VALUES ('549336387174793216', '520339201795817472', 'admin', '2019-02-24 21:09:17');
INSERT INTO `sys_user_role` VALUES ('549336387174793216', '520340379124367361', 'admin', '2019-02-24 21:10:00');
INSERT INTO `sys_user_role` VALUES ('549336387174793216', '538438949161402368', 'admin', '2019-02-24 21:10:00');

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
  `device` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '设备',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `SYS_VISIT_LOG_SYS_USER_IP_IX`(`sysUserIp`) USING BTREE,
  INDEX `SYS_VISIT_LOG_SYS_USER_IX`(`sysUser`) USING BTREE,
  INDEX `SYS_VISIT_LOG_URL_IX`(`url`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问日志' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
