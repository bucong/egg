/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50641
 Source Host           : localhost:3306
 Source Schema         : egg

 Target Server Type    : MySQL
 Target Server Version : 50641
 File Encoding         : 65001

 Date: 01/11/2018 15:27:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES (1, 'admin', 'bucong');
COMMIT;

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` int(2) DEFAULT NULL COMMENT '1主食，2海鲜，3配菜，4饮品',
  `name` varchar(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `discount` int(2) DEFAULT NULL COMMENT '折扣',
  `praise` int(10) DEFAULT NULL COMMENT '点赞',
  `desc` varchar(100) DEFAULT NULL COMMENT '简介',
  `salesVolume` int(10) DEFAULT NULL COMMENT '销量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity
-- ----------------------------
BEGIN;
INSERT INTO `commodity` VALUES (1, 1, '米饭', 2.00, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1539774639813&di=15e78c4064f35728d2dc21d2a836f565&imgtype=0&src=http%3A%2F%2Fpic36.photophoto.cn%2F20150702%2F0042040209724452_b.jpg', NULL, 0, '苏北大米，香飘万里', 2);
INSERT INTO `commodity` VALUES (2, 2, '剁椒鱼头', 28.00, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1539776504527&di=8b48cd5ddc3d31af3a4fc53848965a20&imgtype=0&src=http%3A%2F%2Fpic3.16pic.com%2F00%2F24%2F41%2F16pic_2441090_b.jpg', 8, 38, NULL, 6);
INSERT INTO `commodity` VALUES (3, 2, '蒜蓉小龙虾', 52.00, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540372413&di=8e78fb295933584390e39c44de23e419&imgtype=jpg&er=1&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimgad%2Fpic%2Fitem%2F72f082025aafa40f59822fe4a064034f78f01946.jpg', NULL, 45, NULL, 0);
INSERT INTO `commodity` VALUES (4, 2, '暴走皮皮虾', 60.00, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1539777931940&di=a4b03cfb5cf429727270e57f6017a936&imgtype=0&src=http%3A%2F%2Fm.tuniucdn.com%2Ffb2%2Ft1%2FG1%2FM00%2FB8%2FB0%2FCii9EFcyoeuIJe7yAAQnTATyvU4AAFX8QFzc4sABCdk945_w500_h280_c1_t0.jpg', 9, 72, NULL, 0);
INSERT INTO `commodity` VALUES (6, 2, '蒜蓉粉丝鲍鱼', 40.00, 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=222791820,2405860313&fm=179&app=42&f=JPEG?w=121&h=140', 4, 0, '开胃鲍鱼，润喉好吃', 0);
COMMIT;

-- ----------------------------
-- Table structure for evaluate
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `cId` int(6) DEFAULT NULL,
  `userId` int(6) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `imgs` longtext,
  `times` varchar(20) DEFAULT NULL,
  `star` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluate
-- ----------------------------
BEGIN;
INSERT INTO `evaluate` VALUES (1, 1, 3, '米饭不错，不干', NULL, '1539853345362', 5);
INSERT INTO `evaluate` VALUES (2, 2, 5, '苏北大米，就是好吃', NULL, '1539953549362', 5);
INSERT INTO `evaluate` VALUES (3, 1, 5, '米饭的很好，呦西', '', '1539953549362', 4);
INSERT INTO `evaluate` VALUES (4, 3, 3, '正宗小龙虾，绝对美味', 'oyl3p0elckd1541055565782.png,bi323tg8zww1541055569922.png,fb27v4tt8vs1541055574494.png', '1541050464522', 4);
INSERT INTO `evaluate` VALUES (8, 4, 3, '皮皮虾，我们走', 'oyl3p0elckd1541055565782.png,bi323tg8zww1541055569922.png,fb27v4tt8vs1541055574494.png', '1541055583129', 5);
COMMIT;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userId` int(10) DEFAULT NULL,
  `times` varchar(20) DEFAULT NULL,
  `state` int(2) DEFAULT NULL COMMENT '1未接单，2接单，3取消，4待评价，5结束',
  `list` longtext,
  `price` varchar(10) DEFAULT NULL,
  `store` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
BEGIN;
INSERT INTO `order` VALUES (5, 3, '1540948544832', 3, '[{\"id\":2,\"num\":1},{\"id\":3,\"num\":1}]', '74.4', '上海大学店');
INSERT INTO `order` VALUES (9, 3, '1540950478288', 3, '[{\"id\":1,\"num\":1},{\"id\":2,\"num\":1},{\"id\":3,\"num\":1},{\"id\":4,\"num\":1}]', '130.4', '人民广场店');
INSERT INTO `order` VALUES (10, 3, '1540950952784', 5, '[{\"id\":4,\"num\":1}]', '54', '虹桥店');
INSERT INTO `order` VALUES (11, 3, '1540975595420', 5, '[{\"id\":3,\"num\":2}]', '104', '人民广场店');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `qqOpenId` varchar(36) DEFAULT NULL,
  `wxOpenId` varchar(30) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `figureurl` varchar(100) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (3, '2807A306B0445956F956F2E29815E0B9', NULL, '时间ю说了真话∮', 'http://qzapp.qlogo.cn/qzapp/101479867/2807A306B0445956F956F2E29815E0B9/30', NULL);
INSERT INTO `user` VALUES (5, '9B6C01E2ACF80B2D8307FD8125AFDAA7', NULL, '★不求※甚解', 'http://qzapp.qlogo.cn/qzapp/101479867/9B6C01E2ACF80B2D8307FD8125AFDAA7/30', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
