/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : spring_security

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-09-30 16:28:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for apirule
-- ----------------------------
DROP TABLE IF EXISTS `apirule`;
CREATE TABLE `apirule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ruleName` varchar(50) DEFAULT NULL COMMENT '规则名称',
  `ruleUrl` varchar(200) DEFAULT NULL COMMENT '权限Url',
  `cateId` int(11) DEFAULT NULL COMMENT '相关分类',
  `createDate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cateName` varchar(50) NOT NULL COMMENT '分类名称',
  `type` int(3) DEFAULT '0' COMMENT '0api 1模块',
  `code` varchar(20) DEFAULT NULL COMMENT '编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apirule
-- ----------------------------
INSERT INTO `apirule` VALUES ('1', 'apirule列表', '/sys-api/sys/apirule/page', '10', '2018-05-31 17:20:43', 'sys', '0', null);
INSERT INTO `apirule` VALUES ('2', 'apirule删除', '/sys-api/sys/apirule/delete', '10', '2018-06-04 18:36:59', 'sys', '0', null);
INSERT INTO `apirule` VALUES ('3', '订单列表', '/order-api/order/orderinfo/select', '5', '2018-06-04 18:38:12', 'sys', '0', null);
INSERT INTO `apirule` VALUES ('4', 'apirule列表', '/sys-api/sys/apirule/page', '10', '2018-06-05 17:59:29', 'sys', '0', null);
INSERT INTO `apirule` VALUES ('5', '订单微服务', null, '5', '2018-06-05 18:19:12', '订单微服务', '1', '001');
INSERT INTO `apirule` VALUES ('6', '角色添加', '/sys-api/sys/role/add', '10', '2018-06-05 18:32:13', 'sys', '0', null);
INSERT INTO `apirule` VALUES ('7', '商品微服务', null, '7', '2018-06-05 18:38:33', '商品微服务', '1', '002');
INSERT INTO `apirule` VALUES ('10', '系统微服务', null, '10', '2018-06-06 12:10:40', '系统微服务', '1', '003');

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(20) DEFAULT NULL,
  `cateName` varchar(50) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cate
-- ----------------------------
INSERT INTO `cate` VALUES ('1', '001', 'sys系统基础');
INSERT INTO `cate` VALUES ('2', '002', '商品微服务');
INSERT INTO `cate` VALUES ('3', '003', '订单微服务');
INSERT INTO `cate` VALUES ('4', '004', 'BI系统');
INSERT INTO `cate` VALUES ('5', '005', '新闻管理');
INSERT INTO `cate` VALUES ('8', '006', '图片管理');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(50) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menuName` varchar(50) NOT NULL COMMENT '菜单名称',
  `pid` varchar(50) DEFAULT NULL COMMENT '父级菜单ID',
  `url` varchar(255) DEFAULT NULL COMMENT '菜单连接地址',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `deep` int(11) NOT NULL COMMENT '深度',
  `code` varchar(50) NOT NULL COMMENT '编码',
  `dataResource` varchar(50) DEFAULT NULL COMMENT '数据权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '会员管理', '0', null, '&#xe6b8;', '0', '1', '01', '');
INSERT INTO `menu` VALUES ('2', '会员列表', '1', './pages/member/list.html', '&#xe6a7;', '1', '2', '0101', null);
INSERT INTO `menu` VALUES ('3', '会员删除', '1', './pages/member/del.html', '&#xe6a7;', '2', '2', '0102', null);
INSERT INTO `menu` VALUES ('4', '会员管理', '1', null, '&#xe70b;', '3', '2', '0103', null);
INSERT INTO `menu` VALUES ('5', '输入框操作', '4', './pages/member/addInput.html', '&#xe6a7;', '4', '3', '010301', null);
INSERT INTO `menu` VALUES ('6', '会员删除', '4', './pages/404.html', '&#xe6a7;', '5', '3', '010302', null);
INSERT INTO `menu` VALUES ('7', '等级管理', '4', './pages/404.html', '&#xe6a7;', '6', '3', '010303', null);
INSERT INTO `menu` VALUES ('8', '文章管理', '0', null, '&#xe705;', '7', '1', '02', null);
INSERT INTO `menu` VALUES ('9', '文章列表', '8', './pages/article/list.html', '&#xe6a7;', '8', '2', '0201', null);
INSERT INTO `menu` VALUES ('10', '分类管理', '8', './pages/article/category.html', '&#xe6a7;', '9', '2', '0202', null);
INSERT INTO `menu` VALUES ('11', '订单管理', '0', null, '&#xe723;', '10', '1', '03', null);
INSERT INTO `menu` VALUES ('12', '订单列表1', '11', './pages/order/list.html', '&#xe6a7;', '11', '2', '0301', null);
INSERT INTO `menu` VALUES ('13', '管理员管理', '0', null, '&#xe726;', '12', '1', '04', null);
INSERT INTO `menu` VALUES ('14', '管理员列表', '13', './pages/admin/list.html', '&#xe6a7;', '13', '2', '0401', null);
INSERT INTO `menu` VALUES ('15', '角色管理', '13', './pages/admin/role.html', '&#xe6a7;', '14', '2', '0402', null);
INSERT INTO `menu` VALUES ('16', '用户管理', '13', './pages/admin/user/list.html', '&#xe6a7;', '15', '2', '0403', null);
INSERT INTO `menu` VALUES ('17', '菜单管理', '13', './pages/admin/menu/list.html', '&#xe6a7;', '16', '2', '0404', null);
INSERT INTO `menu` VALUES ('18', '角色菜单', '13', './pages/admin/role/list.html', '&#xe6a7;', '17', '2', '0405', null);
INSERT INTO `menu` VALUES ('19', '权限分类', '13', './pages/admin/dataauthority/cate.html', '&#xe6a7;', '18', '2', '0406', null);
INSERT INTO `menu` VALUES ('20', '权限管理', '13', './pages/admin/dataauthority/apirule.html', '&#xe6a7;', '19', '2', '0407', null);
INSERT INTO `menu` VALUES ('21', '系统统计', '0', null, '&#xe6ce;', '20', '1', '05', null);
INSERT INTO `menu` VALUES ('22', '拆线图', '21', './pages/echarts/echarts1.html', '&#xe6a7;', '21', '2', '0501', null);
INSERT INTO `menu` VALUES ('23', '柱状图', '21', './pages/echarts/echarts2.html', '&#xe6a7;', '22', '2', '0502', null);
INSERT INTO `menu` VALUES ('24', '地图', '21', './pages/echarts/echarts3.html', '&#xe6a7;', '23', '2', '0503', null);
INSERT INTO `menu` VALUES ('25', '饼图', '21', './pages/echarts/echarts4.html', '&#xe6a7;', '24', '2', '0504', null);
INSERT INTO `menu` VALUES ('26', '雷达图', '21', './pages/echarts/echarts5.html', '&#xe6a7;', '25', '2', '0505', null);
INSERT INTO `menu` VALUES ('27', 'k线图', '21', './pages/echarts/echarts6.html', '&#xe6a7;', '26', '2', '0506', null);
INSERT INTO `menu` VALUES ('28', '热力图', '21', './pages/echarts/echarts7.html', '&#xe6a7;', '27', '2', '0507', null);
INSERT INTO `menu` VALUES ('29', '仪表图', '21', './pages/echarts/echarts8.html', '&#xe6a7;', '28', '2', '0508', null);
INSERT INTO `menu` VALUES ('30', '地图DIY实例', '21', './pages/echarts/echarts9.html', '&#xe6a7;', '29', '2', '0509', null);
INSERT INTO `menu` VALUES ('31', 'POS奖励管理', '0', null, '&#xe6ce;', '30', '1', '06', null);
INSERT INTO `menu` VALUES ('32', '用户管理', '31', './pages/reward/user/list.html', '&#xe6a7;', '31', '2', '0601', null);
INSERT INTO `menu` VALUES ('33', '月奖管理', '31', './pages/reward/reward/list.html', '&#xe6a7;', '32', '2', '0602', null);
INSERT INTO `menu` VALUES ('34', '流水管理', '31', './pages/reward/funds/list.html', '&#xe6a7;', '33', '2', '0603', null);
INSERT INTO `menu` VALUES ('36', '文章删除', '8', './page/404.html', null, '0', '2', '0203', null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `roleName` varchar(50) NOT NULL COMMENT '角色名称',
  `roleDesc` varchar(300) DEFAULT NULL COMMENT '角色描述',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'ROLE_PERSONAL', 'psersonal项目角色', 'psersonal项目角色', '2018-05-09 11:45:47');
INSERT INTO `role` VALUES ('2', 'ROLE_BOSS', '管理员', '管理员', '2018-05-09 11:44:17');
INSERT INTO `role` VALUES ('3', 'ROLE_MANAGER', '普通管理员', '普通管理员', '2018-05-09 11:57:03');
INSERT INTO `role` VALUES ('4', 'ROLE_EMPLOYEE', '测试角色', '测试角色', '2018-05-09 11:57:05');
INSERT INTO `role` VALUES ('5', 'ROLE_SYS', 'sys项目管理', 'sys项目管理', '2018-05-09 14:35:14');
INSERT INTO `role` VALUES ('6', 'ROLE_REWARD', 'POS微服务', 'POS项目', '2018-09-24 22:17:53');

-- ----------------------------
-- Table structure for role_apirule
-- ----------------------------
DROP TABLE IF EXISTS `role_apirule`;
CREATE TABLE `role_apirule` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `roleId` varchar(50) NOT NULL COMMENT '角色主键',
  `ruleId` varchar(50) NOT NULL COMMENT 'api规则权限主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色api数据权限关联表';

-- ----------------------------
-- Records of role_apirule
-- ----------------------------
INSERT INTO `role_apirule` VALUES ('33859271e2ed47e48840c6c75b723733', '5', '6');
INSERT INTO `role_apirule` VALUES ('380c9b56b95f4b3e912d0fb30289cc25', '5', '4');
INSERT INTO `role_apirule` VALUES ('8744f0f7ce814eb99b49ab2287844b8f', '5', '1');
INSERT INTO `role_apirule` VALUES ('b24e0480dd3943708ad4291ca66d1041', '5', '10');
INSERT INTO `role_apirule` VALUES ('bd908581878d453884f72bf151680293', '5', '2');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `roleId` varchar(50) NOT NULL COMMENT '角色主键',
  `menuId` varchar(50) NOT NULL COMMENT '菜单主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色菜单关联表';

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('0636f69359f44a0fb68e43f660f941e2', '2', '6');
INSERT INTO `role_menu` VALUES ('069f976c2b1745b4b49d76593c390aa9', '2', '28');
INSERT INTO `role_menu` VALUES ('079a13583d844ce58ab175a0327430ed', '5', '19');
INSERT INTO `role_menu` VALUES ('081ba082ec7c44fb891a69f5b10d8f8d', '2', '11');
INSERT INTO `role_menu` VALUES ('12152c2863ca42889c49415179c5e478', '2', '4');
INSERT INTO `role_menu` VALUES ('1dd2a671f7d245de921121cd49ecf2e1', '2', '30');
INSERT INTO `role_menu` VALUES ('220c8cbd66ac42e88719edba001856e8', '1', '3');
INSERT INTO `role_menu` VALUES ('225238a58b9c40ca8e107f3b578b259f', '1', '5');
INSERT INTO `role_menu` VALUES ('282b40f8dbe246f7887d3102fa501842', '2', '20');
INSERT INTO `role_menu` VALUES ('2833ef99caff400fa925dba3f38bd2e8', '5', '13');
INSERT INTO `role_menu` VALUES ('29e7ca8bf1aa4d02b7781f3b481bcfd7', '1', '4');
INSERT INTO `role_menu` VALUES ('2b2d53367bf54a938f738d26134c44ef', '1', '6');
INSERT INTO `role_menu` VALUES ('37a03a80fb9440589153f4e1adff155b', '2', '3');
INSERT INTO `role_menu` VALUES ('387a50792d16442d9739fdec6128d167', '2', '26');
INSERT INTO `role_menu` VALUES ('38dc4cc271d2479881fb512d40b9aefe', '2', '5');
INSERT INTO `role_menu` VALUES ('4109793fdd0a46d08ac377c311365cf5', '2', '18');
INSERT INTO `role_menu` VALUES ('4477f48a88164fd1bb59bacc4540cd42', '2', '2');
INSERT INTO `role_menu` VALUES ('47701af0a07e48f79f829f6bd78a4f17', '2', '7');
INSERT INTO `role_menu` VALUES ('5254b66270fd4f2c8380e342fd1bdded', '4', '19');
INSERT INTO `role_menu` VALUES ('5b7149e8e03945fbb522ed5f354a37f1', '1', '1');
INSERT INTO `role_menu` VALUES ('5db96ffb928f4fa9833c70d003618fd6', '4', '17');
INSERT INTO `role_menu` VALUES ('6899dce226d34470b4a8c0507c8ad1a8', '5', '16');
INSERT INTO `role_menu` VALUES ('6ed52b34d8a34ef5b0319aa18fc3ce0e', '2', '13');
INSERT INTO `role_menu` VALUES ('7125154c26964dd0a56748713f5fb001', '1', '2');
INSERT INTO `role_menu` VALUES ('75d64c40880a44fd84c5bae03cf23eb8', '2', '23');
INSERT INTO `role_menu` VALUES ('7bb56e4dc5164be09defb24a2d752aa5', '5', '17');
INSERT INTO `role_menu` VALUES ('7e12384508ac43a4960df6bb2c900602', '2', '12');
INSERT INTO `role_menu` VALUES ('8a008fa1b7bb448ba25f1e1418a7f836', '2', '24');
INSERT INTO `role_menu` VALUES ('92af75b1308c4979ab8172816474cfca', '4', '18');
INSERT INTO `role_menu` VALUES ('9cf58d8049ab417396d9bd43a7835858', '2', '21');
INSERT INTO `role_menu` VALUES ('9f0ae56781d2473d917be1101456b536', '4', '20');
INSERT INTO `role_menu` VALUES ('a1d861643f014d69bd43932c4547dd8e', '2', '27');
INSERT INTO `role_menu` VALUES ('a2813c7c96304561b3f713d9bc9975a0', '2', '17');
INSERT INTO `role_menu` VALUES ('a2895e25c5f24070a8e28df662bc18f1', '2', '25');
INSERT INTO `role_menu` VALUES ('a56432ea89ec4cc19070432ba207c2a9', '2', '8');
INSERT INTO `role_menu` VALUES ('a604106f6b584d54bc39c7b5c50221ae', '2', '29');
INSERT INTO `role_menu` VALUES ('a7ab04f67ef749eea66ff659e1beca51', '2', '9');
INSERT INTO `role_menu` VALUES ('aa11d19bc62440e7bf94d7718494fe0d', '5', '20');
INSERT INTO `role_menu` VALUES ('aa372dc0eb9e482690089176d1de5aba', '4', '16');
INSERT INTO `role_menu` VALUES ('acc50fd6256a4aa8a1e2ed46861889f5', '4', '13');
INSERT INTO `role_menu` VALUES ('adbdeae2d0fd4debaff0a96fa4bf32fc', '5', '11');
INSERT INTO `role_menu` VALUES ('ae14e31c71be4bbd816c57be8fa913c7', '2', '19');
INSERT INTO `role_menu` VALUES ('b1c8226687fe4b38af14460e7dcafbbc', '2', '16');
INSERT INTO `role_menu` VALUES ('bf6bcdb438854e0b9b3d78913b5a049a', '2', '31');
INSERT INTO `role_menu` VALUES ('ca83f1e3903a4348980cba86903ecf8f', '2', '34');
INSERT INTO `role_menu` VALUES ('d710dee7092e486fb6e8aa89ba653996', '5', '18');
INSERT INTO `role_menu` VALUES ('de20665875be4caf90bb268346f4fbd7', '1', '7');
INSERT INTO `role_menu` VALUES ('e295a1b53006465c9f035623e6fbbd29', '2', '1');
INSERT INTO `role_menu` VALUES ('e88e9bc4368247cfb3042b1b8d7e9a6d', '2', '32');
INSERT INTO `role_menu` VALUES ('ed0aa7eca377427caff1863aa8dfd852', '5', '12');
INSERT INTO `role_menu` VALUES ('ed380b742fa14b8fbbdcc0ff008b45fa', '2', '33');
INSERT INTO `role_menu` VALUES ('f8896148721a4012ad8265a1250f58ec', '2', '22');
INSERT INTO `role_menu` VALUES ('f91a9063a7de4100a4e645c200f11149', '2', '10');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `isEnabled` tinyint(4) unsigned DEFAULT '1' COMMENT '0:不可用 1:可用',
  `type` tinyint(4) DEFAULT '1' COMMENT '1:个人用户，以手机为登录凭证 2:企业用户，以邮箱为登录凭证',
  `creatAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6', '13560005194', '13560005194@qq.com', '13560005194', '$2a$10$s2jT6rTEoreXOCA83VtCluil3Yz7Jc/U858d6AstZZGwaJZVHhLCO', '1', '1', '2018-09-30 16:16:23');
INSERT INTO `user` VALUES ('7', '13560005195', '13560005195@qq.com', '13560005195', '$2a$10$i4.jAPZQrZAYAav3AqzGLeDsA5y.rM1HT.SEXJokBZKstmDWtMxue', '1', '1', null);
INSERT INTO `user` VALUES ('8', '13560005196', '13560005196@qq.com', '18665807774', '$2a$10$s2jT6rTEoreXOCA83VtCluil3Yz7Jc/U858d6AstZZGwaJZVHhLCO', '1', '1', '2018-09-22 22:02:27');
INSERT INTO `user` VALUES ('12', '13560001234', '13560001234@qq.com', '13560001234', '$2a$10$NLdLfxj6pImtds75VbqnTORi4HOjEL5IbuLqZF8TwFev3vvGohRMS', '1', '1', '2018-09-30 16:23:11');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) unsigned DEFAULT NULL,
  `roleId` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('5', '2', '3');
INSERT INTO `user_role` VALUES ('6', '2', '4');
INSERT INTO `user_role` VALUES ('7', '2', '1');
INSERT INTO `user_role` VALUES ('8', '3', '1');
INSERT INTO `user_role` VALUES ('9', '3', '4');
INSERT INTO `user_role` VALUES ('10', '4', '1');
INSERT INTO `user_role` VALUES ('11', '4', '4');
INSERT INTO `user_role` VALUES ('12', '5', '1');
INSERT INTO `user_role` VALUES ('14', '2', '5');
INSERT INTO `user_role` VALUES ('17', '1', '1');
INSERT INTO `user_role` VALUES ('18', '1', '2');
INSERT INTO `user_role` VALUES ('19', '1', '3');
INSERT INTO `user_role` VALUES ('20', '1', '4');
INSERT INTO `user_role` VALUES ('21', '1', '5');
INSERT INTO `user_role` VALUES ('22', '1', '6');
INSERT INTO `user_role` VALUES ('25', '8', '2');
INSERT INTO `user_role` VALUES ('26', '8', '5');
INSERT INTO `user_role` VALUES ('27', '8', '6');
INSERT INTO `user_role` VALUES ('28', '10', '5');
INSERT INTO `user_role` VALUES ('29', '10', '6');
INSERT INTO `user_role` VALUES ('30', '6', '5');
INSERT INTO `user_role` VALUES ('31', '6', '6');
INSERT INTO `user_role` VALUES ('32', '12', '6');
