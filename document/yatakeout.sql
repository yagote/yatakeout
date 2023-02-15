/*
 Navicat Premium Data Transfer

 Source Server         : Win_mysql5729
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : yatakeout

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 15/02/2023 11:40:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address_book
-- ----------------------------
DROP TABLE IF EXISTS `address_book`;
CREATE TABLE `address_book`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `consignee` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '收货人',
  `sex` tinyint(4) NOT NULL COMMENT '性别 0 女 1 男',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '手机号',
  `province_code` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省级区划编号',
  `province_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省级名称',
  `city_code` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市级区划编号',
  `city_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市级名称',
  `district_code` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区级区划编号',
  `district_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区级名称',
  `detail` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '默认 0 否 1是',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `create_user` bigint(20) NOT NULL COMMENT '创建人',
  `update_user` bigint(20) NOT NULL COMMENT '修改人',
  `is_deleted` int(11) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '地址管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address_book
-- ----------------------------
INSERT INTO `address_book` VALUES (1417414526093082626, 1417012167126876162, '小明', 1, '13812345678', NULL, NULL, NULL, NULL, NULL, NULL, '昌平区金燕龙办公楼', '公司', 1, '2021-07-20 17:22:12', '2021-07-20 17:26:33', 1417012167126876162, 1417012167126876162, 0);
INSERT INTO `address_book` VALUES (1417414926166769666, 1417012167126876162, '小李', 1, '13512345678', NULL, NULL, NULL, NULL, NULL, NULL, '测试', '家', 0, '2021-07-20 17:23:47', '2021-07-20 17:23:47', 1417012167126876162, 1417012167126876162, 0);
INSERT INTO `address_book` VALUES (1625422226138451969, 1625421851859734529, 'xiao王', 1, '13212312123', NULL, NULL, NULL, NULL, NULL, NULL, '北京市', '公司', 0, '2023-02-14 17:10:32', '2023-02-14 17:13:27', 1625421851859734529, 1625421851859734529, 0);
INSERT INTO `address_book` VALUES (1625422773599981570, 1625421851859734529, '小李', 1, '13234221111', NULL, NULL, NULL, NULL, NULL, NULL, '上海', '家', 1, '2023-02-14 17:12:43', '2023-02-14 17:13:28', 1625421851859734529, 1625421851859734529, 0);
INSERT INTO `address_book` VALUES (1625464015696224257, 1625463774511161346, '小王来咯', 1, '13121231233', NULL, NULL, NULL, NULL, NULL, NULL, '北京思密达', '公司', 1, '2023-02-14 19:56:36', '2023-02-14 19:56:38', 1625463774511161346, 1625463774511161346, 0);
INSERT INTO `address_book` VALUES (1625472919863869442, 1625472703966265345, '小李', 0, '13923002133', NULL, NULL, NULL, NULL, NULL, NULL, '北京南方公司', '公司', 1, '2023-02-14 20:31:59', '2023-02-14 20:32:01', 1625472703966265345, 1625472703966265345, 0);
INSERT INTO `address_book` VALUES (1625700571963056130, 1625700363569061889, '小张', 1, '13212343212', NULL, NULL, NULL, NULL, NULL, NULL, '北京市', '学校', 1, '2023-02-15 11:36:35', '2023-02-15 11:36:37', 1625700363569061889, 1625700363569061889, 0);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `type` int(11) NULL DEFAULT NULL COMMENT '类型   1 菜品分类 2 套餐分类',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '分类名称',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '顺序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `create_user` bigint(20) NOT NULL COMMENT '创建人',
  `update_user` bigint(20) NOT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_category_name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '菜品及套餐分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1397844263642378242, 1, '湘菜', 1, '2021-05-27 09:16:58', '2023-02-14 19:41:24', 1, 1625459738575736834);
INSERT INTO `category` VALUES (1397844391040167938, 1, '粤菜', 3, '2021-05-27 09:17:28', '2023-02-14 19:41:20', 1, 1625459738575736834);
INSERT INTO `category` VALUES (1413341197421846529, 1, '饮品', 11, '2021-07-09 11:36:15', '2023-02-14 19:41:13', 1, 1625459738575736834);
INSERT INTO `category` VALUES (1413342269393674242, 2, '商务套餐', 5, '2021-07-09 11:40:30', '2023-02-14 19:41:17', 1, 1625459738575736834);
INSERT INTO `category` VALUES (1413384954989060097, 1, '主食', 12, '2021-07-09 14:30:07', '2023-02-14 19:41:10', 1, 1625459738575736834);
INSERT INTO `category` VALUES (1413386191767674881, 2, '儿童套餐', 6, '2021-07-09 14:35:02', '2023-02-14 19:41:15', 1, 1625459738575736834);
INSERT INTO `category` VALUES (1624978399460085762, 1, '川菜', 1, '2023-02-13 11:46:56', '2023-02-13 11:46:56', 1, 1);
INSERT INTO `category` VALUES (1625460328198410242, 2, '霸王套餐', 6, '2023-02-14 19:41:57', '2023-02-14 19:42:26', 1625459738575736834, 1625459738575736834);

-- ----------------------------
-- Table structure for dish
-- ----------------------------
DROP TABLE IF EXISTS `dish`;
CREATE TABLE `dish`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜品名称',
  `category_id` bigint(20) NOT NULL COMMENT '菜品分类id',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '菜品价格',
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '商品码',
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '图片',
  `description` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述信息',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '0 停售 1 起售',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '顺序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `create_user` bigint(20) NOT NULL COMMENT '创建人',
  `update_user` bigint(20) NOT NULL COMMENT '修改人',
  `is_deleted` int(11) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_dish_name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '菜品管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dish
-- ----------------------------
INSERT INTO `dish` VALUES (1397850392090947585, '组庵鱼翅', 1397844263642378242, 4800.00, '123412341234', 'c8febf11-e0f2-4bef-9061-28bbf571471b.jpg', '组庵鱼翅，看图足以表明好吃程度', 1, 0, '2021-05-27 09:41:19', '2023-02-15 11:05:52', 1, 1, 0);
INSERT INTO `dish` VALUES (1397850851245600769, '霸王别姬', 1397844263642378242, 12800.00, '123412341234', '61e7d738-dcac-43ad-8224-d6cd9f9e8f13.jpeg', '还有什么比霸王别姬更美味的呢？', 1, 0, '2021-05-27 09:43:08', '2023-02-15 11:05:14', 1, 1, 0);
INSERT INTO `dish` VALUES (1397851099502260226, '全家福', 1397844263642378242, 11800.00, '23412341234', '38ce7bbd-d949-4132-ba42-fc88bbb94e86.jpg', '别光吃肉啦，来份全家福吧，让你长寿又美味', 1, 0, '2021-05-27 09:44:08', '2023-02-15 11:03:33', 1, 1, 0);
INSERT INTO `dish` VALUES (1397852391150759938, '辣子鸡丁', 1397844303408574465, 8800.00, '2346812468', 'db0aee5d-d1d5-4c3d-b7b4-fb6bbe6a3b94.jpeg', '辣子鸡丁，辣子鸡丁，永远的魂', 1, 0, '2021-05-27 09:49:16', '2023-02-15 11:03:08', 1, 1, 0);
INSERT INTO `dish` VALUES (1397853709101740034, '蒜泥白肉', 1397844303408574465, 9800.00, '1234321234321', '840643de-dbbd-46f0-93ac-436c85f61320.jpeg', '多么的有食欲啊', 1, 0, '2021-05-27 09:54:30', '2023-02-15 11:07:05', 1, 1, 0);
INSERT INTO `dish` VALUES (1397853890262118402, '鱼香肉丝', 1397844303408574465, 3800.00, '1234212321234', 'd5c17634-0550-43cd-9d9d-4763543fc7b4.jpg', '鱼香肉丝简直就是我们童年回忆的一道经典菜，上学的时候点个鱼香肉丝盖饭坐在宿舍床上看着肥皂剧，绝了！现在完美复刻一下上学的时候感觉', 1, 0, '2021-05-27 09:55:13', '2023-02-15 11:04:53', 1, 1, 0);
INSERT INTO `dish` VALUES (1397854652581064706, '麻辣水煮鱼', 1397844303408574465, 14800.00, '2345312·345321', 'd0266ce0-da4b-4e5e-bdb9-2dc455070fc4.jpeg', '鱼片是买的切好的鱼片，放几个虾，增加味道', 1, 0, '2021-05-27 09:58:15', '2023-02-15 11:04:14', 1, 1, 0);
INSERT INTO `dish` VALUES (1397854865672679425, '鱼香炒鸡蛋', 1397844391040167938, 2000.00, '23456431·23456', 'f64b43d7-1167-4fe4-9834-e158e720ca73.jpg', '鱼香菜也是川味的特色。里面没有鱼却鱼香味', 1, 0, '2021-05-27 09:59:06', '2023-02-15 11:04:40', 1, 1, 0);
INSERT INTO `dish` VALUES (1397860242057375745, '脆皮烧鹅', 1397844391040167938, 12800.00, '123456786543213456', 'c49081b9-6db4-471a-9306-bce22cc585ed.jpg', '“广东烤鸭美而香，却胜烧鹅说古冈（今新会），燕瘦环肥各佳妙，君休偏重便宜坊”，可见烧鹅与烧鸭在粤菜之中已早负盛名。作为广州最普遍和最受欢迎的烧烤肉食，以它的“色泽金红，皮脆肉嫩，味香可口”的特色，在省城各大街小巷的烧卤店随处可见。', 1, 0, '2021-05-27 10:20:27', '2023-02-15 11:02:44', 1, 1, 0);
INSERT INTO `dish` VALUES (1397860578738352129, '白切鸡', 1397844391040167938, 6600.00, '12345678654', '28d95621-9af3-446b-9e7e-e143d85b89a3.jpeg', '白切鸡是一道色香味俱全的特色传统名肴，又叫白斩鸡，是粤菜系鸡肴中的一种，始于清代的民间。白切鸡通常选用细骨农家鸡与沙姜、蒜茸等食材，慢火煮浸白切鸡皮爽肉滑，清淡鲜美。著名的泮溪酒家白切鸡，曾获商业部优质产品金鼎奖。湛江白切鸡更是驰名粤港澳。粤菜厨坛中，鸡的菜式有200余款之多，而最为人常食不厌的正是白切鸡，深受食家青睐。', 1, 0, '2021-05-27 10:21:48', '2023-02-15 11:02:31', 1, 1, 0);
INSERT INTO `dish` VALUES (1397860792492666881, '烤乳猪', 1397844391040167938, 38800.00, '213456432123456', '1d620511-1d46-419c-a45b-ef626d5f8707.jpeg', '广式烧乳猪主料是小乳猪，辅料是蒜，调料是五香粉、芝麻酱、八角粉等，本菜品主要通过将食材放入炭火中烧烤而成。烤乳猪是广州最著名的特色菜，并且是“满汉全席”中的主打菜肴之一。烤乳猪也是许多年来广东人祭祖的祭品之一，是家家都少不了的应节之物，用乳猪祭完先人后，亲戚们再聚餐食用。', 1, 0, '2021-05-27 10:22:39', '2023-02-15 11:06:32', 1, 1, 0);
INSERT INTO `dish` VALUES (1397860963880316929, '脆皮乳鸽', 1397844391040167938, 10800.00, '1234563212345', 'bf2cbaaf-a6e9-41fd-9e21-25df82f51819.jpeg', '“脆皮乳鸽”是广东菜中的一道传统名菜，属于粤菜系，具有皮脆肉嫩、色泽红亮、鲜香味美的特点，常吃可使身体强健，清肺顺气。随着菜品制作工艺的不断发展，逐渐形成了熟炸法、生炸法和烤制法三种制作方法。无论那种制作方法，都是在鸽子经过一系列的加工，挂脆皮水后再加工而成，正宗的“脆皮乳鸽皮脆肉嫩、色泽红亮、鲜香味美、香气馥郁。这三种方法的制作过程都不算复杂，但想达到理想的效果并不容易。', 1, 0, '2021-05-27 10:23:19', '2023-02-15 11:06:47', 1, 1, 0);
INSERT INTO `dish` VALUES (1397861683434139649, '清蒸河鲜海鲜', 1397844391040167938, 38800.00, '1234567876543213456', 'b0f23ecc-a006-478f-81da-e4c68379fbfa.jpg', '新鲜的海鲜，清蒸是最好的处理方式。鲜，体会为什么叫海鲜。清蒸是广州最经典的烹饪手法，过去岭南地区由于峻山大岭阻隔，交通不便，经济发展起步慢，自家打的鱼放在锅里煮了就吃，没有太多的讲究，但却发现这清淡的煮法能使鱼的鲜甜跃然舌尖。', 1, 0, '2021-05-27 10:26:11', '2023-02-15 11:06:15', 1, 1, 0);
INSERT INTO `dish` VALUES (1397862198033297410, '老火靓汤', 1397844391040167938, 49800.00, '123456786532455', 'ff5f5d3f-a90b-46b5-a87a-e3a534232384.jpg', '老火靓汤又称广府汤，是广府人传承数千年的食补养生秘方，慢火煲煮的中华老火靓汤，火候足，时间长，既取药补之效，又取入口之甘甜。 广府老火汤种类繁多，可以用各种汤料和烹调方法，烹制出各种不同口味、不同功效的汤来。', 1, 0, '2021-05-27 10:28:14', '2023-02-15 11:02:19', 1, 1, 0);
INSERT INTO `dish` VALUES (1397862477831122945, '上汤焗龙虾', 1397844391040167938, 108800.00, '1234567865432', '1e8a4f5b-34cc-44be-8895-c85fc7ff8746.jpeg', '上汤焗龙虾是一道色香味俱全的传统名菜，属于粤菜系。此菜以龙虾为主料，配以高汤制成的一道海鲜美食。本品肉质洁白细嫩，味道鲜美，蛋白质含量高，脂肪含量低，营养丰富。是色香味俱全的传统名菜。', 1, 0, '2021-05-27 10:29:20', '2023-02-13 19:53:14', 1, 1, 0);
INSERT INTO `dish` VALUES (1413342036832100354, '北冰洋', 1413341197421846529, 500.00, '', '0ac2fd07-268e-4359-bb2d-8d31651db312.png', '', 1, 0, '2021-07-09 11:39:35', '2023-02-13 19:52:51', 1, 1, 0);
INSERT INTO `dish` VALUES (1413384757047271425, '王老吉', 1413341197421846529, 500.00, '', '03b3beac-c225-40a4-b928-72aa264ab280.png', '', 1, 0, '2021-07-09 14:29:20', '2023-02-13 19:52:33', 1, 1, 0);
INSERT INTO `dish` VALUES (1413385247889891330, '米饭', 1413384954989060097, 200.00, '', '45a7d3d7-ccbd-4274-84b7-9ed46751c9d4.png', '', 1, 0, '2021-07-09 14:31:17', '2023-02-13 19:52:22', 1, 1, 0);
INSERT INTO `dish` VALUES (1625055138232143873, '哒哒', 1397844391040167938, 1000.00, '', 'f02cdd53-7d9c-4c75-9491-d561d550f749.jpg', '哒哒好吃', 1, 0, '2023-02-13 16:51:52', '2023-02-13 16:51:52', 1, 1, 0);
INSERT INTO `dish` VALUES (1625098086491648001, '麻辣烫', 1397844263642378242, 1000.00, '', '48325edb-6a3e-42bc-86ea-7e363f49721c.jpeg', '', 1, 0, '2023-02-13 19:42:31', '2023-02-13 19:42:31', 1, 1, 0);
INSERT INTO `dish` VALUES (1625461734770839553, '宫保鸡丁', 1624978399460085762, 2000.00, '', '92ff8bc8-1c7f-4fe9-b723-20b12dbd5f2b.jpg', '无', 1, 0, '2023-02-14 19:47:32', '2023-02-14 19:47:32', 1625459738575736834, 1625459738575736834, 0);

-- ----------------------------
-- Table structure for dish_flavor
-- ----------------------------
DROP TABLE IF EXISTS `dish_flavor`;
CREATE TABLE `dish_flavor`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `dish_id` bigint(20) NOT NULL COMMENT '菜品',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '口味名称',
  `value` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '口味数据list',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `create_user` bigint(20) NOT NULL COMMENT '创建人',
  `update_user` bigint(20) NOT NULL COMMENT '修改人',
  `is_deleted` int(11) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '菜品口味关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dish_flavor
-- ----------------------------
INSERT INTO `dish_flavor` VALUES (1397849417888346113, 1397849417854791681, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 09:37:27', '2021-05-27 09:37:27', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397849739297861633, 1397849739276890114, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-27 09:38:43', '2021-05-27 09:38:43', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397849739323027458, 1397849739276890114, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 09:38:43', '2021-05-27 09:38:43', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397849936421761025, 1397849936404983809, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-27 09:39:30', '2021-05-27 09:39:30', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397849936438538241, 1397849936404983809, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 09:39:30', '2021-05-27 09:39:30', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397850141015715841, 1397850140982161409, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-27 09:40:19', '2021-05-27 09:40:19', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397850141040881665, 1397850140982161409, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 09:40:19', '2021-05-27 09:40:19', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397850392120307713, 1397850392090947585, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2023-02-15 11:05:52', '2023-02-15 11:05:52', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397850392137084929, 1397850392090947585, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2023-02-15 11:05:52', '2023-02-15 11:05:52', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397850630734262274, 1397850630700707841, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-27 09:42:16', '2021-05-27 09:42:16', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397850630755233794, 1397850630700707841, '辣度', '[\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 09:42:16', '2021-05-27 09:42:16', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397850851274960898, 1397850851245600769, '忌口', '[\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2023-02-15 11:05:14', '2023-02-15 11:05:14', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397850851283349505, 1397850851245600769, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2023-02-15 11:05:14', '2023-02-15 11:05:14', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397851099523231745, 1397851099502260226, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2023-02-15 11:03:33', '2023-02-15 11:03:33', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397851099527426050, 1397851099502260226, '辣度', '[\"不辣\",\"微辣\",\"中辣\"]', '2023-02-15 11:03:33', '2023-02-15 11:03:33', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397851370483658754, 1397851370462687234, '温度', '[\"热饮\",\"常温\",\"去冰\",\"少冰\",\"多冰\"]', '2021-05-27 09:45:12', '2021-05-27 09:45:12', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397851370483658755, 1397851370462687234, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-27 09:45:12', '2021-05-27 09:45:12', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397851370483658756, 1397851370462687234, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 09:45:12', '2021-05-27 09:45:12', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397851668283437058, 1397851668262465537, '温度', '[\"热饮\",\"常温\",\"去冰\",\"少冰\",\"多冰\"]', '2021-05-27 09:46:23', '2021-05-27 09:46:23', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397852391180120065, 1397852391150759938, '忌口', '[\"不要葱\",\"不要香菜\",\"不要辣\"]', '2023-02-15 11:03:08', '2023-02-15 11:03:08', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397852391196897281, 1397852391150759938, '辣度', '[\"不辣\",\"微辣\",\"重辣\"]', '2023-02-15 11:03:08', '2023-02-15 11:03:08', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397853183307984898, 1397853183287013378, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 09:52:24', '2021-05-27 09:52:24', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397853423486414850, 1397853423461249026, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 09:53:22', '2021-05-27 09:53:22', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397853709126905857, 1397853709101740034, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2023-02-15 11:07:05', '2023-02-15 11:07:05', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397853890283089922, 1397853890262118402, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2023-02-15 11:04:53', '2023-02-15 11:04:53', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397854133632413697, 1397854133603053569, '温度', '[\"热饮\",\"常温\",\"去冰\",\"少冰\",\"多冰\"]', '2021-05-27 09:56:11', '2021-05-27 09:56:11', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397854652623007745, 1397854652581064706, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2023-02-15 11:04:14', '2023-02-15 11:04:14', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397854652635590658, 1397854652581064706, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2023-02-15 11:04:14', '2023-02-15 11:04:14', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397854865735593986, 1397854865672679425, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2023-02-15 11:04:40', '2023-02-15 11:04:40', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397855742303186946, 1397855742273826817, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 10:02:35', '2021-05-27 10:02:35', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397855906497605633, 1397855906468245506, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-27 10:03:14', '2021-05-27 10:03:14', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397856190573621250, 1397856190540066818, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 10:04:21', '2021-05-27 10:04:21', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397859056709316609, 1397859056684150785, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 10:15:45', '2021-05-27 10:15:45', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397859277837217794, 1397859277812051969, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 10:16:37', '2021-05-27 10:16:37', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397859487502086146, 1397859487476920321, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 10:17:27', '2021-05-27 10:17:27', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397859757061615618, 1397859757036449794, '甜味', '[\"无糖\",\"少糖\",\"半躺\",\"多糖\",\"全糖\"]', '2021-05-27 10:18:32', '2021-05-27 10:18:32', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397860242086735874, 1397860242057375745, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2023-02-15 11:02:44', '2023-02-15 11:02:44', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397860963918065665, 1397860963880316929, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2023-02-15 11:06:47', '2023-02-15 11:06:47', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397861135754506242, 1397861135733534722, '甜味', '[\"无糖\",\"少糖\",\"半躺\",\"多糖\",\"全糖\"]', '2021-05-27 10:24:00', '2021-05-27 10:24:00', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397861370035744769, 1397861370010578945, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-27 10:24:56', '2021-05-27 10:24:56', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397861683459305474, 1397861683434139649, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2023-02-15 11:06:15', '2023-02-15 11:06:15', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397861898467717121, 1397861898438356993, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-27 10:27:02', '2021-05-27 10:27:02', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397862198054268929, 1397862198033297410, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2023-02-15 11:02:19', '2023-02-15 11:02:19', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1397862477835317250, 1397862477831122945, '辣度', '[\"不辣\",\"微辣\",\"中辣\"]', '2023-02-13 19:53:14', '2023-02-13 19:53:14', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398089545865015297, 1398089545676271617, '温度', '[\"热饮\",\"常温\",\"去冰\",\"少冰\",\"多冰\"]', '2021-05-28 01:31:38', '2021-05-28 01:31:38', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398089782323097601, 1398089782285348866, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:32:34', '2021-05-28 01:32:34', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398090003262255106, 1398090003228700673, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-28 01:33:27', '2021-05-28 01:33:27', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398090264554811394, 1398090264517062657, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-28 01:34:29', '2021-05-28 01:34:29', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398090455399837698, 1398090455324340225, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:35:14', '2021-05-28 01:35:14', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398090685449023490, 1398090685419663362, '温度', '[\"热饮\",\"常温\",\"去冰\",\"少冰\",\"多冰\"]', '2021-05-28 01:36:09', '2021-05-28 01:36:09', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398090825358422017, 1398090825329061889, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-28 01:36:43', '2021-05-28 01:36:43', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398091007051476993, 1398091007017922561, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:37:26', '2021-05-28 01:37:26', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398091296164851713, 1398091296131297281, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:38:35', '2021-05-28 01:38:35', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398091546531246081, 1398091546480914433, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2021-05-28 01:39:35', '2021-05-28 01:39:35', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398091729809747969, 1398091729788776450, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:40:18', '2021-05-28 01:40:18', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398091889499484161, 1398091889449152513, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:40:56', '2021-05-28 01:40:56', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398092095179763713, 1398092095142014978, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:41:45', '2021-05-28 01:41:45', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398092283877306370, 1398092283847946241, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:42:30', '2021-05-28 01:42:30', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398094018939236354, 1398094018893099009, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:49:24', '2021-05-28 01:49:24', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1398094391494094850, 1398094391456346113, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-05-28 01:50:53', '2021-05-28 01:50:53', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1399574026165727233, 1399305325713600514, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2021-06-01 03:50:25', '2021-06-01 03:50:25', 1399309715396669441, 1399309715396669441, 0);
INSERT INTO `dish_flavor` VALUES (1413389540592263169, 1413384757047271425, '温度', '[\"常温\",\"冷藏\"]', '2023-02-13 19:52:33', '2023-02-13 19:52:33', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1413389684020682754, 1413342036832100354, '温度', '[\"常温\",\"冷藏\"]', '2023-02-13 19:52:51', '2023-02-13 19:52:51', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1625055138441859073, 1625055138232143873, '甜味', '[\"无糖\",\"少糖\",\"半糖\",\"多糖\",\"全糖\"]', '2023-02-13 16:51:52', '2023-02-13 16:51:52', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1625055138441859074, 1625055138232143873, '温度', '[\"热饮\",\"常温\",\"去冰\",\"少冰\",\"多冰\"]', '2023-02-13 16:51:52', '2023-02-13 16:51:52', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1625098086562951170, 1625098086491648001, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2023-02-13 19:42:31', '2023-02-13 19:42:31', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1625098086562951171, 1625098086491648001, '温度', '[\"热饮\",\"常温\",\"去冰\",\"少冰\",\"多冰\"]', '2023-02-13 19:42:31', '2023-02-13 19:42:31', 1, 1, 0);
INSERT INTO `dish_flavor` VALUES (1625461734770839554, 1625461734770839553, '辣度', '[\"不辣\",\"微辣\",\"中辣\",\"重辣\"]', '2023-02-14 19:47:32', '2023-02-14 19:47:32', 1625459738575736834, 1625459738575736834, 0);
INSERT INTO `dish_flavor` VALUES (1625461734770839555, 1625461734770839553, '忌口', '[\"不要葱\",\"不要蒜\",\"不要香菜\",\"不要辣\"]', '2023-02-14 19:47:32', '2023-02-14 19:47:32', 1625459738575736834, 1625459738575736834, 0);

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '密码',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '手机号',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '性别',
  `id_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '身份证号',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '状态 0:禁用，1:正常',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `create_user` bigint(20) NOT NULL COMMENT '创建人',
  `update_user` bigint(20) NOT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '员工信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, '管理员', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '13812312312', '1', '110101199001010047', 1, '2021-05-06 17:20:07', '2021-05-10 02:24:09', 1, 1);
INSERT INTO `employee` VALUES (1624677367555317761, '张三', 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e', '13123123123', '1', '111484199821413965', 1, '2023-02-12 15:50:44', '2023-02-12 15:50:44', 1, 1);
INSERT INTO `employee` VALUES (1624677572996521986, '李四', 'lisi', 'e10adc3949ba59abbe56e057f20f883e', '13123123125', '0', '331484199821413965', 1, '2023-02-12 15:51:33', '2023-02-12 15:51:33', 1, 1);
INSERT INTO `employee` VALUES (1624677723404263426, '王五', 'wangwu', 'e10adc3949ba59abbe56e057f20f883e', '13323123123', '0', '551484199821413965', 1, '2023-02-12 15:52:09', '2023-02-12 16:02:30', 1, 1);
INSERT INTO `employee` VALUES (1624732103394549761, '小花', 'xiaohua', 'e10adc3949ba59abbe56e057f20f883e', '13212312313', '1', '123123123123123123', 1, '2023-02-12 19:28:14', '2023-02-14 11:34:28', 1, 1);

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名字',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片',
  `order_id` bigint(20) NOT NULL COMMENT '订单id',
  `dish_id` bigint(20) NULL DEFAULT NULL COMMENT '菜品id',
  `setmeal_id` bigint(20) NULL DEFAULT NULL COMMENT '套餐id',
  `dish_flavor` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '口味',
  `number` int(11) NOT NULL DEFAULT 1 COMMENT '数量',
  `amount` decimal(10, 2) NOT NULL COMMENT '金额',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '订单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (1625473004232294401, '邵阳猪血丸子', '2a50628e-7758-4c51-9fbb-d37c61cdacad.jpg', 1625473004165185537, 1397851370462687234, NULL, '去冰,不要蒜,中辣', 1, 138.00);
INSERT INTO `order_detail` VALUES (1625700629961891842, '哈哈哈套餐', 'c98072e4-ad92-418a-a997-6445f1fd9ac6.jpg', 1625700629898977282, NULL, 1625114299099885570, NULL, 1, 1000.00);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '订单号',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '订单状态 1待付款，2待派送，3已派送，4已完成，5已取消',
  `user_id` bigint(20) NOT NULL COMMENT '下单用户',
  `address_book_id` bigint(20) NOT NULL COMMENT '地址id',
  `order_time` datetime NOT NULL COMMENT '下单时间',
  `checkout_time` datetime NOT NULL COMMENT '结账时间',
  `pay_method` int(11) NOT NULL DEFAULT 1 COMMENT '支付方式 1微信,2支付宝',
  `amount` decimal(10, 2) NOT NULL COMMENT '实收金额',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `consignee` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1625473004165185537, '1625473004165185537', 2, 1625472703966265345, 1625472919863869442, '2023-02-14 20:32:19', '2023-02-14 20:32:19', 1, 138.00, '无', '13923002133', '北京南方公司', NULL, '小李');
INSERT INTO `orders` VALUES (1625700629898977282, '1625700629898977282', 2, 1625700363569061889, 1625700571963056130, '2023-02-15 11:36:49', '2023-02-15 11:36:49', 1, 1000.00, '', '13212343212', '北京市', NULL, '小张');

-- ----------------------------
-- Table structure for setmeal
-- ----------------------------
DROP TABLE IF EXISTS `setmeal`;
CREATE TABLE `setmeal`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `category_id` bigint(20) NOT NULL COMMENT '菜品分类id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '套餐名称',
  `price` decimal(10, 2) NOT NULL COMMENT '套餐价格',
  `status` int(11) NULL DEFAULT NULL COMMENT '状态 0:停用 1:启用',
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '编码',
  `description` varchar(512) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述信息',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `create_user` bigint(20) NOT NULL COMMENT '创建人',
  `update_user` bigint(20) NOT NULL COMMENT '修改人',
  `is_deleted` int(11) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_setmeal_name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '套餐' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setmeal
-- ----------------------------
INSERT INTO `setmeal` VALUES (1625114299099885570, 1413342269393674242, '哈哈哈套餐', 100000.00, 1, '', '无', 'c98072e4-ad92-418a-a997-6445f1fd9ac6.jpg', '2023-02-13 20:46:57', '2023-02-14 19:45:05', 1, 1625459738575736834, 0);
INSERT INTO `setmeal` VALUES (1625118769451974658, 1413342269393674242, '霸王套餐', 123500.00, 1, '', '霸王套餐', 'c03545a3-a465-4a8b-abb5-1efe26ea2fde.jpg', '2023-02-13 21:04:43', '2023-02-13 21:04:43', 1, 1, 0);
INSERT INTO `setmeal` VALUES (1625461444248178689, 1625460328198410242, '霸王小套餐', 50000.00, 1, '', '无', 'eeeb06e0-42dd-4be8-8927-350f47fbb6b4.jpg', '2023-02-14 19:46:23', '2023-02-14 19:46:23', 1625459738575736834, 1625459738575736834, 0);
INSERT INTO `setmeal` VALUES (1625462317292556290, 1413386191767674881, '虾皮套餐', 20000.00, 1, '', '虾皮套餐，好吃', 'ca89a1e5-4be7-4b2e-9a4f-a00baf60a0b6.jpeg', '2023-02-14 19:49:51', '2023-02-14 19:49:51', 1625459738575736834, 1625459738575736834, 0);

-- ----------------------------
-- Table structure for setmeal_dish
-- ----------------------------
DROP TABLE IF EXISTS `setmeal_dish`;
CREATE TABLE `setmeal_dish`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `setmeal_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '套餐id ',
  `dish_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜品id',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '菜品名称 （冗余字段）',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '菜品原价（冗余字段）',
  `copies` int(11) NOT NULL COMMENT '份数',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `create_user` bigint(20) NOT NULL COMMENT '创建人',
  `update_user` bigint(20) NOT NULL COMMENT '修改人',
  `is_deleted` int(11) NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '套餐菜品关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setmeal_dish
-- ----------------------------
INSERT INTO `setmeal_dish` VALUES (1625118769724604418, '1625118769451974658', '1397860242057375745', '脆皮烧鹅', 12800.00, 1, 0, '2023-02-13 21:04:43', '2023-02-13 21:04:43', 1, 1, 0);
INSERT INTO `setmeal_dish` VALUES (1625118769724604419, '1625118769451974658', '1397860578738352129', '白切鸡', 6600.00, 1, 0, '2023-02-13 21:04:43', '2023-02-13 21:04:43', 1, 1, 0);
INSERT INTO `setmeal_dish` VALUES (1625118769724604420, '1625118769451974658', '1397860792492666881', '烤乳猪', 38800.00, 1, 0, '2023-02-13 21:04:43', '2023-02-13 21:04:43', 1, 1, 0);
INSERT INTO `setmeal_dish` VALUES (1625118769724604421, '1625118769451974658', '1397860963880316929', '脆皮乳鸽', 10800.00, 1, 0, '2023-02-13 21:04:43', '2023-02-13 21:04:43', 1, 1, 0);
INSERT INTO `setmeal_dish` VALUES (1625118769724604422, '1625118769451974658', '1397861683434139649', '清蒸河鲜海鲜', 38800.00, 1, 0, '2023-02-13 21:04:43', '2023-02-13 21:04:43', 1, 1, 0);
INSERT INTO `setmeal_dish` VALUES (1625118769724604423, '1625118769451974658', '1397862198033297410', '老火靓汤', 49800.00, 1, 0, '2023-02-13 21:04:43', '2023-02-13 21:04:43', 1, 1, 0);
INSERT INTO `setmeal_dish` VALUES (1625118769724604424, '1625118769451974658', '1625055138232143873', '哒哒', 1000.00, 1, 0, '2023-02-13 21:04:43', '2023-02-13 21:04:43', 1, 1, 0);
INSERT INTO `setmeal_dish` VALUES (1625118769724604425, '1625118769451974658', '1397862477831122945', '上汤焗龙虾', 108800.00, 1, 0, '2023-02-13 21:04:43', '2023-02-13 21:04:43', 1, 1, 0);
INSERT INTO `setmeal_dish` VALUES (1625461117935521793, '1625114299099885570', '1397862198033297410', '老火靓汤', 49800.00, 1, 0, '2023-02-14 19:45:05', '2023-02-14 19:45:05', 1625459738575736834, 1625459738575736834, 0);
INSERT INTO `setmeal_dish` VALUES (1625461117935521794, '1625114299099885570', '1397861683434139649', '清蒸河鲜海鲜', 38800.00, 1, 0, '2023-02-14 19:45:05', '2023-02-14 19:45:05', 1625459738575736834, 1625459738575736834, 0);
INSERT INTO `setmeal_dish` VALUES (1625461117935521795, '1625114299099885570', '1397850851245600769', '霸王别姬', 12800.00, 1, 0, '2023-02-14 19:45:05', '2023-02-14 19:45:05', 1625459738575736834, 1625459738575736834, 0);
INSERT INTO `setmeal_dish` VALUES (1625461117935521796, '1625114299099885570', '1397849739276890114', '辣子鸡', 7800.00, 1, 0, '2023-02-14 19:45:05', '2023-02-14 19:45:05', 1625459738575736834, 1625459738575736834, 0);
INSERT INTO `setmeal_dish` VALUES (1625461444311093250, '1625461444248178689', '1397862477831122945', '上汤焗龙虾', 108800.00, 1, 0, '2023-02-14 19:46:23', '2023-02-14 19:46:23', 1625459738575736834, 1625459738575736834, 0);
INSERT INTO `setmeal_dish` VALUES (1625461444311093251, '1625461444248178689', '1413384757047271425', '王老吉', 500.00, 1, 0, '2023-02-14 19:46:23', '2023-02-14 19:46:23', 1625459738575736834, 1625459738575736834, 0);
INSERT INTO `setmeal_dish` VALUES (1625462317292556291, '1625462317292556290', '1397851099502260226', '全家福', 11800.00, 1, 0, '2023-02-14 19:49:51', '2023-02-14 19:49:51', 1625459738575736834, 1625459738575736834, 0);
INSERT INTO `setmeal_dish` VALUES (1625462317292556292, '1625462317292556290', '1413342036832100354', '北冰洋', 500.00, 1, 0, '2023-02-14 19:49:51', '2023-02-14 19:49:51', 1625459738575736834, 1625459738575736834, 0);
INSERT INTO `setmeal_dish` VALUES (1625462317292556293, '1625462317292556290', '1413384757047271425', '王老吉', 500.00, 1, 0, '2023-02-14 19:49:51', '2023-02-14 19:49:51', 1625459738575736834, 1625459738575736834, 0);

-- ----------------------------
-- Table structure for shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片',
  `user_id` bigint(20) NOT NULL COMMENT '主键',
  `dish_id` bigint(20) NULL DEFAULT NULL COMMENT '菜品id',
  `setmeal_id` bigint(20) NULL DEFAULT NULL COMMENT '套餐id',
  `dish_flavor` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '口味',
  `number` int(11) NOT NULL DEFAULT 1 COMMENT '数量',
  `amount` decimal(10, 2) NOT NULL COMMENT '金额',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '购物车' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
INSERT INTO `shopping_cart` VALUES (1625460551767396354, '哈哈哈套餐修改咯', 'c98072e4-ad92-418a-a997-6445f1fd9ac6.jpg', 1625459738575736834, NULL, 1625114299099885570, NULL, 11, 1000.00, '2023-02-14 19:42:50');
INSERT INTO `shopping_cart` VALUES (1625460608214339585, '霸王套餐', 'c03545a3-a465-4a8b-abb5-1efe26ea2fde.jpg', 1625459738575736834, NULL, 1625118769451974658, NULL, 2, 1235.00, '2023-02-14 19:43:03');
INSERT INTO `shopping_cart` VALUES (1625460633103339522, '上汤焗龙虾', '1e8a4f5b-34cc-44be-8895-c85fc7ff8746.jpeg', 1625459738575736834, 1397862477831122945, NULL, '微辣', 1, 1088.00, '2023-02-14 19:43:09');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '手机号',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '性别',
  `id_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '身份证号',
  `avatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '头像',
  `status` int(11) NULL DEFAULT 0 COMMENT '状态 0:禁用，1:正常',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1625416779968823298, NULL, '13212312331', NULL, NULL, NULL, 1);
INSERT INTO `user` VALUES (1625421851859734529, NULL, '13212312312', NULL, NULL, NULL, 1);
INSERT INTO `user` VALUES (1625426705273364481, NULL, '13112312311', NULL, NULL, NULL, 1);
INSERT INTO `user` VALUES (1625439991184273410, NULL, '13122312421312', NULL, NULL, NULL, 1);
INSERT INTO `user` VALUES (1625459738575736834, NULL, '13458402382', NULL, NULL, NULL, 1);
INSERT INTO `user` VALUES (1625463774511161346, NULL, '13312312312', NULL, NULL, NULL, 1);
INSERT INTO `user` VALUES (1625467072806920194, NULL, '136326474574', NULL, NULL, NULL, 1);
INSERT INTO `user` VALUES (1625472703966265345, NULL, '13312412323', NULL, NULL, NULL, 1);
INSERT INTO `user` VALUES (1625691633175568386, NULL, '13231231231', NULL, NULL, NULL, 1);
INSERT INTO `user` VALUES (1625700363569061889, NULL, '13323423423', NULL, NULL, NULL, 1);

SET FOREIGN_KEY_CHECKS = 1;
