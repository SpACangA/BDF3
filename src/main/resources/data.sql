/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : bdf3

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2020-04-18 08:25:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bdf3_component
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_component`;
CREATE TABLE `bdf3_component` (
  `id_` varchar(64) NOT NULL,
  `component_id_` varchar(255) DEFAULT NULL,
  `component_type` varchar(64) DEFAULT NULL,
  `description_` varchar(512) DEFAULT NULL,
  `name_` varchar(64) DEFAULT NULL,
  `path_` varchar(512) DEFAULT NULL,
  `url_id_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_component
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_comp_cfg
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_comp_cfg`;
CREATE TABLE `bdf3_comp_cfg` (
  `id_` varchar(50) NOT NULL,
  `cols_` varchar(40) DEFAULT NULL,
  `control_id_` varchar(255) DEFAULT NULL,
  `hide_mode_` varchar(10) DEFAULT NULL,
  `meta1_` varchar(50) DEFAULT NULL,
  `meta2_` varchar(50) DEFAULT NULL,
  `meta3_` varchar(50) DEFAULT NULL,
  `name_` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_comp_cfg
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_comp_memb
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_comp_memb`;
CREATE TABLE `bdf3_comp_memb` (
  `id_` varchar(50) NOT NULL,
  `caption_` varchar(50) DEFAULT NULL,
  `col_span_` int(11) DEFAULT NULL,
  `component_config_id_` varchar(50) DEFAULT NULL,
  `control_name_` varchar(50) DEFAULT NULL,
  `control_type_` varchar(20) DEFAULT NULL,
  `order_` int(11) DEFAULT NULL,
  `parent_control_name_` varchar(50) DEFAULT NULL,
  `row_span_` int(11) DEFAULT NULL,
  `visible_` bit(1) DEFAULT NULL,
  `width_` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_comp_memb
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_dictionary`;
CREATE TABLE `bdf3_dictionary` (
  `id_` varchar(64) NOT NULL,
  `code_` varchar(64) DEFAULT NULL,
  `default_value_` varchar(64) DEFAULT NULL,
  `name_` varchar(255) DEFAULT NULL,
  `parent_id_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_dictionary
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_dictionary_item
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_dictionary_item`;
CREATE TABLE `bdf3_dictionary_item` (
  `id_` varchar(64) NOT NULL,
  `dictionary_id_` varchar(64) DEFAULT NULL,
  `enabled_` bit(1) DEFAULT NULL,
  `key_` varchar(64) DEFAULT NULL,
  `order_` int(11) DEFAULT NULL,
  `parent_id_` varchar(64) DEFAULT NULL,
  `value_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_dictionary_item
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_entry
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_entry`;
CREATE TABLE `bdf3_entry` (
  `id_` varchar(36) NOT NULL,
  `key_` varchar(100) DEFAULT NULL,
  `mapping_rule_id_` varchar(36) DEFAULT NULL,
  `value_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FKsf1uguh50jlee07j8j0oi8ee7` (`mapping_rule_id_`),
  CONSTRAINT `FKsf1uguh50jlee07j8j0oi8ee7` FOREIGN KEY (`mapping_rule_id_`) REFERENCES `bdf3_mapping_rule` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_entry
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_group
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_group`;
CREATE TABLE `bdf3_group` (
  `id_` varchar(64) NOT NULL,
  `all_` bit(1) DEFAULT NULL,
  `create_time_` datetime DEFAULT NULL,
  `creator_` varchar(64) DEFAULT NULL,
  `description_` varchar(512) DEFAULT NULL,
  `icon_` varchar(255) DEFAULT NULL,
  `last_notice_id_` varchar(64) DEFAULT NULL,
  `last_notice_send_time_` datetime DEFAULT NULL,
  `member_count_` int(11) DEFAULT NULL,
  `name_` varchar(255) DEFAULT NULL,
  `private_letter_` bit(1) DEFAULT NULL,
  `system_` bit(1) DEFAULT NULL,
  `temporary_` bit(1) DEFAULT NULL,
  `url_` varchar(512) DEFAULT NULL,
  `template_id_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_group
-- ----------------------------
INSERT INTO `bdf3_group` VALUES ('35e08a4e-a557-4ab6-8e00-5660ce6223fa', '\0', '2018-03-25 17:21:26', 'admin', '用于管理系统功能', 'fa fa-balance-scale blue-text', null, null, '3', '系统管理群', '\0', '', '\0', null, null);
INSERT INTO `bdf3_group` VALUES ('5c367bca-604e-4bc4-8793-401cfb31d35e', '\0', '2018-03-25 18:05:03', 'admin', '用于系统运维', 'fa fa-heartbeat green-text', '945abe20-9082-40ce-a2c3-5edda1f9ced2', '2018-03-29 23:52:43', '3', '运维群', '\0', '\0', '\0', null, 'd3753b1d-a256-44b6-a391-8a2c1a34e93f');
INSERT INTO `bdf3_group` VALUES ('4f758d04-3366-4f4f-a7be-e65ef991a1b2', '\0', '2018-03-29 21:42:42', 'admin', null, 'fa fa-diamond purple-text', 'ff46911c-847f-4476-92fd-bf6630b0f2c3', '2018-03-29 23:50:26', '5', '个人办公', '\0', '', '\0', null, null);
INSERT INTO `bdf3_group` VALUES ('f35bd80c-26d2-477c-8c8d-55d737736692', '', '2018-03-25 22:17:57', 'admin', null, 'fa fa-bullhorn blue-text', '4d85b216-facc-434d-9466-144a806b3d27', '2018-03-29 23:51:20', '2', '系统公告', '\0', '\0', '\0', null, null);
INSERT INTO `bdf3_group` VALUES ('a1d0777e-60ad-4623-a563-5f9875fd14e6', '\0', '2018-03-26 14:58:50', 'admin', null, null, null, null, '2', null, '', '\0', '\0', null, null);

-- ----------------------------
-- Table structure for bdf3_group_member
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_group_member`;
CREATE TABLE `bdf3_group_member` (
  `id_` varchar(64) NOT NULL,
  `active_` bit(1) DEFAULT NULL,
  `administrator_` bit(1) DEFAULT NULL,
  `exited_` bit(1) DEFAULT NULL,
  `group_id_` varchar(64) DEFAULT NULL,
  `member_id_` varchar(64) DEFAULT NULL,
  `member_type_` varchar(64) DEFAULT NULL,
  `nickname_` varchar(64) DEFAULT NULL,
  `read_only_` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_group_member
-- ----------------------------
INSERT INTO `bdf3_group_member` VALUES ('ebd38a3b-4faf-45bc-a186-2b5ce1d4c10f', '', '', '\0', '35e08a4e-a557-4ab6-8e00-5660ce6223fa', 'admin', null, '系统管理员', '\0');
INSERT INTO `bdf3_group_member` VALUES ('1c66b36d-7122-49a7-9113-a4a029779855', '', '\0', '\0', '35e08a4e-a557-4ab6-8e00-5660ce6223fa', 'lisi', null, '李四', '');
INSERT INTO `bdf3_group_member` VALUES ('9031d5e9-e6b1-45de-a53b-46d3636dcc01', '', '', '\0', '5c367bca-604e-4bc4-8793-401cfb31d35e', 'admin', null, '系统管理员', '\0');
INSERT INTO `bdf3_group_member` VALUES ('73e0e766-6e55-4024-93b0-32f04b759a22', '', '\0', '\0', '5c367bca-604e-4bc4-8793-401cfb31d35e', 'xiaoming', null, '小明', '\0');
INSERT INTO `bdf3_group_member` VALUES ('703e04b1-92f9-43de-8968-7617d4c7d9f6', '', '\0', '\0', '5c367bca-604e-4bc4-8793-401cfb31d35e', 'wangwu', null, '王五', '\0');
INSERT INTO `bdf3_group_member` VALUES ('13da9fb7-9b5f-4f27-8523-221483e01f40', '', '\0', '\0', '4f758d04-3366-4f4f-a7be-e65ef991a1b2', 'lisi', null, '李四', '\0');
INSERT INTO `bdf3_group_member` VALUES ('0c8764de-718a-4e22-ab6a-423dabc9b025', '', '', '\0', 'f35bd80c-26d2-477c-8c8d-55d737736692', 'admin', null, '系统管理员', '\0');
INSERT INTO `bdf3_group_member` VALUES ('a7b36526-22ac-43c8-a2a5-6c8183ae074c', '\0', '\0', '', '35e08a4e-a557-4ab6-8e00-5660ce6223fa', 'zhangsan', null, '张三', '\0');
INSERT INTO `bdf3_group_member` VALUES ('3656b042-89c0-4fdf-a934-810d55a86c68', '\0', '\0', '\0', 'a1d0777e-60ad-4623-a563-5f9875fd14e6', 'admin', null, '系统管理员', '\0');
INSERT INTO `bdf3_group_member` VALUES ('4aa4d30a-7b47-4091-a880-12445b2c26dd', '', '\0', '\0', 'a1d0777e-60ad-4623-a563-5f9875fd14e6', 'lisi', null, '李四', '\0');
INSERT INTO `bdf3_group_member` VALUES ('1528df4b-4056-40b2-8490-ba54ff842a78', '', '\0', '\0', '35e08a4e-a557-4ab6-8e00-5660ce6223fa', 'xiaoming', null, '小明', '\0');
INSERT INTO `bdf3_group_member` VALUES ('9c529736-a6d2-4aee-84d8-64f767fa88db', '', '\0', '', '35e08a4e-a557-4ab6-8e00-5660ce6223fa', 'wangwu', null, '王五', '\0');
INSERT INTO `bdf3_group_member` VALUES ('2fd68e2a-6cd3-47bf-bf3a-36002894ce83', '', '\0', '\0', 'f35bd80c-26d2-477c-8c8d-55d737736692', 'xiaoming', null, '小明', '\0');
INSERT INTO `bdf3_group_member` VALUES ('d9abe87f-bd74-4fcb-b7b7-f22a4a9c5a63', '', '', '\0', '4f758d04-3366-4f4f-a7be-e65ef991a1b2', 'admin', null, '系统管理员', '\0');
INSERT INTO `bdf3_group_member` VALUES ('58f5c889-955e-4d49-aaa4-46a2a581103b', '', '\0', '\0', '4f758d04-3366-4f4f-a7be-e65ef991a1b2', 'wangwu', null, '王五', '\0');
INSERT INTO `bdf3_group_member` VALUES ('24f74384-2d1f-4e86-8c43-db5b96193d56', '', '\0', '\0', '4f758d04-3366-4f4f-a7be-e65ef991a1b2', 'xiaoming', null, '小明', '\0');
INSERT INTO `bdf3_group_member` VALUES ('4cce2fe0-250e-43f2-975c-491b1b1c3623', '', '\0', '\0', '4f758d04-3366-4f4f-a7be-e65ef991a1b2', 'zhangsan', null, '张三', '\0');

-- ----------------------------
-- Table structure for bdf3_group_template
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_group_template`;
CREATE TABLE `bdf3_group_template` (
  `id_` varchar(64) NOT NULL,
  `group_id_` varchar(64) DEFAULT NULL,
  `template_id_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_group_template
-- ----------------------------
INSERT INTO `bdf3_group_template` VALUES ('8c00decd-ff44-4638-a60c-a65de3ac44ac', '4f758d04-3366-4f4f-a7be-e65ef991a1b2', 'a0b7efe9-8b34-407b-a6ad-568846ca6ee3');
INSERT INTO `bdf3_group_template` VALUES ('34cb7ed6-836d-4e4a-8e32-f0e2a10179ed', '35e08a4e-a557-4ab6-8e00-5660ce6223fa', 'd82052cc-7027-4cf3-bed4-9de1e775cf70');
INSERT INTO `bdf3_group_template` VALUES ('8ecfd12f-8888-4c64-b6a4-b665ad376d12', '35e08a4e-a557-4ab6-8e00-5660ce6223fa', '6900e36f-62dd-4b45-8f98-d71875771e13');
INSERT INTO `bdf3_group_template` VALUES ('82867fa5-d5ef-4aa5-b560-e96211b4ff9e', '35e08a4e-a557-4ab6-8e00-5660ce6223fa', '8e8aa5fc-412f-42c8-840e-282c90f20a19');
INSERT INTO `bdf3_group_template` VALUES ('14ad80a1-5a6f-44ee-ac99-7f6129e177d1', '35e08a4e-a557-4ab6-8e00-5660ce6223fa', '36f834d5-8314-4f48-92bd-23c298e5738e');
INSERT INTO `bdf3_group_template` VALUES ('febbfd10-27d9-480a-a4ce-fb2ec05af912', '35e08a4e-a557-4ab6-8e00-5660ce6223fa', '22cbb691-354c-4bb4-9ddc-4969d8d111ca');
INSERT INTO `bdf3_group_template` VALUES ('f31c8041-ce2f-45e5-a566-896ee43b5c49', '35e08a4e-a557-4ab6-8e00-5660ce6223fa', 'ca0dcb00-86c1-4dee-9312-c6ccacbf4d57');
INSERT INTO `bdf3_group_template` VALUES ('7be8f670-4dc0-4323-bcd6-2fdc08919954', '5c367bca-604e-4bc4-8793-401cfb31d35e', 'ef2eeb71-eec0-4264-aa41-820f06b9918c');
INSERT INTO `bdf3_group_template` VALUES ('6165c0a4-ad39-4c2f-b881-629d76ff51e6', '4f758d04-3366-4f4f-a7be-e65ef991a1b2', 'ef2eeb71-eec0-4264-aa41-820f06b9918c');
INSERT INTO `bdf3_group_template` VALUES ('83bf3a98-afe7-4c44-a372-cd031cdfe639', '5c367bca-604e-4bc4-8793-401cfb31d35e', 'ffa83b56-9610-42b1-97fe-41ceee9207fe');
INSERT INTO `bdf3_group_template` VALUES ('8b89eeb8-351b-492b-98c4-7ed6de39a8bd', '5c367bca-604e-4bc4-8793-401cfb31d35e', '2081965d-fdcb-49ca-9763-6b497338f04d');
INSERT INTO `bdf3_group_template` VALUES ('47263593-0e82-43ec-87e3-de73097dabb5', '35e08a4e-a557-4ab6-8e00-5660ce6223fa', 'a6714752-3a17-41cc-abce-a426a41ee14c');
INSERT INTO `bdf3_group_template` VALUES ('a909182e-8f77-44b8-8456-e17d8772f8d8', '5c367bca-604e-4bc4-8793-401cfb31d35e', 'd3753b1d-a256-44b6-a391-8a2c1a34e93f');

-- ----------------------------
-- Table structure for bdf3_importer_solution
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_importer_solution`;
CREATE TABLE `bdf3_importer_solution` (
  `id_` varchar(64) NOT NULL,
  `entity_manager_factory_name_` varchar(60) DEFAULT NULL,
  `create_date_` datetime DEFAULT NULL,
  `desc_` varchar(255) DEFAULT NULL,
  `entity_class_name_` varchar(255) DEFAULT NULL,
  `excel_sheet_name_` varchar(60) DEFAULT NULL,
  `name_` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_importer_solution
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_log_info
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_log_info`;
CREATE TABLE `bdf3_log_info` (
  `id_` varchar(36) NOT NULL,
  `ip_` varchar(20) DEFAULT NULL,
  `category_` varchar(100) DEFAULT NULL,
  `desc_` longtext,
  `module_` varchar(255) DEFAULT NULL,
  `operation_` varchar(100) DEFAULT NULL,
  `operation_date_` datetime DEFAULT NULL,
  `operation_user_` varchar(30) DEFAULT NULL,
  `operation_user_nickname_` varchar(30) DEFAULT NULL,
  `source_` varchar(255) DEFAULT NULL,
  `title_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_log_info
-- ----------------------------
INSERT INTO `bdf3_log_info` VALUES ('3f7edf81-cf6e-46af-b578-3b2efbbe0f05', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 35e08a4e-a557-4ab6-8e00-5660ce6223fa\n群名称 : null -> 系统管理群\n群图标 : null -> fa fa-balance-scale blue-text\n创建者 : null -> admin\n创建于 : null -> Sun Mar 25 17:21:26 CST 2018\n公告群 : null -> false\n临时群 : null -> false\n系统群 : null -> false\nprivateLetter : null -> false\n成员数 : null -> 1\n链接数 : null -> 0\n', '系统模块', '新增', '2018-03-25 17:21:27', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('a7abc605-8846-480b-a4d5-4a9780e960f0', '0:0:0:0:0:0:0:1', '系统日志', 'administrator : false -> true\n', '系统模块', '新增', '2018-03-25 17:21:27', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '9a5dbd04-7d0a-45a5-bae9-7f9e182313f9');
INSERT INTO `bdf3_log_info` VALUES ('c68aa5e4-84ab-46fa-83ad-da2d5af1c437', '0:0:0:0:0:0:0:1', '系统日志', '链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-25 17:29:01', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('a5d147eb-d397-40dc-857f-e6677070dcb9', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-25 17:29:01', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '用户管理');
INSERT INTO `bdf3_log_info` VALUES ('27c5fadf-0fdf-4c2e-b115-1adeb5142b7e', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-25 17:29:02', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '菜单管理');
INSERT INTO `bdf3_log_info` VALUES ('d9e1c4a5-c539-4d67-9a1b-e0798a0733c7', '0:0:0:0:0:0:0:1', '系统日志', '用户名 : null -> test1\n昵称 : null -> 测试用户1\n密码 : null -> {bcrypt}$2a$10$Km0YH0iBf4l6mStaniwZeObYX6RnCDeBFy0Xp1Wwt4vAJ7sU9iUby\n账户未过期 : null -> true\n账户未锁定 : null -> true\n证书未过期 : null -> true\n可用 : null -> true\n是管理员 : null -> false\n', '系统模块', '新增', '2018-03-25 17:30:36', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.UserMaintain.d', null);
INSERT INTO `bdf3_log_info` VALUES ('8b5c9995-dbbe-4cab-bc78-271ff8c85acb', '0:0:0:0:0:0:0:1', '系统日志', '用户名 : null -> zhangsan\n昵称 : null -> 张三\n密码 : null -> {bcrypt}$2a$10$s8oeM/HzocE0uwt4t/crlOANEziY3QacHYUDmRhiwjPOBTjl0RKjq\n账户未过期 : null -> true\n账户未锁定 : null -> true\n证书未过期 : null -> true\n可用 : null -> true\n是管理员 : null -> false\n', '系统模块', '新增', '2018-03-25 17:31:08', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.UserMaintain.d', null);
INSERT INTO `bdf3_log_info` VALUES ('292b5457-2e20-4e00-96ad-f69ca37322ca', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-25 17:31:15', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.UserMaintain.d', null);
INSERT INTO `bdf3_log_info` VALUES ('aa4ee9e1-b938-4b47-bb9e-b03109763850', '0:0:0:0:0:0:0:1', '系统日志', '用户名 : null -> li\n昵称 : null -> 李四\n密码 : null -> {bcrypt}$2a$10$KyxLwLVr9HCfQa4NSd6SOOOqofqzuj5TUyvIITqjJjO0calmfSC.m\n账户未过期 : null -> true\n账户未锁定 : null -> true\n证书未过期 : null -> true\n可用 : null -> true\n是管理员 : null -> false\n', '系统模块', '新增', '2018-03-25 17:31:33', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.UserMaintain.d', null);
INSERT INTO `bdf3_log_info` VALUES ('b363bb12-5524-4360-9312-8f72f8684142', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-25 17:31:40', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.UserMaintain.d', null);
INSERT INTO `bdf3_log_info` VALUES ('79faed91-794e-4d0a-867d-0e9535f73365', '0:0:0:0:0:0:0:1', '系统日志', '用户名 : null -> lisi\n昵称 : null -> 李四\n密码 : null -> {bcrypt}$2a$10$83Q9W.mq8KetdcmAog3nnuDoC5t3MABKT.3vea.izS6iAQXvZ3Sx.\n账户未过期 : null -> true\n账户未锁定 : null -> true\n证书未过期 : null -> true\n可用 : null -> true\n是管理员 : null -> false\n', '系统模块', '新增', '2018-03-25 17:31:50', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.UserMaintain.d', null);
INSERT INTO `bdf3_log_info` VALUES ('c93e5adf-ed0e-4536-80c2-3d86d49cd88b', '0:0:0:0:0:0:0:1', '系统日志', '用户名 : null -> wangwu\n昵称 : null -> 王五\n密码 : null -> {bcrypt}$2a$10$U70itykX6yvUSIWgcByRg.nA9fOg4NoAGdXRjQmBVDhw0B3GzJXwy\n账户未过期 : null -> true\n账户未锁定 : null -> true\n证书未过期 : null -> true\n可用 : null -> true\n是管理员 : null -> false\n', '系统模块', '新增', '2018-03-25 17:32:05', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.UserMaintain.d', null);
INSERT INTO `bdf3_log_info` VALUES ('dc13aa85-95af-463e-8c2e-b8bc6a7df202', '0:0:0:0:0:0:0:1', '系统日志', '用户名 : null -> xiaoming\n昵称 : null -> 小明\n密码 : null -> {bcrypt}$2a$10$U10owlQc3kXhLRBes/hdMOKgZiZxUZUr3iDBHuisFxaUuZ.LJPFz.\n账户未过期 : null -> true\n账户未锁定 : null -> true\n证书未过期 : null -> true\n可用 : null -> true\n是管理员 : null -> false\n', '系统模块', '新增', '2018-03-25 17:32:40', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.UserMaintain.d', null);
INSERT INTO `bdf3_log_info` VALUES ('af53cfa3-0b73-4697-bf68-cac67fdee776', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 1 -> 2\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-25 17:32:51', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('bcf9ab51-26d4-459a-9f08-a69cbfce91e3', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-25 17:32:51', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '4c3550c6-6295-4100-8fc3-245b5ef6bab1');
INSERT INTO `bdf3_log_info` VALUES ('14d39509-de07-4c06-825e-5a09cbabdb18', '0:0:0:0:0:0:0:1', '系统日志', 'readOnly : false -> true\n', '系统模块', '修改', '2018-03-25 17:41:46', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '1c66b36d-7122-49a7-9113-a4a029779855');
INSERT INTO `bdf3_log_info` VALUES ('00d044c0-5b33-454f-9797-751ed942516d', '0:0:0:0:0:0:0:1', '系统日志', '系统群 : false -> true\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-25 17:44:10', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('626b81f4-bee6-4281-be1a-7e49698dc0c9', '0:0:0:0:0:0:0:1', '系统日志', '群描述 : null -> 用于管理系统功能\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-25 18:02:32', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('5f78703f-d947-4835-9e8a-b7a38d8afbd2', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 5c367bca-604e-4bc4-8793-401cfb31d35e\n群名称 : null -> 运维群\n群图标 : null -> fa fa-heartbeat green-text\n创建者 : null -> admin\n创建于 : null -> Sun Mar 25 18:05:03 CST 2018\n公告群 : null -> false\n临时群 : null -> false\n系统群 : null -> false\nprivateLetter : null -> false\n成员数 : null -> 1\n链接数 : null -> 0\n群描述 : null -> 用于系统运维\n', '系统模块', '新增', '2018-03-25 18:05:03', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '运维群');
INSERT INTO `bdf3_log_info` VALUES ('d4ad41c0-a334-45ba-88ed-3f1874992f24', '0:0:0:0:0:0:0:1', '系统日志', 'administrator : false -> true\n', '系统模块', '新增', '2018-03-25 18:05:03', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '69dd4c54-3194-4634-8dd1-89a5265d1de1');
INSERT INTO `bdf3_log_info` VALUES ('a8e843c3-77b8-4234-93e7-7eea01b1613f', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 1 -> 2\n', '系统模块', '修改', '2018-03-25 18:05:16', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '运维群');
INSERT INTO `bdf3_log_info` VALUES ('be832c98-386c-4192-91cc-2407421377a7', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-25 18:05:16', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '4758a57b-4eeb-4ece-b342-7f11bc4d6327');
INSERT INTO `bdf3_log_info` VALUES ('f3bb76fe-78be-484e-8047-61e70adb3498', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 2 -> 3\n', '系统模块', '修改', '2018-03-25 18:05:17', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '运维群');
INSERT INTO `bdf3_log_info` VALUES ('2e7249e3-c173-4cc9-bd88-7891aed19d8b', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-25 18:05:17', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '54ecb150-e8c7-4bfa-852d-d9967c976acc');
INSERT INTO `bdf3_log_info` VALUES ('5bf6e0ca-02ff-451b-a55b-c2fdb14d204f', '0:0:0:0:0:0:0:1', '系统日志', '链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-25 18:08:53', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '运维群');
INSERT INTO `bdf3_log_info` VALUES ('2b4783d4-d7c7-4675-aa03-4078f2371e2e', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-25 18:08:53', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统日志');
INSERT INTO `bdf3_log_info` VALUES ('05d22968-63cf-4631-b538-e4ea3bc63e8c', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-25 18:08:53', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '云数据库');
INSERT INTO `bdf3_log_info` VALUES ('b0e8b4ba-e6b9-4beb-b293-5cb0bb94ee7f', '0:0:0:0:0:0:0:1', '系统日志', '链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-25 18:14:47', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '运维群');
INSERT INTO `bdf3_log_info` VALUES ('25dd2a40-8b0c-4378-bc6b-7fc97a1717e8', '0:0:0:0:0:0:0:1', '系统日志', '链接 : bdf3.log.view.LogMaintain.d -> bdf3.log.view.LogInfoMaintain.d\n', '系统模块', '修改', '2018-03-25 18:14:47', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统日志');
INSERT INTO `bdf3_log_info` VALUES ('47682ab3-a6cc-46eb-aab7-be92ec17946f', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 4a757609-54a2-4a2c-8b4a-489651b4ae5f\n群名称 : null -> 个人办公\n群图标 : null -> fa fa-diamond purple-text\n创建者 : null -> lisi\n创建于 : null -> Sun Mar 25 18:39:30 CST 2018\n公告群 : null -> false\n临时群 : null -> false\n系统群 : null -> false\nprivateLetter : null -> false\n成员数 : null -> 1\n链接数 : null -> 0\n群描述 : null -> 用于自己办公\n', '系统模块', '新增', '2018-03-25 18:39:30', 'lisi', '李四', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '个人办公');
INSERT INTO `bdf3_log_info` VALUES ('00c56149-42a9-4da6-8fdc-566e623f05d5', '0:0:0:0:0:0:0:1', '系统日志', 'administrator : false -> true\n', '系统模块', '新增', '2018-03-25 18:39:30', 'lisi', '李四', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '3bd4f17a-5a27-4971-b9d6-4561d40c0eac');
INSERT INTO `bdf3_log_info` VALUES ('678cf76a-56c5-494c-8e0c-13f044c466d4', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> f35bd80c-26d2-477c-8c8d-55d737736692\n群名称 : null -> 系统公告\n群图标 : null -> fa fa-bullhorn blue-text\n创建者 : null -> admin\n创建于 : null -> Sun Mar 25 22:17:57 CST 2018\n公告群 : null -> true\n临时群 : null -> false\n系统群 : null -> false\nprivateLetter : null -> false\n成员数 : null -> 1\n链接数 : null -> 0\n', '系统模块', '新增', '2018-03-25 22:17:57', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统公告');
INSERT INTO `bdf3_log_info` VALUES ('c970e5d7-fa5f-40e8-8ccc-13aa726dfd97', '0:0:0:0:0:0:0:1', '系统日志', 'administrator : false -> true\n', '系统模块', '新增', '2018-03-25 22:17:57', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '61298828-6948-4411-bd46-b0cfcf056eb2');
INSERT INTO `bdf3_log_info` VALUES ('8c622d50-fb04-47f6-95e2-d21a7d5ab05e', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> a1d0777e-60ad-4623-a563-5f9875fd14e6\ncreator : null -> admin\ncreateTime : null -> Mon Mar 26 14:58:50 CST 2018\nall : null -> false\ntemporary : null -> false\nsystem : null -> false\nprivateLetter : null -> true\nmemberCount : null -> 2\n', '系统模块', '新增', '2018-03-26 14:58:50', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', 'a1d0777e-60ad-4623-a563-5f9875fd14e6');
INSERT INTO `bdf3_log_info` VALUES ('68004fb2-fccd-4bbe-8de8-3cf2183db574', '0:0:0:0:0:0:0:1', '系统日志', 'active : false -> true\n', '系统模块', '新增', '2018-03-26 14:58:51', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', 'f01d1724-667c-40a0-937d-19c1b2eee2c3');
INSERT INTO `bdf3_log_info` VALUES ('74ae213e-8df2-4ee8-abd6-dbdc09b50c9e', '0:0:0:0:0:0:0:1', '系统日志', 'active : false -> true\n', '系统模块', '新增', '2018-03-26 14:58:51', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '7f5e4926-d89f-45c3-b160-03588d31902c');
INSERT INTO `bdf3_log_info` VALUES ('e0ecd7ad-d3c1-4f4e-bf6a-a8398e5dee2d', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-26 16:36:39', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', 'a7b36526-22ac-43c8-a2a5-6c8183ae074c');
INSERT INTO `bdf3_log_info` VALUES ('3e074b88-d0d3-4d88-86cb-0941e6e34233', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-26 16:39:21', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', 'a7b36526-22ac-43c8-a2a5-6c8183ae074c');
INSERT INTO `bdf3_log_info` VALUES ('25a07729-da6c-498e-82a5-8049d70d353b', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 2 -> 3\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 16:42:50', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('901f1472-a7b2-4e53-be22-727c441e9387', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-26 16:42:50', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', 'e2b2dd22-85f4-45ee-8e31-8d7e0c5db3b1');
INSERT INTO `bdf3_log_info` VALUES ('9163e979-e8e9-485f-8502-1291075afb08', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-26 16:43:46', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '1528df4b-4056-40b2-8490-ba54ff842a78');
INSERT INTO `bdf3_log_info` VALUES ('724bf56c-cd61-4192-96fa-8d01cb0c2109', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 3 -> 4\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 16:51:14', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('85b93591-9d08-4584-8bd6-1fa1191236fc', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-26 16:51:14', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '8f06e772-a63e-4524-be68-9e2c05c017d3');
INSERT INTO `bdf3_log_info` VALUES ('23b880e5-f3e6-4eca-994b-1810289faf5f', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 4 -> 3\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 16:57:09', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('3ea84ff8-b763-4e8e-9bc8-6365f45c7a5b', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-26 16:57:09', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '1528df4b-4056-40b2-8490-ba54ff842a78');
INSERT INTO `bdf3_log_info` VALUES ('680f9d42-90eb-4d36-b360-4ab4aab63159', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 3 -> 2\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 17:01:12', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('0f8bfdb1-e8f6-41a6-8d97-effd2ff29f3c', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-26 17:01:12', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '1c66b36d-7122-49a7-9113-a4a029779855');
INSERT INTO `bdf3_log_info` VALUES ('01e0e871-0363-4ec9-8154-febacfc06904', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 2 -> 3\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 17:02:12', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('2f6cea21-e9b2-43d8-8f95-72e63a9c2eb8', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-26 17:02:12', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', 'fa7b7748-d3b5-484b-8913-c363748d5510');
INSERT INTO `bdf3_log_info` VALUES ('60c5f73c-96a9-4afc-bb21-9a0de7690bca', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 3 -> 4\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 17:03:05', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('e94faf17-0701-4acd-8d8a-bf5cd81c3851', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-26 17:03:05', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', 'ce8a722c-4ef9-413a-9501-d1edecbaca45');
INSERT INTO `bdf3_log_info` VALUES ('c6cb6c0c-7485-456e-8b93-656193f36469', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 4 -> 3\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 17:03:22', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('a183fa76-dc91-4869-aa45-baba7e31c943', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-26 17:03:22', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', 'ce8a722c-4ef9-413a-9501-d1edecbaca45');
INSERT INTO `bdf3_log_info` VALUES ('d9295594-4cbf-47bc-91d6-ab2c25b63400', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 1 -> 2\n', '系统模块', '修改', '2018-03-26 17:04:47', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统公告');
INSERT INTO `bdf3_log_info` VALUES ('1fa3850e-0da8-44f1-b0ea-c375160e586d', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-26 17:04:47', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '5eeeaaed-24c0-4c04-a433-32d2505e827c');
INSERT INTO `bdf3_log_info` VALUES ('3e014a4f-e61e-4fb9-b09c-497ae54b636b', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 3 -> 2\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 17:06:39', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('255ef9bc-69df-4b64-98d7-a6ded02012c2', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-26 17:06:39', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '9c529736-a6d2-4aee-84d8-64f767fa88db');
INSERT INTO `bdf3_log_info` VALUES ('bec9e3b1-482a-4c01-9aff-3b910805d3c1', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 2 -> 3\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 17:06:42', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('1d0f6547-b12d-4f99-b753-0aa457c1963c', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-26 17:06:42', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '0bf150aa-75b0-49eb-bd74-53a8a5c561a6');
INSERT INTO `bdf3_log_info` VALUES ('142483a5-ddd5-4840-9706-986c42838d0b', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 3 -> 2\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 17:06:43', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('1e43285b-5a44-4d48-8b83-f2f6c5e612e1', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-26 17:06:43', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '0bf150aa-75b0-49eb-bd74-53a8a5c561a6');
INSERT INTO `bdf3_log_info` VALUES ('de927ca4-0cf3-494e-a384-bdb12c445ca6', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 2 -> 3\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 17:08:15', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('2e7bdbc7-f5b0-47e4-9e43-2aac0bf4c296', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-26 17:08:15', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '3ca5c101-21c7-4a3c-9730-9222e1d0067b');
INSERT INTO `bdf3_log_info` VALUES ('5ed2b786-38ed-46d6-a983-b20435b2f9c5', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 3 -> 2\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 17:08:17', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('856f1e83-a883-4318-8dff-0a9b32353fbc', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-26 17:08:17', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '3ca5c101-21c7-4a3c-9730-9222e1d0067b');
INSERT INTO `bdf3_log_info` VALUES ('780b686a-bdef-4b22-9fa3-8d755c63f669', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 2 -> 3\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 17:08:21', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('b067cb6d-8d3c-4374-b424-603728dbe9d5', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-26 17:08:21', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', 'dd0de89b-2d89-4b4f-bd4f-07b617a8155e');
INSERT INTO `bdf3_log_info` VALUES ('4d09744a-92df-4e15-b271-46144d3a9d39', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 3 -> 2\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 17:14:10', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('6de52890-e903-4d7c-87d3-eda60dfe7c53', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-26 17:14:10', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '9c529736-a6d2-4aee-84d8-64f767fa88db');
INSERT INTO `bdf3_log_info` VALUES ('f763a780-e6d8-4891-8b21-51d860d7d3ee', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 2 -> 3\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 17:14:20', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('c0bf2c57-0c5e-498e-8c06-5713c8ac28a9', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-26 17:14:20', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '50a34677-3a9d-4f36-b755-20e9e1c1dad4');
INSERT INTO `bdf3_log_info` VALUES ('acdecc0b-0b44-49ff-b727-0b94f9eb2193', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 3 -> 2\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 17:14:43', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('73606dbe-f1ec-4cd8-ac6d-dd9d245d92b9', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-26 17:14:43', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '9c529736-a6d2-4aee-84d8-64f767fa88db');
INSERT INTO `bdf3_log_info` VALUES ('1b765f15-7eb7-41b8-a111-17971551b7b1', '0:0:0:0:0:0:0:1', '系统日志', '成员数 : 2 -> 1\n链接数 : 0 -> 2\n', '系统模块', '修改', '2018-03-26 17:14:44', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('76168902-a101-4a6f-a591-c989a49f165d', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-26 17:14:44', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '1528df4b-4056-40b2-8490-ba54ff842a78');
INSERT INTO `bdf3_log_info` VALUES ('4bf01145-2a5f-48ab-b297-5ecfcb4c2db0', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-26 17:24:50', 'lisi', '李四', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '21f833e1-7c04-4aef-abd7-e31d35bf3629');
INSERT INTO `bdf3_log_info` VALUES ('a261b9e5-b48b-4a26-81ea-12cb46504f6a', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-26 17:25:28', 'lisi', '李四', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', 'ba30f232-d842-4f4f-ad93-ba9c6df4a9ec');
INSERT INTO `bdf3_log_info` VALUES ('77d65853-4b87-4bcb-98f9-e1dc991f31b4', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-26 17:36:30', 'lisi', '李四', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', 'afc43317-f9bc-4651-bd60-465d2faec860');
INSERT INTO `bdf3_log_info` VALUES ('d2630c83-7809-417d-8fbc-365bb19f184a', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-26 17:37:37', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '2acd280e-ff44-4edc-bd22-4746ac966d81');
INSERT INTO `bdf3_log_info` VALUES ('f3685219-c331-465a-8c61-7cba952a7086', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> d3753b1d-a256-44b6-a391-8a2c1a34e93f\n名称 : null -> 大号红字\n图标 : null -> fa fa-font red-text\nCSS : null -> .big-size-red-word {\n  font-size: 2em;\n  color: rgb(255, 0, 0);\n}\nHTML : null -> <div class=\"big-size-red-word\">{{ message.content }}</div>\n\n全局 : null -> true\n下线 : null -> false\n微程序 : null -> false\n描述 : null -> 大号红色字体的消息模版\n可显示 : null -> false\n', '系统模块', '新增', '2018-03-29 19:04:44', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '大号红字');
INSERT INTO `bdf3_log_info` VALUES ('187ac4ba-414b-439a-be68-47b23869b405', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> ece99ee9-577e-4148-9037-d3f4ed553f7a\n名称 : null -> 常用消息\n图标 : null -> fa fa-newspaper-o\nCSS : null -> .tpl-message {\n  color: rgba(0, 0, 0, .7);\n  line-height: 1.5em;\n}\n\n.tpl-message:hover {\n  background-color: #fafafa;\n}\nHTML : null -> <!---->\n<!---->\n<div clas=\"tpl-message\">我正在开会，稍后给你回复</div>\n<div clas=\"tpl-message\">再见，下次再聊</div>\n<div clas=\"tpl-message\">走，吃饭去</div>\n<div clas=\"tpl-message\">这个问题很严重</div>\n<div clas=\"tpl-message\">我下班了，明天在讨论</div>\n<div clas=\"tpl-message\">稍等，马上给你答复</div>\n<div clas=\"tpl-message\">谢谢你的帮助</div>\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> false\n', '系统模块', '新增', '2018-03-29 19:59:35', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '常用消息');
INSERT INTO `bdf3_log_info` VALUES ('9ef6043c-ee9b-4c2d-99a9-6a6300d7f8fe', '0:0:0:0:0:0:0:1', '系统日志', 'CSS : .tpl-message {\n  color: rgba(0, 0, 0, .7);\n  line-height: 1.5em;\n}\n\n.tpl-message:hover {\n  background-color: #fafafa;\n} -> /****/\n/****/\n.tpl-message {\n  color: rgba(0, 0, 0, .7);\n  line-height: 1.5em;\n}\n\n.tpl-message:hover {\n  background-color: #fafafa;\n}\n', '系统模块', '修改', '2018-03-29 20:07:43', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '常用消息');
INSERT INTO `bdf3_log_info` VALUES ('16925ccd-81be-488e-939d-43f4f8d04e91', '0:0:0:0:0:0:0:1', '系统日志', '全局 : false -> true\n', '系统模块', '修改', '2018-03-29 20:08:20', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '常用消息');
INSERT INTO `bdf3_log_info` VALUES ('622445e0-afad-4542-95cb-ddf569145412', '0:0:0:0:0:0:0:1', '系统日志', '可显示 : false -> true\n', '系统模块', '修改', '2018-03-29 20:08:23', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '常用消息');
INSERT INTO `bdf3_log_info` VALUES ('7e4b498a-1959-4a1c-bf9a-53407cb4529c', '0:0:0:0:0:0:0:1', '系统日志', 'HTML : <!---->\n<!---->\n<div clas=\"tpl-message\">我正在开会，稍后给你回复</div>\n<div clas=\"tpl-message\">再见，下次再聊</div>\n<div clas=\"tpl-message\">走，吃饭去</div>\n<div clas=\"tpl-message\">这个问题很严重</div>\n<div clas=\"tpl-message\">我下班了，明天在讨论</div>\n<div clas=\"tpl-message\">稍等，马上给你答复</div>\n<div clas=\"tpl-message\">谢谢你的帮助</div> -> <!---->\n<!---->\n<div class=\"tpl-message\">我正在开会，稍后给你回复</div>\n<div class=\"tpl-message\">再见，下次再聊</div>\n<div class=\"tpl-message\">走，吃饭去</div>\n<div class=\"tpl-message\">这个问题很严重</div>\n<div class=\"tpl-message\">我下班了，明天在讨论</div>\n<div class=\"tpl-message\">稍等，马上给你答复</div>\n<div class=\"tpl-message\">谢谢你的帮助</div>\n', '系统模块', '修改', '2018-03-29 20:09:42', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '常用消息');
INSERT INTO `bdf3_log_info` VALUES ('8b2b930f-e1ff-4c22-8aa6-9ae29cd00805', '0:0:0:0:0:0:0:1', '系统日志', 'CSS : /****/\n/****/\n.tpl-message {\n  color: rgba(0, 0, 0, .7);\n  line-height: 1.5em;\n}\n\n.tpl-message:hover {\n  background-color: #fafafa;\n} -> /****/\n/****/\n.tpl-message {\n  color: rgba(0, 0, 0, .7);\n  line-height: 2.5em;\n  font-size: 1.2em;\n}\n\n.tpl-message:hover {\n  background-color: #fafafa;\n}\n', '系统模块', '修改', '2018-03-29 20:10:26', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '常用消息');
INSERT INTO `bdf3_log_info` VALUES ('e507ac21-180a-4beb-9e21-bf5661a72448', '0:0:0:0:0:0:0:1', '系统日志', 'CSS : /****/\n/****/\n.tpl-message {\n  color: rgba(0, 0, 0, .7);\n  line-height: 2.5em;\n  font-size: 1.2em;\n}\n\n.tpl-message:hover {\n  background-color: #fafafa;\n} -> /****/\n/****/\n.tpl-message {\n  color: rgba(0, 0, 0, .7);\n  line-height: 2.5em;\n  font-size: 1.2em;\n  padding: 0 5px;\n  border-radius: 3px;\n}\n\n.tpl-message:hover {\n  background-color: #fafafa;\n}\n', '系统模块', '修改', '2018-03-29 20:12:00', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '常用消息');
INSERT INTO `bdf3_log_info` VALUES ('43c90276-fa66-4f9a-a87f-4912ee28f8cd', '0:0:0:0:0:0:0:1', '系统日志', 'CSS : /****/\n/****/\n.tpl-message {\n  color: rgba(0, 0, 0, .7);\n  line-height: 2.5em;\n  font-size: 1.2em;\n  padding: 0 5px;\n  border-radius: 3px;\n}\n\n.tpl-message:hover {\n  background-color: #fafafa;\n} -> /****/\n/****/\n.tpl-message {\n  color: rgba(0, 0, 0, .7);\n  line-height: 2.5em;\n  font-size: 1.2em;\n  padding: 0 5px;\n  border-radius: 3px;\n  cursor: pointer;\n}\n\n.tpl-message:hover {\n  background-color: #f7f7f7;\n}\n', '系统模块', '修改', '2018-03-29 20:13:03', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '常用消息');
INSERT INTO `bdf3_log_info` VALUES ('83435bc4-cdd3-46e1-acac-5339999dc3c6', '0:0:0:0:0:0:0:1', '系统日志', 'JAVASCRIPT : null -> $(tipDom).find(\".tpl-message\").click({\n  alert(getContent());\n});\n', '系统模块', '修改', '2018-03-29 20:14:16', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '常用消息');
INSERT INTO `bdf3_log_info` VALUES ('6ed6b8d8-2804-4f0a-90fb-aa5c62da2499', '0:0:0:0:0:0:0:1', '系统日志', 'JAVASCRIPT : $(tipDom).find(\".tpl-message\").click({\n  alert(getContent());\n}); -> /****/\n/****/\n$(tipDom).find(\".tpl-message\").click({\n  alert(getContent());\n});\n', '系统模块', '修改', '2018-03-29 20:14:39', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '常用消息');
INSERT INTO `bdf3_log_info` VALUES ('2d9a8a69-0668-45a0-adce-6ec9a1f601dd', '0:0:0:0:0:0:0:1', '系统日志', 'JAVASCRIPT : /****/\n/****/\n$(tipDom).find(\".tpl-message\").click({\n  alert(getContent());\n}); -> /****/\n/****/\n$(tipDom).find(\".tpl-message\").click(function() {\n  alert(getContent());\n});\n', '系统模块', '修改', '2018-03-29 20:15:13', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '常用消息');
INSERT INTO `bdf3_log_info` VALUES ('4063626d-2ba1-4098-ba3d-2a8cc464c1de', '0:0:0:0:0:0:0:1', '系统日志', 'JAVASCRIPT : /****/\n/****/\n$(tipDom).find(\".tpl-message\").click(function() {\n  alert(getContent());\n}); -> /****/\n/****/\n$(tipDom).find(\".tpl-message\").click(function() {\n  message.content = $(this).text();\n  Chat.send(message);\n});\n', '系统模块', '修改', '2018-03-29 20:16:14', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '常用消息');
INSERT INTO `bdf3_log_info` VALUES ('2afff71b-0474-443e-9251-7a0da4469ee2', '0:0:0:0:0:0:0:1', '系统日志', 'JAVASCRIPT : /****/\n/****/\n$(tipDom).find(\".tpl-message\").click(function() {\n  message.content = $(this).text();\n  Chat.send(message);\n}); -> /****/\n/****/\n$(tipDom).find(\".tpl-message\").click(function() {\n  alert($(this).text())\n  //message.content = $(this).text();\n  //Chat.send(message);\n});\n', '系统模块', '修改', '2018-03-29 20:17:05', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '常用消息');
INSERT INTO `bdf3_log_info` VALUES ('3529931d-e7c4-48db-a19c-ae0107f55c30', '0:0:0:0:0:0:0:1', '系统日志', 'JAVASCRIPT : /****/\n/****/\n$(tipDom).find(\".tpl-message\").click(function() {\n  alert($(this).text())\n  //message.content = $(this).text();\n  //Chat.send(message);\n}); -> /****/\n/****/\n$(tipDom).find(\".tpl-message\").click(function() {\n  console.log(message)\n  //message.content = $(this).text();\n  //Chat.send(message);\n});\n', '系统模块', '修改', '2018-03-29 20:21:45', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '常用消息');
INSERT INTO `bdf3_log_info` VALUES ('b8ffc078-95b3-4d3e-85c1-ffc7baf53794', '0:0:0:0:0:0:0:1', '系统日志', 'JAVASCRIPT : /****/\n/****/\n$(tipDom).find(\".tpl-message\").click(function() {\n  console.log(message)\n  //message.content = $(this).text();\n  //Chat.send(message);\n}); -> /****/\n/****/\n$(tipDom).find(\".tpl-message\").click(function() {\n  message.content = $(this).text();\n  console.log(message)\n  Chat.send(message);\n});\n', '系统模块', '修改', '2018-03-29 20:22:43', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '常用消息');
INSERT INTO `bdf3_log_info` VALUES ('d41c9807-6c71-4200-9812-9adcb767d0db', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '修改', '2018-03-29 20:45:31', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '常用消息');
INSERT INTO `bdf3_log_info` VALUES ('5180dd2f-55ec-4897-b84b-15dc8d4c60a8', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> a0b7efe9-8b34-407b-a6ad-568846ca6ee3\n名称 : null -> 请假单\n图标 : null -> fa fa-hotel\nHTML : null -> <!---->\n<!---->\n<div class=\"tpl-leave-flow\">\n  <div class=\"title\">请假单</div>\n  <div class=\"edit-item\">\n    <label>请假事由</label>\n    <input type=\"text\"/>\n  </div>\n  <div class=\"edit-item\">\n    <label>请假天数</label>\n    <input type=\"number\"/>\n  </div>\n  <button class=\"submit\">提交申请</button>\n<div>\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> false\n', '系统模块', '新增', '2018-03-29 20:45:31', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '请假单');
INSERT INTO `bdf3_log_info` VALUES ('2842fd41-1384-44ca-af89-2a5d186f0615', '0:0:0:0:0:0:0:1', '系统日志', 'CSS : null -> .tpl-leave-flow .title {\n  text-align: center;\n  font-size: 1.3em;\n  padding: 5px;\n}\n\n.tpl-leave-flow .item {\n  padding: 10px;\n}\n\n.tpl-leave-flow .line {\n  border-bottom: 1px solid #eee;\n}\n\n.tpl-leave-flow .item input {\n  border-radius: 3px;\n  border: 1px solid #ccc;\n  padding: 5px;\n  width: 200px;\n}\n\n.tpl-leave-flow button {\n  border: 1px solid #eee;\n  padding: 5px 10px;\n  margin: 10px;\n  float: right;\n  border-radius: 3px;\n}\n\n.tpl-leave-flow .submit {\n  background-color: #07c181;\n  color: #fff;\n  border: 1px solid #07c18;\n}\nHTML : <!---->\n<!---->\n<div class=\"tpl-leave-flow\">\n  <div class=\"title\">请假单</div>\n  <div class=\"edit-item\">\n    <label>请假事由</label>\n    <input type=\"text\"/>\n  </div>\n  <div class=\"edit-item\">\n    <label>请假天数</label>\n    <input type=\"number\"/>\n  </div>\n  <button class=\"submit\">提交申请</button>\n<div> -> <div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item line\">\n    <label>请假事由：</label>\n    <label> {data?.dayNum}}</label>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数：</label>\n    <label> 请假天数</label>\n  </div>\n  <button class=\"deal\">现在处理</button>\n<div>\n<!---->\n<div>{{ message.senderGroupMember.nickname }}发起请假申请</div>\n<!---->\n<div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item\">\n    <label>请假事由</label>\n    <input type=\"text\"/>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数</label>\n    <input type=\"number\"/>\n  </div>\n  <button class=\"submit\">提交申请</button>\n<div>\n', '系统模块', '修改', '2018-03-29 21:24:56', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '请假单');
INSERT INTO `bdf3_log_info` VALUES ('16f6b63b-b41e-4ea8-a630-8ec31217efd1', '0:0:0:0:0:0:0:1', '系统日志', 'CSS : .tpl-leave-flow .title {\n  text-align: center;\n  font-size: 1.3em;\n  padding: 5px;\n}\n\n.tpl-leave-flow .item {\n  padding: 10px;\n}\n\n.tpl-leave-flow .line {\n  border-bottom: 1px solid #eee;\n}\n\n.tpl-leave-flow .item input {\n  border-radius: 3px;\n  border: 1px solid #ccc;\n  padding: 5px;\n  width: 200px;\n}\n\n.tpl-leave-flow button {\n  border: 1px solid #eee;\n  padding: 5px 10px;\n  margin: 10px;\n  float: right;\n  border-radius: 3px;\n}\n\n.tpl-leave-flow .submit {\n  background-color: #07c181;\n  color: #fff;\n  border: 1px solid #07c18;\n} -> .tpl-leave-flow .title {\n  text-align: center;\n  font-size: 1.3em;\n  padding: 5px;\n}\n\n.tpl-leave-flow .item {\n  padding: 10px;\n}\n\n.tpl-leave-flow .line {\n  border-bottom: 1px solid #eee;\n}\n\n.tpl-leave-flow .item input {\n  border-radius: 3px;\n  border: 1px solid #ccc;\n  padding: 5px;\n  width: 200px;\n}\n\n.tpl-leave-flow button {\n  border: 1px solid #eee;\n  padding: 5px 10px;\n  margin: 10px;\n  float: right;\n  border-radius: 3px;\n}\n/****/\n/****/\n.tpl-leave-flow .title {\n  text-align: center;\n  font-size: 1.3em;\n  padding: 5px;\n}\n\n.tpl-leave-flow .item {\n  padding: 10px;\n}\n\n.tpl-leave-flow .line {\n  border-bottom: 1px solid #eee;\n}\n\n.tpl-leave-flow .item input {\n  border-radius: 3px;\n  border: 1px solid #ccc;\n  padding: 5px;\n  width: 200px;\n}\n\n.tpl-leave-flow button {\n  border: 1px solid #eee;\n  padding: 5px 10px;\n  margin: 10px;\n  float: right;\n  border-radius: 3px;\n}\n\n.tpl-leave-flow .submit {\n  background-color: #07c181;\n  color: #fff;\n  border: 1px solid #07c18;\n}\nHTML : <div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item line\">\n    <label>请假事由：</label>\n    <label> {data?.dayNum}}</label>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数：</label>\n    <label> 请假天数</label>\n  </div>\n  <button class=\"deal\">现在处理</button>\n<div>\n<!---->\n<div>{{ message.senderGroupMember.nickname }}发起请假申请</div>\n<!---->\n<div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item\">\n    <label>请假事由</label>\n    <input type=\"text\"/>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数</label>\n    <input type=\"number\"/>\n  </div>\n  <button class=\"submit\">提交申请</button>\n<div> -> <div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item line\">\n    <label>请假事由：</label>\n    <label>{{data.reason}}</label>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数：</label>\n    <label>{{data.dayNum}}天</label>\n  </div>\n  <button class=\"deal\">现在处理</button>\n<div>\n<!---->\n<div>{{ message.senderGroupMember.nickname }}发起请假申请</div>\n<!---->\n<div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item\">\n    <label>请假事由</label>\n    <input class=\"reson\" type=\"text\"/>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数</label>\n    <input class=\"day-num\" type=\"number\"/>\n  </div>\n  <button class=\"submit\">提交申请</button>\n<div>\nJAVASCRIPT : null -> $(\".tpl-leave-flow .deal\").click(function() {\n  dorado.MessageBox.confirm(\"确定审核通过？\", function() {\n    \n  })\n});\n/****/\n/****/\n$(\".tpl-leave-flow .submit\").click(function() {\n  dorado.MessageBox.confirm(\"确定提交请假申请？\", function() {\n    var data = {\n      dayNum: $(\".tpl-leave-flow .day-num\").val(),\n      reason: $(\".tpl-leave-flow .reason\").val()\n    };\n    message.content = JSON.stringify(data);\n    Chat.send(message);\n  })\n});\n', '系统模块', '修改', '2018-03-29 21:39:46', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '请假单');
INSERT INTO `bdf3_log_info` VALUES ('d7b63332-abf3-4a5c-b3c9-a6ab8820fe53', '0:0:0:0:0:0:0:1', '系统日志', '可显示 : false -> true\n', '系统模块', '修改', '2018-03-29 21:40:03', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '请假单');
INSERT INTO `bdf3_log_info` VALUES ('68f86222-0ce9-4b3b-8d96-171f551df4f7', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-29 21:40:55', 'lisi', '李四', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '个人办公');
INSERT INTO `bdf3_log_info` VALUES ('84b39974-4118-47ae-bdaf-930efb334fbe', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 4f758d04-3366-4f4f-a7be-e65ef991a1b2\n群名称 : null -> 请输入群组名称\n群图标 : null -> fa fa-diamond purple-text\n创建者 : null -> admin\n创建于 : null -> Thu Mar 29 21:42:42 CST 2018\n公告群 : null -> false\n临时群 : null -> false\n系统群 : null -> true\nprivateLetter : null -> false\n成员数 : null -> 1\n功能项 : null -> 0\n', '系统模块', '新增', '2018-03-29 21:42:43', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '请输入群组名称');
INSERT INTO `bdf3_log_info` VALUES ('bbf11185-c61d-4c41-8fe1-e25d862e387c', '0:0:0:0:0:0:0:1', '系统日志', 'administrator : false -> true\n', '系统模块', '新增', '2018-03-29 21:42:43', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '412e3b58-06ef-483c-ae04-7911c2cf7e70');
INSERT INTO `bdf3_log_info` VALUES ('bd28030d-a0e5-4ae7-9473-92b44be00709', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-29 21:42:44', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '4feee145-ed56-4636-be80-548905e19ead');
INSERT INTO `bdf3_log_info` VALUES ('98b80acd-7d2d-428c-b3cf-e3a156f57012', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-29 21:42:45', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '666b377c-671f-4193-ac23-399113d7a65a');
INSERT INTO `bdf3_log_info` VALUES ('51d11442-ea88-4b0f-9b1b-82aaee6c5423', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-29 21:42:46', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '5cae7e11-a8b8-4c61-bdac-30f84b7ea87b');
INSERT INTO `bdf3_log_info` VALUES ('c9c0ef69-f93b-4b45-b491-44ff2b3c7ffd', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '新增', '2018-03-29 21:42:46', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '83b374aa-d317-4eb7-bc1d-2df4468eda9e');
INSERT INTO `bdf3_log_info` VALUES ('c767945e-d968-4cf4-854e-6d747fd645c8', '0:0:0:0:0:0:0:1', '系统日志', '群名称 : 请输入群组名称 -> 个人办公\n', '系统模块', '修改', '2018-03-29 21:43:10', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '个人办公');
INSERT INTO `bdf3_log_info` VALUES ('d10bdbfd-d8bc-4f55-951b-07d98835e0ac', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 1\n', '系统模块', '修改', '2018-03-29 21:43:23', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '个人办公');
INSERT INTO `bdf3_log_info` VALUES ('756bbb80-4e8e-4b53-9f2e-bfac5a9eebb4', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> a0b7efe9-8b34-407b-a6ad-568846ca6ee3\n名称 : null -> 请假单\n图标 : null -> fa fa-hotel\nCSS : null -> .tpl-leave-flow .title {\n  text-align: center;\n  font-size: 1.3em;\n  padding: 5px;\n}\n\n.tpl-leave-flow .item {\n  padding: 10px;\n}\n\n.tpl-leave-flow .line {\n  border-bottom: 1px solid #eee;\n}\n\n.tpl-leave-flow .item input {\n  border-radius: 3px;\n  border: 1px solid #ccc;\n  padding: 5px;\n  width: 200px;\n}\n\n.tpl-leave-flow button {\n  border: 1px solid #eee;\n  padding: 5px 10px;\n  margin: 10px;\n  float: right;\n  border-radius: 3px;\n}\n/****/\n/****/\n.tpl-leave-flow .title {\n  text-align: center;\n  font-size: 1.3em;\n  padding: 5px;\n}\n\n.tpl-leave-flow .item {\n  padding: 10px;\n}\n\n.tpl-leave-flow .line {\n  border-bottom: 1px solid #eee;\n}\n\n.tpl-leave-flow .item input {\n  border-radius: 3px;\n  border: 1px solid #ccc;\n  padding: 5px;\n  width: 200px;\n}\n\n.tpl-leave-flow button {\n  border: 1px solid #eee;\n  padding: 5px 10px;\n  margin: 10px;\n  float: right;\n  border-radius: 3px;\n}\n\n.tpl-leave-flow .submit {\n  background-color: #07c181;\n  color: #fff;\n  border: 1px solid #07c18;\n}\nJAVASCRIPT : null -> $(\".tpl-leave-flow .deal\").click(function() {\n  dorado.MessageBox.confirm(\"确定审核通过？\", function() {\n    \n  })\n});\n/****/\n/****/\n$(\".tpl-leave-flow .submit\").click(function() {\n  dorado.MessageBox.confirm(\"确定提交请假申请？\", function() {\n    var data = {\n      dayNum: $(\".tpl-leave-flow .day-num\").val(),\n      reason: $(\".tpl-leave-flow .reason\").val()\n    };\n    message.content = JSON.stringify(data);\n    Chat.send(message);\n  })\n});\nHTML : null -> <div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item line\">\n    <label>请假事由：</label>\n    <label>{{data.reason}}</label>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数：</label>\n    <label>{{data.dayNum}}天</label>\n  </div>\n  <button class=\"deal\">现在处理</button>\n<div>\n<!---->\n<div>{{ message.senderGroupMember.nickname }}发起请假申请</div>\n<!---->\n<div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item\">\n    <label>请假事由</label>\n    <input class=\"reson\" type=\"text\"/>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数</label>\n    <input class=\"day-num\" type=\"number\"/>\n  </div>\n  <button class=\"submit\">提交申请</button>\n<div>\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 21:43:23', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '请假单');
INSERT INTO `bdf3_log_info` VALUES ('a2ac41a4-404e-42e2-be5a-77ff39203c63', '0:0:0:0:0:0:0:1', '系统日志', 'JAVASCRIPT : $(\".tpl-leave-flow .deal\").click(function() {\n  dorado.MessageBox.confirm(\"确定审核通过？\", function() {\n    \n  })\n});\n/****/\n/****/\n$(\".tpl-leave-flow .submit\").click(function() {\n  dorado.MessageBox.confirm(\"确定提交请假申请？\", function() {\n    var data = {\n      dayNum: $(\".tpl-leave-flow .day-num\").val(),\n      reason: $(\".tpl-leave-flow .reason\").val()\n    };\n    message.content = JSON.stringify(data);\n    Chat.send(message);\n  })\n}); -> $(\".tpl-leave-flow .deal\").click(function() {\n  dorado.MessageBox.confirm(\"确定审核通过？\", function() {\n    \n  })\n});\n/****/\n/****/\n$(\".tpl-leave-flow .submit\").click(function() {\n  var data = {\n    dayNum: $(\".tpl-leave-flow .day-num\").val(),\n    reason: $(\".tpl-leave-flow .reason\").val()\n  };\n  dorado.MessageBox.confirm(\"确定提交请假申请？\", function() {\n    message.content = JSON.stringify(data);\n    Chat.send(message);\n  })\n});\n', '系统模块', '修改', '2018-03-29 21:49:02', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '请假单');
INSERT INTO `bdf3_log_info` VALUES ('77fb6c30-6092-48f4-96a8-dd7802d63126', '0:0:0:0:0:0:0:1', '系统日志', 'HTML : <div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item line\">\n    <label>请假事由：</label>\n    <label>{{data.reason}}</label>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数：</label>\n    <label>{{data.dayNum}}天</label>\n  </div>\n  <button class=\"deal\">现在处理</button>\n<div>\n<!---->\n<div>{{ message.senderGroupMember.nickname }}发起请假申请</div>\n<!---->\n<div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item\">\n    <label>请假事由</label>\n    <input class=\"reson\" type=\"text\"/>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数</label>\n    <input class=\"day-num\" type=\"number\"/>\n  </div>\n  <button class=\"submit\">提交申请</button>\n<div> -> <div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item line\">\n    <label>请假事由：</label>\n    <label>{{data.reason}}</label>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数：</label>\n    <label>{{data.dayNum}}天</label>\n  </div>\n  <button class=\"deal\">现在处理</button>\n<div>\n<!---->\n<div>{{ message.senderGroupMember.nickname }}发起请假申请</div>\n<!---->\n<div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item\">\n    <label>请假事由</label>\n    <input class=\"reason\" type=\"text\"/>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数</label>\n    <input class=\"day-num\" type=\"number\"/>\n  </div>\n  <button class=\"submit\">提交申请</button>\n<div>\n', '系统模块', '修改', '2018-03-29 21:55:47', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '请假单');
INSERT INTO `bdf3_log_info` VALUES ('7417b6c3-06ff-4106-8c13-c530aeb6bc18', '0:0:0:0:0:0:0:1', '系统日志', 'CSS : .tpl-leave-flow .title {\n  text-align: center;\n  font-size: 1.3em;\n  padding: 5px;\n}\n\n.tpl-leave-flow .item {\n  padding: 10px;\n}\n\n.tpl-leave-flow .line {\n  border-bottom: 1px solid #eee;\n}\n\n.tpl-leave-flow .item input {\n  border-radius: 3px;\n  border: 1px solid #ccc;\n  padding: 5px;\n  width: 200px;\n}\n\n.tpl-leave-flow button {\n  border: 1px solid #eee;\n  padding: 5px 10px;\n  margin: 10px;\n  float: right;\n  border-radius: 3px;\n}\n/****/\n/****/\n.tpl-leave-flow .title {\n  text-align: center;\n  font-size: 1.3em;\n  padding: 5px;\n}\n\n.tpl-leave-flow .item {\n  padding: 10px;\n}\n\n.tpl-leave-flow .line {\n  border-bottom: 1px solid #eee;\n}\n\n.tpl-leave-flow .item input {\n  border-radius: 3px;\n  border: 1px solid #ccc;\n  padding: 5px;\n  width: 200px;\n}\n\n.tpl-leave-flow button {\n  border: 1px solid #eee;\n  padding: 5px 10px;\n  margin: 10px;\n  float: right;\n  border-radius: 3px;\n}\n\n.tpl-leave-flow .submit {\n  background-color: #07c181;\n  color: #fff;\n  border: 1px solid #07c18;\n} -> .tpl-leave-flow .title {\n  text-align: center;\n  font-size: 1.3em;\n  padding: 5px;\n}\n\n!.d-tip > .tpl-leave-flow {\n  background-color:#fff;	\n}\n\n.tpl-leave-flow .item {\n  padding: 10px;\n}\n\n.tpl-leave-flow .line {\n  border-bottom: 1px solid #eee;\n}\n\n.tpl-leave-flow .item input {\n  border-radius: 3px;\n  border: 1px solid #ccc;\n  padding: 5px;\n  width: 200px;\n}\n\n.tpl-leave-flow button {\n  border: 1px solid #eee;\n  padding: 5px 10px;\n  margin: 10px;\n  float: right;\n  border-radius: 3px;\n}\n/****/\n/****/\n.tpl-leave-flow .title {\n  text-align: center;\n  font-size: 1.3em;\n  padding: 5px;\n}\n\n.tpl-leave-flow .item {\n  padding: 10px;\n}\n\n.tpl-leave-flow .line {\n  border-bottom: 1px solid #eee;\n}\n\n.tpl-leave-flow .item input {\n  border-radius: 3px;\n  border: 1px solid #ccc;\n  padding: 5px;\n  width: 200px;\n}\n\n.tpl-leave-flow button {\n  border: 1px solid #eee;\n  padding: 5px 10px;\n  margin: 10px;\n  float: right;\n  border-radius: 3px;\n}\n\n.tpl-leave-flow .submit {\n  background-color: #07c181;\n  color: #fff;\n  border: 1px solid #07c18;\n}\nHTML : <div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item line\">\n    <label>请假事由：</label>\n    <label>{{data.reason}}</label>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数：</label>\n    <label>{{data.dayNum}}天</label>\n  </div>\n  <button class=\"deal\">现在处理</button>\n<div>\n<!---->\n<div>{{ message.senderGroupMember.nickname }}发起请假申请</div>\n<!---->\n<div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item\">\n    <label>请假事由</label>\n    <input class=\"reason\" type=\"text\"/>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数</label>\n    <input class=\"day-num\" type=\"number\"/>\n  </div>\n  <button class=\"submit\">提交申请</button>\n<div> -> <div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item line\">\n    <label>请假事由：</label>\n    <label>{{data.reason}}</label>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数：</label>\n    <label>{{data.dayNum}}天</label>\n  </div>\n  <button class=\"deal\">现在处理</button>\n<div>\n<!---->\n<div>{{ nickname }}发起请假申请</div>\n<!---->\n<div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item\">\n    <label>请假事由</label>\n    <input class=\"reason\" type=\"text\"/>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数</label>\n    <input class=\"day-num\" type=\"number\"/>\n  </div>\n  <button class=\"submit\">提交申请</button>\n<div>\nJAVASCRIPT : $(\".tpl-leave-flow .deal\").click(function() {\n  dorado.MessageBox.confirm(\"确定审核通过？\", function() {\n    \n  })\n});\n/****/\n/****/\n$(\".tpl-leave-flow .submit\").click(function() {\n  var data = {\n    dayNum: $(\".tpl-leave-flow .day-num\").val(),\n    reason: $(\".tpl-leave-flow .reason\").val()\n  };\n  dorado.MessageBox.confirm(\"确定提交请假申请？\", function() {\n    message.content = JSON.stringify(data);\n    Chat.send(message);\n  })\n}); -> $(\".tpl-leave-flow .deal\").click(function() {\n  dorado.MessageBox.confirm(\"确定审核通过？\", function() {\n    \n  })\n});\n/****/\n/****/\n$(\".tpl-leave-flow .submit\").click(function() {\n  var data = {\n    dayNum: $(\".tpl-leave-flow .day-num\").val(),\n    reason: $(\".tpl-leave-flow .reason\").val(),\n    nickname: message.senderGroupMember.nickname\n  };\n  dorado.MessageBox.confirm(\"确定提交请假申请？\", function() {\n    message.content = JSON.stringify(data);\n    Chat.send(message);\n  })\n});\n', '系统模块', '修改', '2018-03-29 21:59:33', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '请假单');
INSERT INTO `bdf3_log_info` VALUES ('25c9fec9-c944-420e-9108-828a816d4010', '0:0:0:0:0:0:0:1', '系统日志', 'JAVASCRIPT : $(\".tpl-leave-flow .deal\").click(function() {\n  dorado.MessageBox.confirm(\"确定审核通过？\", function() {\n    \n  })\n});\n/****/\n/****/\n$(\".tpl-leave-flow .submit\").click(function() {\n  var data = {\n    dayNum: $(\".tpl-leave-flow .day-num\").val(),\n    reason: $(\".tpl-leave-flow .reason\").val(),\n    nickname: message.senderGroupMember.nickname\n  };\n  dorado.MessageBox.confirm(\"确定提交请假申请？\", function() {\n    message.content = JSON.stringify(data);\n    Chat.send(message);\n  })\n}); -> $(\".tpl-leave-flow .deal\").click(function() {\n  dorado.MessageBox.confirm(\"确定审核通过？\", function() {\n    \n  })\n});\n/****/\n/****/\n$(\".tpl-leave-flow .submit\").click(function() {\n  var data = {\n    dayNum: $(\".tpl-leave-flow .day-num\").val(),\n    reason: $(\".tpl-leave-flow .reason\").val(),\n    nickname: message.senderGroupMember.nickname\n  };\n  console.log(data);\n  dorado.MessageBox.confirm(\"确定提交请假申请？\", function() {\n    message.content = JSON.stringify(data);\n    //Chat.send(message);\n  })\n});\n', '系统模块', '修改', '2018-03-29 22:02:39', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '请假单');
INSERT INTO `bdf3_log_info` VALUES ('08107b1b-989c-44cc-92bf-338a2825eaab', '0:0:0:0:0:0:0:1', '系统日志', 'HTML : <div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item line\">\n    <label>请假事由：</label>\n    <label>{{data.reason}}</label>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数：</label>\n    <label>{{data.dayNum}}天</label>\n  </div>\n  <button class=\"deal\">现在处理</button>\n<div>\n<!---->\n<div>{{ nickname }}发起请假申请</div>\n<!---->\n<div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item\">\n    <label>请假事由</label>\n    <input class=\"reason\" type=\"text\"/>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数</label>\n    <input class=\"day-num\" type=\"number\"/>\n  </div>\n  <button class=\"submit\">提交申请</button>\n<div> -> <div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item line\">\n    <label>请假事由：</label>\n    <label>{{data.reason}}</label>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数：</label>\n    <label>{{data.dayNum}}天</label>\n  </div>\n  <button class=\"deal\">现在处理</button>\n<div>\n<!---->\n<div>{{ data.nickname }}发起请假申请</div>\n<!---->\n<div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item\">\n    <label>请假事由</label>\n    <input class=\"reason\" type=\"text\"/>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数</label>\n    <input class=\"day-num\" type=\"number\"/>\n  </div>\n  <button class=\"submit\">提交申请</button>\n<div>\nJAVASCRIPT : $(\".tpl-leave-flow .deal\").click(function() {\n  dorado.MessageBox.confirm(\"确定审核通过？\", function() {\n    \n  })\n});\n/****/\n/****/\n$(\".tpl-leave-flow .submit\").click(function() {\n  var data = {\n    dayNum: $(\".tpl-leave-flow .day-num\").val(),\n    reason: $(\".tpl-leave-flow .reason\").val(),\n    nickname: message.senderGroupMember.nickname\n  };\n  console.log(data);\n  dorado.MessageBox.confirm(\"确定提交请假申请？\", function() {\n    message.content = JSON.stringify(data);\n    //Chat.send(message);\n  })\n}); -> $(\".tpl-leave-flow .deal\").click(function() {\n  dorado.MessageBox.confirm(\"确定审核通过？\", function() {\n    \n  })\n});\n/****/\n/****/\n$(\".tpl-leave-flow .submit\").click(function() {\n  var data = {\n    dayNum: $(\".tpl-leave-flow .day-num\").val(),\n    reason: $(\".tpl-leave-flow .reason\").val(),\n    nickname: message.senderGroupMember.nickname\n  };\n  dorado.MessageBox.confirm(\"确定提交请假申请？\", function() {\n    message.content = JSON.stringify(data);\n    Chat.send(message);\n  })\n});\n', '系统模块', '修改', '2018-03-29 22:05:54', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '请假单');
INSERT INTO `bdf3_log_info` VALUES ('bf6cc86a-3fdc-45dc-a50f-858cce8a4113', '0:0:0:0:0:0:0:1', '系统日志', 'JAVASCRIPT : $(\".tpl-leave-flow .deal\").click(function() {\n  dorado.MessageBox.confirm(\"确定审核通过？\", function() {\n    \n  })\n});\n/****/\n/****/\n$(\".tpl-leave-flow .submit\").click(function() {\n  var data = {\n    dayNum: $(\".tpl-leave-flow .day-num\").val(),\n    reason: $(\".tpl-leave-flow .reason\").val(),\n    nickname: message.senderGroupMember.nickname\n  };\n  dorado.MessageBox.confirm(\"确定提交请假申请？\", function() {\n    message.content = JSON.stringify(data);\n    Chat.send(message);\n  })\n}); -> $(\".tpl-leave-flow .deal\").click(function() {\n  dorado.MessageBox.confirm(\"确定审核通过？\", function() {\n    \n  })\n});\n/****/\n/****/\n$(\".tpl-leave-flow .submit\").click(function() {\n  var data = {\n    dayNum: $(\".tpl-leave-flow .day-num\").val(),\n    reason: $(\".tpl-leave-flow .reason\").val(),\n    nickname: message.senderGroupMember.nickname\n  };\n  message.content = JSON.stringify(data);\n  Chat.send(message);\n});\n', '系统模块', '修改', '2018-03-29 22:08:51', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '请假单');
INSERT INTO `bdf3_log_info` VALUES ('36e0b518-ca4c-40d3-ac11-9dcdcba2c559', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 22cbb691-354c-4bb4-9ddc-4969d8d111ca\n名称 : null -> 功能管理\n图标 : null -> fa fa-superscript\n视图 : null -> bdf3.notice.ui.view.TemplateMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:26:38', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '功能管理');
INSERT INTO `bdf3_log_info` VALUES ('dff88d92-2771-4475-a19b-1da55c68116d', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> d82052cc-7027-4cf3-bed4-9de1e775cf70\n名称 : null -> 用户管理\n图标 : null -> fa fa-user blue-text\n视图 : null -> bdf3.security.ui.view.UserMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:28:36', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '用户管理');
INSERT INTO `bdf3_log_info` VALUES ('e1f2c25b-7c96-4815-8067-19a52a00d679', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 6900e36f-62dd-4b45-8f98-d71875771e13\n名称 : null -> 菜单管理\n图标 : null -> fa fa-bars yellow-text\n视图 : null -> bdf3.security.ui.view.UrlMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:28:36', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '菜单管理');
INSERT INTO `bdf3_log_info` VALUES ('05e77e22-c1ce-4635-bb79-f6d7a42b0450', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 8e8aa5fc-412f-42c8-840e-282c90f20a19\n名称 : null -> 角色管理\n图标 : null -> fa fa-user-md blue-text\n视图 : null -> bdf3.security.ui.view.RoleMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:28:36', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '角色管理');
INSERT INTO `bdf3_log_info` VALUES ('aab8c038-ef24-437a-ae82-2a3372ae5355', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 36f834d5-8314-4f48-92bd-23c298e5738e\n名称 : null -> 权限分配\n图标 : null -> fa fa-shield yellow-text\n视图 : null -> bdf3.security.ui.view.PermissionMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:28:36', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '权限分配');
INSERT INTO `bdf3_log_info` VALUES ('a5a737ea-5dfb-477c-a34a-df0466689797', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> c29f21a1-83a9-41a0-9aa6-8de4878d5954\n名称 : null -> 菜单权限\n图标 : null -> fa fa-code-fork green-text\n视图 : null -> bdf3.security.ui.view.RoleUrlMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:28:36', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '菜单权限');
INSERT INTO `bdf3_log_info` VALUES ('d90a2ade-245e-4e8a-aba1-97df3aa3341c', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> ca0dcb00-86c1-4dee-9312-c6ccacbf4d57\n名称 : null -> 导入管理\n图标 : null -> fa fa-file-excel-o orange-text\n视图 : null -> bdf3.importer.view.ImporterSolutionMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:28:36', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '导入管理');
INSERT INTO `bdf3_log_info` VALUES ('45df273b-7f41-4279-aec2-3be3096f160d', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> a6714752-3a17-41cc-abce-a426a41ee14c\n名称 : null -> 字典管理\n图标 : null -> fa fa-book yellow-text\n视图 : null -> bdf3.dictionary.ui.view.DictionaryMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:28:36', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '字典管理');
INSERT INTO `bdf3_log_info` VALUES ('98b1989c-0800-4530-834e-ffb342a85c1c', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> ffa83b56-9610-42b1-97fe-41ceee9207fe\n名称 : null -> 云数据库\n图标 : null -> fa fa-database blue-text\n视图 : null -> bdf3.dbconsole.view.DbConsoleMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:28:36', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '云数据库');
INSERT INTO `bdf3_log_info` VALUES ('7038ad57-2f91-4d69-a42b-0ee17d11a30f', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 2081965d-fdcb-49ca-9763-6b497338f04d\n名称 : null -> 日志查询\n图标 : null -> fa fa-clock-o blue-text\n视图 : null -> bdf3.log.view.LogInfoMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:28:36', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '日志查询');
INSERT INTO `bdf3_log_info` VALUES ('02e6451c-b586-4384-92ec-12fb74b96739', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> ef2eeb71-eec0-4264-aa41-820f06b9918c\n名称 : null -> 个人中心\n图标 : null -> fa fa-tachometer red-text\n视图 : null -> bdf3.security.ui.view.PersonalCenter.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:28:36', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.TemplateMaintain.d', '个人中心');
INSERT INTO `bdf3_log_info` VALUES ('0f288211-15a4-4e0e-96c5-9d474f2b8fac', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 1\n', '系统模块', '修改', '2018-03-29 23:29:21', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('c5a085a3-932a-4f1f-8169-d5215e58b337', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> d82052cc-7027-4cf3-bed4-9de1e775cf70\n名称 : null -> 用户管理\n图标 : null -> fa fa-user blue-text\n视图 : null -> bdf3.security.ui.view.UserMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:29:21', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '用户管理');
INSERT INTO `bdf3_log_info` VALUES ('c3320eb2-8885-458b-89d3-e13f40899ed2', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 6900e36f-62dd-4b45-8f98-d71875771e13\n名称 : null -> 菜单管理\n图标 : null -> fa fa-bars yellow-text\n视图 : null -> bdf3.security.ui.view.UrlMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:29:24', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '菜单管理');
INSERT INTO `bdf3_log_info` VALUES ('e4ac4e20-40ae-46f6-9e98-c5d49cfd2585', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 8e8aa5fc-412f-42c8-840e-282c90f20a19\n名称 : null -> 角色管理\n图标 : null -> fa fa-user-md blue-text\n视图 : null -> bdf3.security.ui.view.RoleMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:29:27', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '角色管理');
INSERT INTO `bdf3_log_info` VALUES ('180470b3-48e2-4b68-8cd3-697a7c1147f5', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 36f834d5-8314-4f48-92bd-23c298e5738e\n名称 : null -> 权限分配\n图标 : null -> fa fa-shield yellow-text\n视图 : null -> bdf3.security.ui.view.PermissionMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:29:30', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '权限分配');
INSERT INTO `bdf3_log_info` VALUES ('e37837ac-3f56-4fc5-8c3d-9acbb7d07916', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 22cbb691-354c-4bb4-9ddc-4969d8d111ca\n名称 : null -> 功能管理\n图标 : null -> fa fa-superscript\n视图 : null -> bdf3.notice.ui.view.TemplateMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:29:38', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '功能管理');
INSERT INTO `bdf3_log_info` VALUES ('5f11be83-f5ef-4dfd-80bc-84fdcb68118f', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> ca0dcb00-86c1-4dee-9312-c6ccacbf4d57\n名称 : null -> 导入管理\n图标 : null -> fa fa-file-excel-o orange-text\n视图 : null -> bdf3.importer.view.ImporterSolutionMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:29:42', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '导入管理');
INSERT INTO `bdf3_log_info` VALUES ('de84e27a-6ec5-4e20-8eb4-d61bdd92ba52', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> a6714752-3a17-41cc-abce-a426a41ee14c\n名称 : null -> 字典管理\n图标 : null -> fa fa-book yellow-text\n视图 : null -> bdf3.dictionary.ui.view.DictionaryMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:29:45', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '字典管理');
INSERT INTO `bdf3_log_info` VALUES ('1fafba5e-4410-40c5-8eb6-ade8fa05c2ca', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 2\n', '系统模块', '修改', '2018-03-29 23:31:33', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '个人办公');
INSERT INTO `bdf3_log_info` VALUES ('6de30116-0497-414b-b549-8bca9beac71f', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> ef2eeb71-eec0-4264-aa41-820f06b9918c\n名称 : null -> 个人中心\n图标 : null -> fa fa-tachometer red-text\n视图 : null -> bdf3.security.ui.view.PersonalCenter.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:31:33', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '个人中心');
INSERT INTO `bdf3_log_info` VALUES ('e3da56df-b780-4128-8f4a-1c57487975ab', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 1\n', '系统模块', '修改', '2018-03-29 23:31:47', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '运维群');
INSERT INTO `bdf3_log_info` VALUES ('0775d5e6-ee64-48cf-9d40-7e3b6a25ff57', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> ffa83b56-9610-42b1-97fe-41ceee9207fe\n名称 : null -> 云数据库\n图标 : null -> fa fa-database blue-text\n视图 : null -> bdf3.dbconsole.view.DbConsoleMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:31:47', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '云数据库');
INSERT INTO `bdf3_log_info` VALUES ('2cb9237f-4080-4b09-a2d4-f8bfa6ff5255', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 2081965d-fdcb-49ca-9763-6b497338f04d\n名称 : null -> 日志查询\n图标 : null -> fa fa-clock-o blue-text\n视图 : null -> bdf3.log.view.LogInfoMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:31:49', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '日志查询');
INSERT INTO `bdf3_log_info` VALUES ('ccac5a57-1efe-4d19-b739-5e9f5a765d6b', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 6\n', '系统模块', '修改', '2018-03-29 23:35:23', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('f51aaa19-86bd-481b-822b-6aa39c249285', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> a6714752-3a17-41cc-abce-a426a41ee14c\n名称 : null -> 字典管理\n图标 : null -> fa fa-book yellow-text\n视图 : null -> bdf3.dictionary.ui.view.DictionaryMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:35:27', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '字典管理');
INSERT INTO `bdf3_log_info` VALUES ('5f1a8d60-33b6-4ac1-b1cd-3c8bbc4b91cc', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 7\n', '系统模块', '修改', '2018-03-29 23:35:44', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('bff1f51f-223f-42c2-b938-ddbb375f437f', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 7\n', '系统模块', '修改', '2018-03-29 23:36:29', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('6f0af137-5416-4d50-8867-9b96e0b49b94', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 7\n', '系统模块', '修改', '2018-03-29 23:37:21', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('b53a1237-cfbb-49b8-9515-633b5be77ca8', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 7\n', '系统模块', '修改', '2018-03-29 23:38:30', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('60fff426-ead0-4dc6-a3b6-24d4890b40a9', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 7\n', '系统模块', '修改', '2018-03-29 23:38:50', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('e545a108-922c-4325-92f8-b6e482d22a12', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 7\n', '系统模块', '修改', '2018-03-29 23:39:40', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('7b9fcac5-bd31-45f3-9e8c-150dea794fd5', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 7\n', '系统模块', '修改', '2018-03-29 23:40:20', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('c9e01377-ae44-4e5d-83c5-8ba5d5ba0b33', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-29 23:40:20', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '字典管理');
INSERT INTO `bdf3_log_info` VALUES ('4776482c-0481-4c95-9baa-70d9e34d5e2a', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 2\n', '系统模块', '修改', '2018-03-29 23:40:43', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '个人办公');
INSERT INTO `bdf3_log_info` VALUES ('444b90ea-c7ad-4348-99c2-a8877828f09e', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 7\n', '系统模块', '修改', '2018-03-29 23:40:43', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('4d16e620-bf12-4ee5-a76e-9daddcf966a2', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> a6714752-3a17-41cc-abce-a426a41ee14c\n名称 : null -> 字典管理\n图标 : null -> fa fa-book yellow-text\n视图 : null -> bdf3.dictionary.ui.view.DictionaryMaintain.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:40:43', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '字典管理');
INSERT INTO `bdf3_log_info` VALUES ('1350e016-4598-4feb-92cf-fe15133bbda5', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 7\n', '系统模块', '修改', '2018-03-29 23:41:34', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '系统管理群');
INSERT INTO `bdf3_log_info` VALUES ('63cff5a7-c573-4e02-9b5f-3a5cc5b93d33', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 3\n', '系统模块', '修改', '2018-03-29 23:41:34', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '运维群');
INSERT INTO `bdf3_log_info` VALUES ('82bd281b-9e0a-48bd-8282-fe3ef642d86c', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> ef2eeb71-eec0-4264-aa41-820f06b9918c\n名称 : null -> 个人中心\n图标 : null -> fa fa-tachometer red-text\n视图 : null -> bdf3.security.ui.view.PersonalCenter.d\n全局 : null -> false\n下线 : null -> false\n微程序 : null -> false\n可显示 : null -> true\n', '系统模块', '新增', '2018-03-29 23:41:34', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '个人中心');
INSERT INTO `bdf3_log_info` VALUES ('5acd09e7-b31c-490e-b081-5bf428530d4d', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2018-03-29 23:48:57', 'lisi', '李四', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '个人办公');
INSERT INTO `bdf3_log_info` VALUES ('cf23f2c4-559d-49b7-930b-40383cc06a7e', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 4\n', '系统模块', '修改', '2018-03-29 23:52:04', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '运维群');
INSERT INTO `bdf3_log_info` VALUES ('73e687bc-333b-4eb6-a299-32b69801ae60', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> d3753b1d-a256-44b6-a391-8a2c1a34e93f\n名称 : null -> 大号红字\n图标 : null -> fa fa-font red-text\nCSS : null -> .big-size-red-word {\n  font-size: 2em;\n  color: rgb(255, 0, 0);\n}\nHTML : null -> <div class=\"big-size-red-word\">{{ message.content }}</div>\n\n全局 : null -> true\n下线 : null -> false\n微程序 : null -> false\n描述 : null -> 大号红色字体的消息模版\n可显示 : null -> false\n', '系统模块', '新增', '2018-03-29 23:52:04', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '大号红字');
INSERT INTO `bdf3_log_info` VALUES ('aa108aa9-0577-4efc-83b9-67cfe662d0f4', '0:0:0:0:0:0:0:1', '系统日志', '功能项 : 0 -> 4\ntemplateId : null -> d3753b1d-a256-44b6-a391-8a2c1a34e93f\n', '系统模块', '修改', '2018-03-29 23:52:06', 'admin', '系统管理员', 'http://localhost:8080/bdf3.notice.ui.view.Chat.d', '运维群');
INSERT INTO `bdf3_log_info` VALUES ('bfb722da-b9d5-4d10-9130-9e4e6257da09', '0:0:0:0:0:0:0:1', '系统日志', 'ID : null -> 809146e8-c076-4b46-a023-f5c034cd006d\r\n角色名称 : null -> 管理员\r\n', '系统模块', '新增', '2020-04-17 15:06:45', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleMaintain.d', '管理员');
INSERT INTO `bdf3_log_info` VALUES ('c243f897-6a97-42fa-891a-a6615b863284', '0:0:0:0:0:0:0:1', '系统日志', 'ID : null -> afa6171b-8229-423c-b203-1b5b7b5f0fc7\r\n角色名称 : null -> 程序\r\n', '系统模块', '新增', '2020-04-17 15:06:52', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleMaintain.d', '程序');
INSERT INTO `bdf3_log_info` VALUES ('2e33e6e2-7a1c-4e34-8421-fa73dd1a38e0', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> ff3959c0-397d-47a9-9a97-8d8612569d0d\r\nroleId : null -> 809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceId : null -> 07efe0f8-1d7c-483c-bc3c-54e87f9f285b\r\nattribute : null -> ROLE_809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:15', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', 'ff3959c0-397d-47a9-9a97-8d8612569d0d');
INSERT INTO `bdf3_log_info` VALUES ('c5e7c577-7ddb-461d-b3e8-9948102909a4', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> dbccc258-4ea0-4c8e-942b-c6f1f584b0bc\r\nroleId : null -> 809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceId : null -> 1491d097-0795-4a0f-8608-7b452f8ac2be\r\nattribute : null -> ROLE_809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:15', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', 'dbccc258-4ea0-4c8e-942b-c6f1f584b0bc');
INSERT INTO `bdf3_log_info` VALUES ('d14c1744-1181-4aa6-86a0-1862b4802542', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 864c1b2e-b372-4e5e-bb3d-01b24ef8ba33\r\nroleId : null -> 809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceId : null -> 2f858c99-1253-498b-801d-aa5c4f021542\r\nattribute : null -> ROLE_809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:15', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', '864c1b2e-b372-4e5e-bb3d-01b24ef8ba33');
INSERT INTO `bdf3_log_info` VALUES ('b6301a4a-03b8-441c-892b-1faeb4925ea0', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 741f90cd-a8f4-450b-a576-d145167e953a\r\nroleId : null -> 809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceId : null -> 328d6a2a-3acf-4501-b621-5687f1b057e1\r\nattribute : null -> ROLE_809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:15', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', '741f90cd-a8f4-450b-a576-d145167e953a');
INSERT INTO `bdf3_log_info` VALUES ('1101400c-3527-4a20-a912-1d7d527c63a2', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 5fb8f0d3-86bb-423d-828a-084c6f70d448\r\nroleId : null -> 809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceId : null -> 4523af08-01f0-44f5-be89-3b2241da0e9e\r\nattribute : null -> ROLE_809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:15', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', '5fb8f0d3-86bb-423d-828a-084c6f70d448');
INSERT INTO `bdf3_log_info` VALUES ('052c9fa8-8a8d-4e00-8922-9e916ed4eed5', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 1939c995-58ef-47b0-86cf-54e951bcd53a\r\nroleId : null -> 809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceId : null -> 46f0ee9b-04a8-41f2-9008-81efa3fa2fe1\r\nattribute : null -> ROLE_809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:15', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', '1939c995-58ef-47b0-86cf-54e951bcd53a');
INSERT INTO `bdf3_log_info` VALUES ('c60aa868-cfc8-4e13-aff3-d3dd6c18fc97', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> f0576a8e-8630-4399-bfe8-94ceab239e1f\r\nroleId : null -> 809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceId : null -> e9db79a1-571a-4804-9111-ae9b17680b95\r\nattribute : null -> ROLE_809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:15', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', 'f0576a8e-8630-4399-bfe8-94ceab239e1f');
INSERT INTO `bdf3_log_info` VALUES ('d9cf39bc-5ae8-4999-a837-cd2d4cee92eb', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> c4fd47b5-1921-4bfe-8cdf-7b163059bd6d\r\nroleId : null -> 809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceId : null -> c7cb63b4-eb12-4d72-b943-aac6acbd4f6c\r\nattribute : null -> ROLE_809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:15', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', 'c4fd47b5-1921-4bfe-8cdf-7b163059bd6d');
INSERT INTO `bdf3_log_info` VALUES ('89a5d23a-e2f1-45a6-96d8-6f79e4bc9d1a', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 7ef25d57-efe8-4590-b405-001e7d6e1f39\r\nroleId : null -> 809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceId : null -> 317952ad-a481-45e4-aa5b-d880a8fd51f8\r\nattribute : null -> ROLE_809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:15', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', '7ef25d57-efe8-4590-b405-001e7d6e1f39');
INSERT INTO `bdf3_log_info` VALUES ('7a6b28bc-9f29-4f58-bd14-27b3ee630519', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> cc6886da-54dc-4b9d-85a6-369621d93ac9\r\nroleId : null -> 809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceId : null -> cafb93bb-15d6-4737-aec0-0d500aaeb8e5\r\nattribute : null -> ROLE_809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:15', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', 'cc6886da-54dc-4b9d-85a6-369621d93ac9');
INSERT INTO `bdf3_log_info` VALUES ('644d9822-c003-44bf-95f6-af15fb3e246a', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> c169b0b2-5fa2-497d-a452-95eb39b97ca4\r\nroleId : null -> 809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceId : null -> 6fd00879-07f0-4e30-8109-c405fead4d30\r\nattribute : null -> ROLE_809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:15', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', 'c169b0b2-5fa2-497d-a452-95eb39b97ca4');
INSERT INTO `bdf3_log_info` VALUES ('fdffd3a7-d63d-455f-ae9b-24d28f74fbd5', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 6ee2b85c-aa85-4006-9c92-be262d876ad6\r\nroleId : null -> 809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceId : null -> 8b9f683f-b8e6-4eee-8cad-4fd8475860d4\r\nattribute : null -> ROLE_809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:15', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', '6ee2b85c-aa85-4006-9c92-be262d876ad6');
INSERT INTO `bdf3_log_info` VALUES ('c2f751b0-0118-4a42-ab48-8374a2255777', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 0cfc3831-b7b6-4818-80a0-5b77024d9268\r\nroleId : null -> afa6171b-8229-423c-b203-1b5b7b5f0fc7\r\nresourceId : null -> 07efe0f8-1d7c-483c-bc3c-54e87f9f285b\r\nattribute : null -> ROLE_afa6171b-8229-423c-b203-1b5b7b5f0fc7\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:34', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', '0cfc3831-b7b6-4818-80a0-5b77024d9268');
INSERT INTO `bdf3_log_info` VALUES ('7ee76b68-9643-48f5-ae1d-e70a4a570656', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 6ba7264d-3f02-4089-b682-9883a166d934\r\nroleId : null -> afa6171b-8229-423c-b203-1b5b7b5f0fc7\r\nresourceId : null -> 2f858c99-1253-498b-801d-aa5c4f021542\r\nattribute : null -> ROLE_afa6171b-8229-423c-b203-1b5b7b5f0fc7\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:34', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', '6ba7264d-3f02-4089-b682-9883a166d934');
INSERT INTO `bdf3_log_info` VALUES ('851bd1b3-aae6-48e8-a867-90ede64dd393', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 3d9bdbae-2078-473d-9296-f9cad5159c70\r\nroleId : null -> afa6171b-8229-423c-b203-1b5b7b5f0fc7\r\nresourceId : null -> 8b9f683f-b8e6-4eee-8cad-4fd8475860d4\r\nattribute : null -> ROLE_afa6171b-8229-423c-b203-1b5b7b5f0fc7\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:34', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', '3d9bdbae-2078-473d-9296-f9cad5159c70');
INSERT INTO `bdf3_log_info` VALUES ('17a4a99c-e2fb-415a-8c3a-818e1d56dfb2', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 76de4e0c-2809-40a4-8d48-d06c424bbd88\r\nroleId : null -> afa6171b-8229-423c-b203-1b5b7b5f0fc7\r\nresourceId : null -> 6fd00879-07f0-4e30-8109-c405fead4d30\r\nattribute : null -> ROLE_afa6171b-8229-423c-b203-1b5b7b5f0fc7\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:34', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', '76de4e0c-2809-40a4-8d48-d06c424bbd88');
INSERT INTO `bdf3_log_info` VALUES ('5b73b189-b2cc-477d-a7fa-b4172c27a2e4', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 4d4d466d-0b27-4fdb-92bd-196549e75f2d\r\nroleId : null -> afa6171b-8229-423c-b203-1b5b7b5f0fc7\r\nresourceId : null -> cafb93bb-15d6-4737-aec0-0d500aaeb8e5\r\nattribute : null -> ROLE_afa6171b-8229-423c-b203-1b5b7b5f0fc7\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:34', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', '4d4d466d-0b27-4fdb-92bd-196549e75f2d');
INSERT INTO `bdf3_log_info` VALUES ('62f0a077-481f-4147-821c-de26893a5be8', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 47f6ff2f-1f69-4c7b-9568-bdad0c9cdf99\r\nroleId : null -> afa6171b-8229-423c-b203-1b5b7b5f0fc7\r\nresourceId : null -> 317952ad-a481-45e4-aa5b-d880a8fd51f8\r\nattribute : null -> ROLE_afa6171b-8229-423c-b203-1b5b7b5f0fc7\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:07:34', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', '47f6ff2f-1f69-4c7b-9568-bdad0c9cdf99');
INSERT INTO `bdf3_log_info` VALUES ('cc5e87c6-be15-4a57-9366-a34a83abb39b', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> 3ae0ee87-32e3-4356-aef0-064974aac618\r\n名称 : null -> 服务器管理\r\n图标 : null -> fa fa-database blue-text\r\n路径 : null -> com.x8game.fire.gms.view.GameServer.d\r\n可导航 : null -> true\r\n排序号 : null -> 15\r\n', '系统模块', '新增', '2020-04-17 15:09:51', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.UrlMaintain.d', '服务器管理');
INSERT INTO `bdf3_log_info` VALUES ('6200a303-866d-4dda-b915-1e2ea7bcc6a3', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> d30a44a2-bc6e-460e-b853-587dd72722d7\r\nroleId : null -> 809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceId : null -> 3ae0ee87-32e3-4356-aef0-064974aac618\r\nattribute : null -> ROLE_809146e8-c076-4b46-a023-f5c034cd006d\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:10:26', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.RoleUrlMaintain.d', 'd30a44a2-bc6e-460e-b853-587dd72722d7');
INSERT INTO `bdf3_log_info` VALUES ('53fb82f9-8be7-4ca9-9166-aeb08bc8a39d', '0:0:0:0:0:0:0:1', '系统日志', 'id : null -> ad990406-83b7-4649-9c4d-1b679e5c83fa\r\nroleId : null -> afa6171b-8229-423c-b203-1b5b7b5f0fc7\r\nresourceId : null -> 3ae0ee87-32e3-4356-aef0-064974aac618\r\nattribute : null -> ROLE_afa6171b-8229-423c-b203-1b5b7b5f0fc7\r\nresourceType : null -> URL\r\n', '系统模块', '新增', '2020-04-17 15:10:33', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.PermissionMaintain.d', 'ad990406-83b7-4649-9c4d-1b679e5c83fa');
INSERT INTO `bdf3_log_info` VALUES ('ec1ed2d2-b4bc-48b1-be8e-1bb65eb00a5d', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2020-04-17 17:30:23', 'admin', '系统管理员', 'http://localhost:8080/com.x8game.fire.gms.view.GameServer.d', '蓝月1-107服');
INSERT INTO `bdf3_log_info` VALUES ('b4915e12-05be-4087-a4c7-73ff866b3755', '0:0:0:0:0:0:0:1', '系统日志', '描述 :  -> 123\r\n区 : 0 -> 1\r\n', '系统模块', '修改', '2020-04-17 17:30:54', 'admin', '系统管理员', 'http://localhost:8080/com.x8game.fire.gms.view.GameServer.d', '外网测试服跨服');
INSERT INTO `bdf3_log_info` VALUES ('cda032e1-2776-417b-8820-7afc7366da2f', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2020-04-17 17:33:28', 'admin', '系统管理员', 'http://localhost:8080/com.x8game.fire.gms.view.GameServer.d', '外网测试服跨服');
INSERT INTO `bdf3_log_info` VALUES ('979e2e8d-a087-4e65-8ca0-1002e0f62a79', '0:0:0:0:0:0:0:1', '系统日志', '查询服务端口 : 5311 -> 531\r\n区 : 0 -> 1\r\n状态 : 1 -> -1\r\n', '系统模块', '修改', '2020-04-17 17:35:33', 'admin', '系统管理员', 'http://localhost:8080/com.x8game.fire.gms.view.GameServer.d', '蓝月传世吃鸡跨服');
INSERT INTO `bdf3_log_info` VALUES ('4676f778-a92a-402c-809a-e87399a17164', '0:0:0:0:0:0:0:1', '系统日志', '区 : 1 -> 0\r\n', '系统模块', '修改', '2020-04-17 17:49:26', 'admin', '系统管理员', 'http://localhost:8080/com.x8game.fire.gms.view.GameServer.d', '蓝月传世吃鸡跨服');
INSERT INTO `bdf3_log_info` VALUES ('7da63611-8b67-4928-8166-b28ee4532f76', '0:0:0:0:0:0:0:1', '系统日志', '区 : 0 -> 1\r\n', '系统模块', '修改', '2020-04-17 17:56:03', 'admin', '系统管理员', 'http://localhost:8080/com.x8game.fire.gms.view.GameServer.d', '蓝月传世吃鸡跨服');
INSERT INTO `bdf3_log_info` VALUES ('2dac090c-5af6-497e-aeb7-75e4fa2462ce', '0:0:0:0:0:0:0:1', '系统日志', '区 : 1 -> 2\r\n', '系统模块', '修改', '2020-04-17 17:57:02', 'admin', '系统管理员', 'http://localhost:8080/com.x8game.fire.gms.view.GameServer.d', '蓝月传世吃鸡跨服');
INSERT INTO `bdf3_log_info` VALUES ('1e4f424b-2c0a-4440-aa2c-0e71ef43f16d', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2020-04-17 17:57:24', 'admin', '系统管理员', 'http://localhost:8080/com.x8game.fire.gms.view.GameServer.d', '蓝月传世吃鸡跨服');
INSERT INTO `bdf3_log_info` VALUES ('15437e52-ad33-4976-987b-f23f6d9538a8', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2020-04-17 18:13:12', 'admin', '系统管理员', 'http://localhost:8080/com.x8game.fire.gms.view.GameServer.d', '外网测试跨服2');
INSERT INTO `bdf3_log_info` VALUES ('4e038533-0a10-4cd9-aa20-52a0e79fd0c0', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2020-04-17 18:13:20', 'admin', '系统管理员', 'http://localhost:8080/com.x8game.fire.gms.view.GameServer.d', '蓝月传世域外跨服');
INSERT INTO `bdf3_log_info` VALUES ('b0029f10-68ea-4bef-9b1d-14192832d202', '0:0:0:0:0:0:0:1', '系统日志', '', '系统模块', '删除', '2020-04-17 18:14:54', 'admin', '系统管理员', 'http://localhost:8080/bdf3.security.ui.view.UserMaintain.d', null);

-- ----------------------------
-- Table structure for bdf3_mapping_rule
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_mapping_rule`;
CREATE TABLE `bdf3_mapping_rule` (
  `id_` varchar(36) NOT NULL,
  `cell_post_parser_bean_` varchar(255) DEFAULT NULL,
  `cell_post_parser_param_` varchar(255) DEFAULT NULL,
  `cell_prev_parser_bean_` varchar(255) DEFAULT NULL,
  `cell_prev_parser_param_` varchar(255) DEFAULT NULL,
  `excel_column_` int(11) DEFAULT NULL,
  `ignore_error_format_data_` bit(1) DEFAULT NULL,
  `importer_solution_id_` varchar(64) DEFAULT NULL,
  `name_` varchar(255) DEFAULT NULL,
  `property_name_` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `FKp5jfy47dptvmj9drl6pxgww1a` (`importer_solution_id_`),
  CONSTRAINT `FKp5jfy47dptvmj9drl6pxgww1a` FOREIGN KEY (`importer_solution_id_`) REFERENCES `bdf3_importer_solution` (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_mapping_rule
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_member_notice
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_member_notice`;
CREATE TABLE `bdf3_member_notice` (
  `id_` varchar(64) NOT NULL,
  `member_id_` varchar(64) DEFAULT NULL,
  `notice_id_` varchar(64) DEFAULT NULL,
  `read_time_` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_member_notice
-- ----------------------------
INSERT INTO `bdf3_member_notice` VALUES ('2436ee5d-53ad-4855-9ac2-653039c0f3d6', 'admin', 'ff46911c-847f-4476-92fd-bf6630b0f2c3', '2020-04-17 15:04:41');
INSERT INTO `bdf3_member_notice` VALUES ('2f5d7caa-23d1-409e-96d8-6a96c9e37a64', 'admin', '8745ea94-7d58-4d19-9a0f-3231d37282df', '2020-04-17 15:04:41');
INSERT INTO `bdf3_member_notice` VALUES ('5aa174bd-9b6a-432a-b4e5-accfa8676a10', 'admin', '2187517d-dc21-4df9-892c-5b165db8c62b', '2020-04-17 15:04:41');
INSERT INTO `bdf3_member_notice` VALUES ('81efe309-94d6-4d20-b1ad-74670e284220', 'admin', 'c22b4f4c-208b-47cd-88aa-e0cca96082a1', '2020-04-17 15:04:41');
INSERT INTO `bdf3_member_notice` VALUES ('b97d22c0-1385-4072-99e9-3aac3dcb91e6', 'admin', '892fa5c1-7711-46ce-97df-90692d5bf5fc', '2020-04-17 15:04:41');
INSERT INTO `bdf3_member_notice` VALUES ('c0ea69a7-72fd-4e9f-9bb1-5f78274f7de3', 'admin', '7ae1b5df-3793-471f-901c-62c285864346', '2020-04-17 15:04:41');
INSERT INTO `bdf3_member_notice` VALUES ('c1aaa7bb-4508-4d19-816a-3422cee9353d', 'lisi', '4d85b216-facc-434d-9466-144a806b3d27', '2020-04-17 15:08:22');
INSERT INTO `bdf3_member_notice` VALUES ('ed0283a9-531a-45d1-a9b5-db410e1046af', 'admin', 'f640c90e-3d9c-4272-9dc6-182e2b0f42bb', '2020-04-17 15:04:41');
INSERT INTO `bdf3_member_notice` VALUES ('f122e49a-1016-4bd4-a361-4037c27794f5', 'admin', 'ee939ac5-9f49-4bb2-a314-589cc3d2e5b8', '2020-04-17 15:04:41');

-- ----------------------------
-- Table structure for bdf3_notice
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_notice`;
CREATE TABLE `bdf3_notice` (
  `id_` varchar(64) NOT NULL,
  `all_` bit(1) DEFAULT NULL,
  `content_` varchar(512) DEFAULT NULL,
  `expire_time_` datetime DEFAULT NULL,
  `group_id_` varchar(64) DEFAULT NULL,
  `send_time_` datetime DEFAULT NULL,
  `sender_` varchar(64) DEFAULT NULL,
  `title_` varchar(255) DEFAULT NULL,
  `type_` varchar(64) DEFAULT NULL,
  `url_` varchar(512) DEFAULT NULL,
  `template_id_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_notice
-- ----------------------------
INSERT INTO `bdf3_notice` VALUES ('c22b4f4c-208b-47cd-88aa-e0cca96082a1', '\0', '我正在开会，稍后给你回复', null, '4f758d04-3366-4f4f-a7be-e65ef991a1b2', '2018-03-29 23:49:33', 'lisi', null, 'message', null, 'ece99ee9-577e-4148-9037-d3f4ed553f7a');
INSERT INTO `bdf3_notice` VALUES ('2187517d-dc21-4df9-892c-5b165db8c62b', '\0', '走，吃饭去', null, '4f758d04-3366-4f4f-a7be-e65ef991a1b2', '2018-03-29 23:49:35', 'lisi', null, 'message', null, 'ece99ee9-577e-4148-9037-d3f4ed553f7a');
INSERT INTO `bdf3_notice` VALUES ('8745ea94-7d58-4d19-9a0f-3231d37282df', '\0', '这个问题很严重', null, '4f758d04-3366-4f4f-a7be-e65ef991a1b2', '2018-03-29 23:49:36', 'lisi', null, 'message', null, 'ece99ee9-577e-4148-9037-d3f4ed553f7a');
INSERT INTO `bdf3_notice` VALUES ('892fa5c1-7711-46ce-97df-90692d5bf5fc', '\0', '我下班了，明天在讨论', null, '4f758d04-3366-4f4f-a7be-e65ef991a1b2', '2018-03-29 23:49:37', 'lisi', null, 'message', null, 'ece99ee9-577e-4148-9037-d3f4ed553f7a');
INSERT INTO `bdf3_notice` VALUES ('ee939ac5-9f49-4bb2-a314-589cc3d2e5b8', '\0', '稍等，马上给你答复', null, '4f758d04-3366-4f4f-a7be-e65ef991a1b2', '2018-03-29 23:49:38', 'lisi', null, 'message', null, 'ece99ee9-577e-4148-9037-d3f4ed553f7a');
INSERT INTO `bdf3_notice` VALUES ('f640c90e-3d9c-4272-9dc6-182e2b0f42bb', '\0', '谢谢你的帮助', null, '4f758d04-3366-4f4f-a7be-e65ef991a1b2', '2018-03-29 23:49:39', 'lisi', null, 'message', null, 'ece99ee9-577e-4148-9037-d3f4ed553f7a');
INSERT INTO `bdf3_notice` VALUES ('7ae1b5df-3793-471f-901c-62c285864346', '\0', '这个问题很严重', null, '4f758d04-3366-4f4f-a7be-e65ef991a1b2', '2018-03-29 23:49:41', 'lisi', null, 'message', null, 'ece99ee9-577e-4148-9037-d3f4ed553f7a');
INSERT INTO `bdf3_notice` VALUES ('ff46911c-847f-4476-92fd-bf6630b0f2c3', '\0', '{\"dayNum\":\"2\",\"reason\":\"身体不舒服\",\"nickname\":\"李四\"}', null, '4f758d04-3366-4f4f-a7be-e65ef991a1b2', '2018-03-29 23:50:26', 'lisi', null, 'message', null, 'a0b7efe9-8b34-407b-a6ad-568846ca6ee3');
INSERT INTO `bdf3_notice` VALUES ('4d85b216-facc-434d-9466-144a806b3d27', '', '通知：系统今晚上线', null, 'f35bd80c-26d2-477c-8c8d-55d737736692', '2018-03-29 23:51:20', 'admin', null, 'message', null, null);
INSERT INTO `bdf3_notice` VALUES ('d35bae13-0f81-4414-852b-3b9965d3d7be', '\0', '大家好', null, '5c367bca-604e-4bc4-8793-401cfb31d35e', '2018-03-29 23:52:27', 'admin', null, 'message', null, null);
INSERT INTO `bdf3_notice` VALUES ('945abe20-9082-40ce-a2c3-5edda1f9ced2', '\0', '晚上好', null, '5c367bca-604e-4bc4-8793-401cfb31d35e', '2018-03-29 23:52:43', 'admin', null, 'message', null, 'd3753b1d-a256-44b6-a391-8a2c1a34e93f');

-- ----------------------------
-- Table structure for bdf3_permission
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_permission`;
CREATE TABLE `bdf3_permission` (
  `id_` varchar(64) NOT NULL,
  `attribute_` varchar(255) DEFAULT NULL,
  `resource_id_` varchar(64) DEFAULT NULL,
  `resource_type_` varchar(32) DEFAULT NULL,
  `role_id_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_permission
-- ----------------------------
INSERT INTO `bdf3_permission` VALUES ('0cfc3831-b7b6-4818-80a0-5b77024d9268', 'ROLE_afa6171b-8229-423c-b203-1b5b7b5f0fc7', '07efe0f8-1d7c-483c-bc3c-54e87f9f285b', 'URL', 'afa6171b-8229-423c-b203-1b5b7b5f0fc7');
INSERT INTO `bdf3_permission` VALUES ('1939c995-58ef-47b0-86cf-54e951bcd53a', 'ROLE_809146e8-c076-4b46-a023-f5c034cd006d', '46f0ee9b-04a8-41f2-9008-81efa3fa2fe1', 'URL', '809146e8-c076-4b46-a023-f5c034cd006d');
INSERT INTO `bdf3_permission` VALUES ('3d9bdbae-2078-473d-9296-f9cad5159c70', 'ROLE_afa6171b-8229-423c-b203-1b5b7b5f0fc7', '8b9f683f-b8e6-4eee-8cad-4fd8475860d4', 'URL', 'afa6171b-8229-423c-b203-1b5b7b5f0fc7');
INSERT INTO `bdf3_permission` VALUES ('47f6ff2f-1f69-4c7b-9568-bdad0c9cdf99', 'ROLE_afa6171b-8229-423c-b203-1b5b7b5f0fc7', '317952ad-a481-45e4-aa5b-d880a8fd51f8', 'URL', 'afa6171b-8229-423c-b203-1b5b7b5f0fc7');
INSERT INTO `bdf3_permission` VALUES ('4d4d466d-0b27-4fdb-92bd-196549e75f2d', 'ROLE_afa6171b-8229-423c-b203-1b5b7b5f0fc7', 'cafb93bb-15d6-4737-aec0-0d500aaeb8e5', 'URL', 'afa6171b-8229-423c-b203-1b5b7b5f0fc7');
INSERT INTO `bdf3_permission` VALUES ('5fb8f0d3-86bb-423d-828a-084c6f70d448', 'ROLE_809146e8-c076-4b46-a023-f5c034cd006d', '4523af08-01f0-44f5-be89-3b2241da0e9e', 'URL', '809146e8-c076-4b46-a023-f5c034cd006d');
INSERT INTO `bdf3_permission` VALUES ('6ba7264d-3f02-4089-b682-9883a166d934', 'ROLE_afa6171b-8229-423c-b203-1b5b7b5f0fc7', '2f858c99-1253-498b-801d-aa5c4f021542', 'URL', 'afa6171b-8229-423c-b203-1b5b7b5f0fc7');
INSERT INTO `bdf3_permission` VALUES ('6ee2b85c-aa85-4006-9c92-be262d876ad6', 'ROLE_809146e8-c076-4b46-a023-f5c034cd006d', '8b9f683f-b8e6-4eee-8cad-4fd8475860d4', 'URL', '809146e8-c076-4b46-a023-f5c034cd006d');
INSERT INTO `bdf3_permission` VALUES ('741f90cd-a8f4-450b-a576-d145167e953a', 'ROLE_809146e8-c076-4b46-a023-f5c034cd006d', '328d6a2a-3acf-4501-b621-5687f1b057e1', 'URL', '809146e8-c076-4b46-a023-f5c034cd006d');
INSERT INTO `bdf3_permission` VALUES ('76de4e0c-2809-40a4-8d48-d06c424bbd88', 'ROLE_afa6171b-8229-423c-b203-1b5b7b5f0fc7', '6fd00879-07f0-4e30-8109-c405fead4d30', 'URL', 'afa6171b-8229-423c-b203-1b5b7b5f0fc7');
INSERT INTO `bdf3_permission` VALUES ('7ef25d57-efe8-4590-b405-001e7d6e1f39', 'ROLE_809146e8-c076-4b46-a023-f5c034cd006d', '317952ad-a481-45e4-aa5b-d880a8fd51f8', 'URL', '809146e8-c076-4b46-a023-f5c034cd006d');
INSERT INTO `bdf3_permission` VALUES ('864c1b2e-b372-4e5e-bb3d-01b24ef8ba33', 'ROLE_809146e8-c076-4b46-a023-f5c034cd006d', '2f858c99-1253-498b-801d-aa5c4f021542', 'URL', '809146e8-c076-4b46-a023-f5c034cd006d');
INSERT INTO `bdf3_permission` VALUES ('ad990406-83b7-4649-9c4d-1b679e5c83fa', 'ROLE_afa6171b-8229-423c-b203-1b5b7b5f0fc7', '3ae0ee87-32e3-4356-aef0-064974aac618', 'URL', 'afa6171b-8229-423c-b203-1b5b7b5f0fc7');
INSERT INTO `bdf3_permission` VALUES ('c169b0b2-5fa2-497d-a452-95eb39b97ca4', 'ROLE_809146e8-c076-4b46-a023-f5c034cd006d', '6fd00879-07f0-4e30-8109-c405fead4d30', 'URL', '809146e8-c076-4b46-a023-f5c034cd006d');
INSERT INTO `bdf3_permission` VALUES ('c4fd47b5-1921-4bfe-8cdf-7b163059bd6d', 'ROLE_809146e8-c076-4b46-a023-f5c034cd006d', 'c7cb63b4-eb12-4d72-b943-aac6acbd4f6c', 'URL', '809146e8-c076-4b46-a023-f5c034cd006d');
INSERT INTO `bdf3_permission` VALUES ('cc6886da-54dc-4b9d-85a6-369621d93ac9', 'ROLE_809146e8-c076-4b46-a023-f5c034cd006d', 'cafb93bb-15d6-4737-aec0-0d500aaeb8e5', 'URL', '809146e8-c076-4b46-a023-f5c034cd006d');
INSERT INTO `bdf3_permission` VALUES ('d30a44a2-bc6e-460e-b853-587dd72722d7', 'ROLE_809146e8-c076-4b46-a023-f5c034cd006d', '3ae0ee87-32e3-4356-aef0-064974aac618', 'URL', '809146e8-c076-4b46-a023-f5c034cd006d');
INSERT INTO `bdf3_permission` VALUES ('dbccc258-4ea0-4c8e-942b-c6f1f584b0bc', 'ROLE_809146e8-c076-4b46-a023-f5c034cd006d', '1491d097-0795-4a0f-8608-7b452f8ac2be', 'URL', '809146e8-c076-4b46-a023-f5c034cd006d');
INSERT INTO `bdf3_permission` VALUES ('f0576a8e-8630-4399-bfe8-94ceab239e1f', 'ROLE_809146e8-c076-4b46-a023-f5c034cd006d', 'e9db79a1-571a-4804-9111-ae9b17680b95', 'URL', '809146e8-c076-4b46-a023-f5c034cd006d');
INSERT INTO `bdf3_permission` VALUES ('ff3959c0-397d-47a9-9a97-8d8612569d0d', 'ROLE_809146e8-c076-4b46-a023-f5c034cd006d', '07efe0f8-1d7c-483c-bc3c-54e87f9f285b', 'URL', '809146e8-c076-4b46-a023-f5c034cd006d');

-- ----------------------------
-- Table structure for bdf3_profile
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_profile`;
CREATE TABLE `bdf3_profile` (
  `id_` varchar(64) NOT NULL,
  `template_id_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_profile
-- ----------------------------

-- ----------------------------
-- Table structure for bdf3_role
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_role`;
CREATE TABLE `bdf3_role` (
  `id_` varchar(64) NOT NULL,
  `description_` varchar(255) DEFAULT NULL,
  `name_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_role
-- ----------------------------
INSERT INTO `bdf3_role` VALUES ('809146e8-c076-4b46-a023-f5c034cd006d', null, '管理员');
INSERT INTO `bdf3_role` VALUES ('afa6171b-8229-423c-b203-1b5b7b5f0fc7', null, '程序');

-- ----------------------------
-- Table structure for bdf3_role_granted_authority
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_role_granted_authority`;
CREATE TABLE `bdf3_role_granted_authority` (
  `id_` varchar(64) NOT NULL,
  `actor_id_` varchar(64) DEFAULT NULL,
  `role_id_` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_role_granted_authority
-- ----------------------------
INSERT INTO `bdf3_role_granted_authority` VALUES ('920286ff-c4c4-4e1b-bc1e-7cf9f4765426', 'admin', '809146e8-c076-4b46-a023-f5c034cd006d');
INSERT INTO `bdf3_role_granted_authority` VALUES ('a31c2776-f56d-406d-bc38-944e0a3f89eb', 'lisi', 'afa6171b-8229-423c-b203-1b5b7b5f0fc7');

-- ----------------------------
-- Table structure for bdf3_template
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_template`;
CREATE TABLE `bdf3_template` (
  `id_` varchar(64) NOT NULL,
  `css_` longtext,
  `description_` varchar(255) DEFAULT NULL,
  `displayable_` bit(1) DEFAULT NULL,
  `global_` bit(1) DEFAULT NULL,
  `html_` longtext,
  `icon_` varchar(255) DEFAULT NULL,
  `javascript_` longtext,
  `micro_program_` bit(1) DEFAULT NULL,
  `name_` varchar(255) DEFAULT NULL,
  `offline_` bit(1) DEFAULT NULL,
  `url_` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_template
-- ----------------------------
INSERT INTO `bdf3_template` VALUES ('d3753b1d-a256-44b6-a391-8a2c1a34e93f', '.big-size-red-word {\n  font-size: 2em;\n  color: rgb(255, 0, 0);\n}', '大号红色字体的消息模版', '', '\0', '<div class=\"big-size-red-word\">{{ message.content }}</div>\n', 'fa fa-font red-text', null, '\0', '大号红字', '\0', null);
INSERT INTO `bdf3_template` VALUES ('ece99ee9-577e-4148-9037-d3f4ed553f7a', '/****/\n/****/\n.tpl-message {\n  color: rgba(0, 0, 0, .7);\n  line-height: 2.5em;\n  font-size: 1.2em;\n  padding: 0 5px;\n  border-radius: 3px;\n  cursor: pointer;\n}\n\n.tpl-message:hover {\n  background-color: #f7f7f7;\n}', null, '', '', '<!---->\n<!---->\n<div class=\"tpl-message\">我正在开会，稍后给你回复</div>\n<div class=\"tpl-message\">再见，下次再聊</div>\n<div class=\"tpl-message\">走，吃饭去</div>\n<div class=\"tpl-message\">这个问题很严重</div>\n<div class=\"tpl-message\">我下班了，明天在讨论</div>\n<div class=\"tpl-message\">稍等，马上给你答复</div>\n<div class=\"tpl-message\">谢谢你的帮助</div>', 'fa fa-newspaper-o', '/****/\n/****/\n$(tipDom).find(\".tpl-message\").click(function() {\n  message.content = $(this).text();\n  console.log(message)\n  Chat.send(message);\n});', '\0', '常用消息', '\0', null);
INSERT INTO `bdf3_template` VALUES ('a0b7efe9-8b34-407b-a6ad-568846ca6ee3', '.tpl-leave-flow .title {\n  text-align: center;\n  font-size: 1.3em;\n  padding: 5px;\n}\n\n!.d-tip > .tpl-leave-flow {\n  background-color:#fff;	\n}\n\n.tpl-leave-flow .item {\n  padding: 10px;\n}\n\n.tpl-leave-flow .line {\n  border-bottom: 1px solid #eee;\n}\n\n.tpl-leave-flow .item input {\n  border-radius: 3px;\n  border: 1px solid #ccc;\n  padding: 5px;\n  width: 200px;\n}\n\n.tpl-leave-flow button {\n  border: 1px solid #eee;\n  padding: 5px 10px;\n  margin: 10px;\n  float: right;\n  border-radius: 3px;\n}\n/****/\n/****/\n.tpl-leave-flow .title {\n  text-align: center;\n  font-size: 1.3em;\n  padding: 5px;\n}\n\n.tpl-leave-flow .item {\n  padding: 10px;\n}\n\n.tpl-leave-flow .line {\n  border-bottom: 1px solid #eee;\n}\n\n.tpl-leave-flow .item input {\n  border-radius: 3px;\n  border: 1px solid #ccc;\n  padding: 5px;\n  width: 200px;\n}\n\n.tpl-leave-flow button {\n  border: 1px solid #eee;\n  padding: 5px 10px;\n  margin: 10px;\n  float: right;\n  border-radius: 3px;\n}\n\n.tpl-leave-flow .submit {\n  background-color: #07c181;\n  color: #fff;\n  border: 1px solid #07c18;\n}', null, '', '\0', '<div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item line\">\n    <label>请假事由：</label>\n    <label>{{data.reason}}</label>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数：</label>\n    <label>{{data.dayNum}}天</label>\n  </div>\n  <button class=\"deal\">现在处理</button>\n<div>\n<!---->\n<div>{{ data.nickname }}发起请假申请</div>\n<!---->\n<div class=\"tpl-leave-flow\">\n  <div class=\"title line\">请假单</div>\n  <div class=\"item\">\n    <label>请假事由</label>\n    <input class=\"reason\" type=\"text\"/>\n  </div>\n  <div class=\"item line\">\n    <label>请假天数</label>\n    <input class=\"day-num\" type=\"number\"/>\n  </div>\n  <button class=\"submit\">提交申请</button>\n<div>', 'fa fa-hotel', '$(\".tpl-leave-flow .deal\").click(function() {\n  dorado.MessageBox.confirm(\"确定审核通过？\", function() {\n    \n  })\n});\n/****/\n/****/\n$(\".tpl-leave-flow .submit\").click(function() {\n  var data = {\n    dayNum: $(\".tpl-leave-flow .day-num\").val(),\n    reason: $(\".tpl-leave-flow .reason\").val(),\n    nickname: message.senderGroupMember.nickname\n  };\n  message.content = JSON.stringify(data);\n  Chat.send(message);\n});', '\0', '请假单', '\0', null);
INSERT INTO `bdf3_template` VALUES ('22cbb691-354c-4bb4-9ddc-4969d8d111ca', null, null, '', '\0', null, 'fa fa-superscript', null, '\0', '功能管理', '\0', 'bdf3.notice.ui.view.TemplateMaintain.d');
INSERT INTO `bdf3_template` VALUES ('d82052cc-7027-4cf3-bed4-9de1e775cf70', null, null, '', '\0', null, 'fa fa-user blue-text', null, '\0', '用户管理', '\0', 'bdf3.security.ui.view.UserMaintain.d');
INSERT INTO `bdf3_template` VALUES ('6900e36f-62dd-4b45-8f98-d71875771e13', null, null, '', '\0', null, 'fa fa-bars yellow-text', null, '\0', '菜单管理', '\0', 'bdf3.security.ui.view.UrlMaintain.d');
INSERT INTO `bdf3_template` VALUES ('8e8aa5fc-412f-42c8-840e-282c90f20a19', null, null, '', '\0', null, 'fa fa-user-md blue-text', null, '\0', '角色管理', '\0', 'bdf3.security.ui.view.RoleMaintain.d');
INSERT INTO `bdf3_template` VALUES ('36f834d5-8314-4f48-92bd-23c298e5738e', null, null, '', '\0', null, 'fa fa-shield yellow-text', null, '\0', '权限分配', '\0', 'bdf3.security.ui.view.PermissionMaintain.d');
INSERT INTO `bdf3_template` VALUES ('c29f21a1-83a9-41a0-9aa6-8de4878d5954', null, null, '', '\0', null, 'fa fa-code-fork green-text', null, '\0', '菜单权限', '\0', 'bdf3.security.ui.view.RoleUrlMaintain.d');
INSERT INTO `bdf3_template` VALUES ('ca0dcb00-86c1-4dee-9312-c6ccacbf4d57', null, null, '', '\0', null, 'fa fa-file-excel-o orange-text', null, '\0', '导入管理', '\0', 'bdf3.importer.view.ImporterSolutionMaintain.d');
INSERT INTO `bdf3_template` VALUES ('a6714752-3a17-41cc-abce-a426a41ee14c', null, null, '', '\0', null, 'fa fa-book yellow-text', null, '\0', '字典管理', '\0', 'bdf3.dictionary.ui.view.DictionaryMaintain.d');
INSERT INTO `bdf3_template` VALUES ('ffa83b56-9610-42b1-97fe-41ceee9207fe', null, null, '', '\0', null, 'fa fa-database blue-text', null, '\0', '云数据库', '\0', 'bdf3.dbconsole.view.DbConsoleMaintain.d');
INSERT INTO `bdf3_template` VALUES ('2081965d-fdcb-49ca-9763-6b497338f04d', null, null, '', '\0', null, 'fa fa-clock-o blue-text', null, '\0', '日志查询', '\0', 'bdf3.log.view.LogInfoMaintain.d');
INSERT INTO `bdf3_template` VALUES ('ef2eeb71-eec0-4264-aa41-820f06b9918c', null, null, '', '\0', null, 'fa fa-tachometer red-text', null, '\0', '个人中心', '\0', 'bdf3.security.ui.view.PersonalCenter.d');

-- ----------------------------
-- Table structure for bdf3_url
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_url`;
CREATE TABLE `bdf3_url` (
  `id_` varchar(64) NOT NULL,
  `description_` varchar(255) DEFAULT NULL,
  `icon_` varchar(255) DEFAULT NULL,
  `name_` varchar(64) DEFAULT NULL,
  `navigable_` bit(1) DEFAULT NULL,
  `order_` int(11) DEFAULT NULL,
  `parent_id_` varchar(64) DEFAULT NULL,
  `path_` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_url
-- ----------------------------
INSERT INTO `bdf3_url` VALUES ('cafb93bb-15d6-4737-aec0-0d500aaeb8e5', null, 'fa fa-database blue-text', '云数据库', '', '9', null, 'bdf3.dbconsole.view.DbConsoleMaintain.d');
INSERT INTO `bdf3_url` VALUES ('c7cb63b4-eb12-4d72-b943-aac6acbd4f6c', null, 'fa fa-book yellow-text', '字典管理', '', '8', null, 'bdf3.dictionary.ui.view.DictionaryMaintain.d');
INSERT INTO `bdf3_url` VALUES ('e9db79a1-571a-4804-9111-ae9b17680b95', null, 'fa fa-file-excel-o orange-text', '导入管理', '', '7', null, 'bdf3.importer.view.ImporterSolutionMaintain.d');
INSERT INTO `bdf3_url` VALUES ('6fd00879-07f0-4e30-8109-c405fead4d30', null, 'fa fa-clock-o blue-text', '日志查询', '', '9', null, 'bdf3.log.view.LogInfoMaintain.d');
INSERT INTO `bdf3_url` VALUES ('07efe0f8-1d7c-483c-bc3c-54e87f9f285b', null, 'fa fa-user blue-text', '用户管理', '', '1', null, 'bdf3.security.ui.view.UserMaintain.d');
INSERT INTO `bdf3_url` VALUES ('1491d097-0795-4a0f-8608-7b452f8ac2be', null, 'fa fa-bars yellow-text', '菜单管理', '', '2', null, 'bdf3.security.ui.view.UrlMaintain.d');
INSERT INTO `bdf3_url` VALUES ('2f858c99-1253-498b-801d-aa5c4f021542', null, 'fa fa-user-md blue-text', '角色管理', '', '3', null, 'bdf3.security.ui.view.RoleMaintain.d');
INSERT INTO `bdf3_url` VALUES ('328d6a2a-3acf-4501-b621-5687f1b057e1', null, 'fa fa-code-fork green-text', '菜单权限', '', '4', null, 'bdf3.security.ui.view.RoleUrlMaintain.d');
INSERT INTO `bdf3_url` VALUES ('4523af08-01f0-44f5-be89-3b2241da0e9e', null, 'fa fa-shield yellow-text', '权限分配', '', '5', null, 'bdf3.security.ui.view.PermissionMaintain.d');
INSERT INTO `bdf3_url` VALUES ('46f0ee9b-04a8-41f2-9008-81efa3fa2fe1', null, 'fa fa-graduation-cap blue-text', '角色分配', '', '6', null, 'bdf3.security.ui.view.RoleAssignmentMaintain.d');
INSERT INTO `bdf3_url` VALUES ('8b9f683f-b8e6-4eee-8cad-4fd8475860d4', null, 'fa fa-tachometer red-text', '个人中心', '', '15', null, 'bdf3.security.ui.view.PersonalCenter.d');
INSERT INTO `bdf3_url` VALUES ('317952ad-a481-45e4-aa5b-d880a8fd51f8', null, 'fa fa-superscript', '云微程序', '', '8', null, 'bdf3.notice.ui.view.TemplateMaintain.d');
INSERT INTO `bdf3_url` VALUES ('3ae0ee87-32e3-4356-aef0-064974aac618', null, 'fa fa-database blue-text', '服务器管理', '', '15', null, 'com.x8game.fire.gms.view.GameServer.d');

-- ----------------------------
-- Table structure for bdf3_user
-- ----------------------------
DROP TABLE IF EXISTS `bdf3_user`;
CREATE TABLE `bdf3_user` (
  `username_` varchar(64) NOT NULL,
  `account_non_expired_` bit(1) DEFAULT NULL,
  `account_non_locked_` bit(1) DEFAULT NULL,
  `administrator_` bit(1) DEFAULT NULL,
  `credentials_non_expired_` bit(1) DEFAULT NULL,
  `enabled_` bit(1) DEFAULT NULL,
  `nickname_` varchar(64) DEFAULT NULL,
  `password_` varchar(125) DEFAULT NULL,
  PRIMARY KEY (`username_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bdf3_user
-- ----------------------------
INSERT INTO `bdf3_user` VALUES ('admin', '', '', '', '', '', '系统管理员', '{bcrypt}$2a$10$J9ryMi4/lw84.7JfYAInn.4DLlyTTjdMvTdqXXu5cokylxHM4orZm');
INSERT INTO `bdf3_user` VALUES ('lisi', '', '', '\0', '', '', '李四', '{bcrypt}$2a$10$J9ryMi4/lw84.7JfYAInn.4DLlyTTjdMvTdqXXu5cokylxHM4orZm');
INSERT INTO `bdf3_user` VALUES ('zhangsan', '', '', '\0', '', '', '张三', '{bcrypt}$2a$10$s8oeM/HzocE0uwt4t/crlOANEziY3QacHYUDmRhiwjPOBTjl0RKjq');
INSERT INTO `bdf3_user` VALUES ('wangwu', '', '', '\0', '', '', '王五', '{bcrypt}$2a$10$U70itykX6yvUSIWgcByRg.nA9fOg4NoAGdXRjQmBVDhw0B3GzJXwy');

-- ----------------------------
-- Table structure for gms_game_server
-- ----------------------------
DROP TABLE IF EXISTS `gms_game_server`;
CREATE TABLE `gms_game_server` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `ip` varchar(20) DEFAULT '0.0.0.0',
  `port` int(10) DEFAULT '0',
  `queryIp` varchar(20) DEFAULT '0.0.0.0',
  `queryPort` int(10) DEFAULT '4500',
  `region` int(10) DEFAULT '0',
  `startDate` date DEFAULT NULL,
  `status` int(10) DEFAULT '1',
  `idx` int(10) DEFAULT '0',
  `mergeFlag` int(11) NOT NULL DEFAULT '0' COMMENT '合区标识符（合区报表）',
  `cleanUpFlag` int(11) NOT NULL DEFAULT '0' COMMENT '合服时是否清理数据 1是 0否',
  `name_idx` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20027 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gms_game_server
-- ----------------------------
INSERT INTO `gms_game_server` VALUES ('109', '战狼1-55服', '昊天游屠龙传世', '101.132.168.191', '7904', '101.132.168.191', '5346', '0', '2019-08-16', '1', '109', '0', '0', '战狼1-55服');
INSERT INTO `gms_game_server` VALUES ('110', '雄霸1-4服', '昊天游烈火龙城', '101.132.168.191', '7905', '101.132.168.191', '5347', '0', '2019-08-14', '1', '110', '0', '0', '雄霸1-4服');
INSERT INTO `gms_game_server` VALUES ('111', '屠龙传世跨服', '昊天游屠龙传世', '101.132.168.191', '7906', '101.132.168.191', '5348', '0', '2019-08-14', '1', '111', '0', '0', '屠龙传世跨服');
INSERT INTO `gms_game_server` VALUES ('112', '烈火龙城跨服', '昊天游烈火龙城', '101.132.168.191', '7907', '101.132.168.191', '5349', '0', '2019-08-14', '1', '112', '0', '0', '烈火龙城跨服');
INSERT INTO `gms_game_server` VALUES ('500', '战天传奇跨服', '昊天游-战天', '120.55.163.135', '6600', '120.55.163.135', '6700', '0', '2019-11-01', '1', '500', '0', '0', '战天传奇跨服');
INSERT INTO `gms_game_server` VALUES ('501', '战天1服', '昊天游-战天', '120.55.163.135', '6601', '120.55.163.135', '6701', '0', '2019-11-01', '1', '501', '0', '0', '战天1服');
INSERT INTO `gms_game_server` VALUES ('502', '战天2服', '昊天游-战天', '120.55.163.135', '6602', '120.55.163.135', '6702', '0', '2019-11-28', '1', '502', '0', '0', '战天2服');
INSERT INTO `gms_game_server` VALUES ('503', '战天3-35服', '昊天游-战天', '120.55.163.135', '6603', '120.55.163.135', '6703', '0', '2019-11-30', '1', '503', '0', '0', '战天3-35服');
INSERT INTO `gms_game_server` VALUES ('1999', '雄霸沙城跨服83', '小7雄霸沙城', '139.9.120.83', '8100', '139.9.120.83', '8200', '0', '2019-09-30', '1', '1999', '0', '0', '雄霸沙城跨服83');
INSERT INTO `gms_game_server` VALUES ('2000', '雄霸沙城跨服-新', '小7雄霸沙城', '139.9.123.30', '6000', '139.9.123.30', '6100', '0', '2019-09-30', '1', '2000', '0', '0', '雄霸沙城跨服-新');
INSERT INTO `gms_game_server` VALUES ('2001', '热血1-200服', '小7雄霸沙城', '122.112.180.218', '7863', '122.112.180.218', '5305', '0', '2019-08-21', '1', '2001', '0', '0', '热血1-200服');
INSERT INTO `gms_game_server` VALUES ('2002', '雄霸沙城跨服', '小7雄霸沙城', '122.112.180.218', '7864', '122.112.180.218', '5306', '0', '2019-08-02', '1', '2002', '0', '0', '雄霸沙城跨服');
INSERT INTO `gms_game_server` VALUES ('2301', '盛世1-169区', '小7雄霸沙城', '139.9.123.30', '6601', '139.9.123.30', '6701', '1', '2019-12-02', '1', '2301', '0', '0', '盛世1-169区');
INSERT INTO `gms_game_server` VALUES ('2470', '盛世170-200服', '小7雄霸沙城', '139.9.123.30', '9170', '139.9.123.30', '9270', '1', '2020-02-23', '1', '2470', '0', '0', '盛世170-200区');
INSERT INTO `gms_game_server` VALUES ('2501', '传世1-8服', '小7雄霸沙城', '122.112.180.218', '9401', '122.112.180.218', '9501', '2', '2020-03-09', '1', '2501', '0', '0', '传世001-008区');
INSERT INTO `gms_game_server` VALUES ('2509', '传世9-16服', '小7雄霸沙城', '122.112.180.218', '9409', '122.112.180.218', '9509', '2', '2020-03-13', '1', '2509', '0', '0', '传世009-016区');
INSERT INTO `gms_game_server` VALUES ('2517', '传世17-24服', '小7雄霸沙城', '122.112.180.218', '9417', '122.112.180.218', '9517', '2', '2020-03-17', '1', '2517', '0', '0', '传世017-24区');
INSERT INTO `gms_game_server` VALUES ('2525', '传世25-32服', '小7雄霸沙城', '139.9.120.83', '9425', '139.9.120.83', '9525', '2', '2020-03-21', '1', '2525', '0', '0', '传世025-32区');
INSERT INTO `gms_game_server` VALUES ('2533', '传世33-40服', '小7雄霸沙城', '139.9.120.83', '9433', '139.9.120.83', '9533', '2', '2020-03-25', '1', '2533', '0', '0', '传世033-40区');
INSERT INTO `gms_game_server` VALUES ('2541', '传世41-48服', '小7雄霸沙城', '139.9.120.83', '9441', '139.9.120.83', '9541', '2', '2020-03-29', '1', '2541', '0', '0', '传世041-48区');
INSERT INTO `gms_game_server` VALUES ('2549', '传世49服', '小7雄霸沙城', '139.9.123.30', '9449', '139.9.123.30', '9549', '2', '2020-04-02', '1', '2549', '0', '0', '传世049区');
INSERT INTO `gms_game_server` VALUES ('2550', '传世50服', '小7雄霸沙城', '139.9.123.30', '9450', '139.9.123.30', '9550', '2', '2020-04-02', '1', '2550', '0', '0', '传世050区');
INSERT INTO `gms_game_server` VALUES ('2551', '传世51服', '小7雄霸沙城', '139.9.123.30', '9451', '139.9.123.30', '9551', '2', '2020-04-03', '1', '2551', '0', '0', '传世051区');
INSERT INTO `gms_game_server` VALUES ('2552', '传世52服', '小7雄霸沙城', '139.9.123.30', '9452', '139.9.123.30', '9552', '2', '2020-04-03', '1', '2552', '0', '0', '传世052区');
INSERT INTO `gms_game_server` VALUES ('2553', '传世53服', '小7雄霸沙城', '139.9.123.30', '9453', '139.9.123.30', '9553', '2', '2020-04-05', '1', '2553', '0', '0', '传世053区');
INSERT INTO `gms_game_server` VALUES ('2554', '传世54服', '小7雄霸沙城', '139.9.123.30', '9454', '139.9.123.30', '9554', '2', '2020-04-05', '1', '2554', '0', '0', '传世054区');
INSERT INTO `gms_game_server` VALUES ('2555', '传世55服', '小7雄霸沙城', '139.9.123.30', '9455', '139.9.123.30', '9555', '2', '2020-04-05', '1', '2555', '0', '0', '传世055区');
INSERT INTO `gms_game_server` VALUES ('2556', '传世56服', '小7雄霸沙城', '139.9.123.30', '9456', '139.9.123.30', '9556', '2', '2020-04-05', '1', '2556', '0', '0', '传世056区');
INSERT INTO `gms_game_server` VALUES ('2557', '传世57服', '小7雄霸沙城', '139.9.123.30', '9457', '139.9.123.30', '9557', '2', '2020-04-06', '1', '2557', '0', '0', '传世057区');
INSERT INTO `gms_game_server` VALUES ('2558', '传世58服', '小7雄霸沙城', '139.9.123.30', '9458', '139.9.123.30', '9558', '2', '2020-04-06', '1', '2558', '0', '0', '传世058区');
INSERT INTO `gms_game_server` VALUES ('2559', '传世59服', '小7雄霸沙城', '139.9.123.30', '9459', '139.9.123.30', '9559', '2', '2020-04-08', '1', '2559', '0', '0', '传世059区');
INSERT INTO `gms_game_server` VALUES ('2560', '传世60服', '小7雄霸沙城', '139.9.123.30', '9460', '139.9.123.30', '9560', '2', '2020-04-08', '1', '2560', '0', '0', '传世060区');
INSERT INTO `gms_game_server` VALUES ('2561', '传世61服', '小7雄霸沙城', '139.9.123.30', '9461', '139.9.123.30', '9561', '2', '2020-04-09', '1', '2561', '0', '0', '传世061区');
INSERT INTO `gms_game_server` VALUES ('2562', '传世62服', '小7雄霸沙城', '139.9.123.30', '9462', '139.9.123.30', '9562', '2', '2020-04-09', '1', '2562', '0', '0', '传世062区');
INSERT INTO `gms_game_server` VALUES ('2563', '传世63服', '小7雄霸沙城', '139.9.123.30', '9463', '139.9.123.30', '9563', '2', '2020-04-10', '1', '2563', '0', '0', '传世063区');
INSERT INTO `gms_game_server` VALUES ('2564', '传世64服', '小7雄霸沙城', '139.9.123.30', '9464', '139.9.123.30', '9564', '2', '2020-04-10', '1', '2564', '0', '0', '传世064区');
INSERT INTO `gms_game_server` VALUES ('2565', '传世65服', '小7雄霸沙城', '139.9.123.30', '9465', '139.9.123.30', '9565', '2', '2020-04-11', '1', '2565', '0', '0', '传世065区');
INSERT INTO `gms_game_server` VALUES ('2566', '传世66服', '小7雄霸沙城', '139.9.123.30', '9466', '139.9.123.30', '9566', '2', '2020-04-11', '1', '2566', '0', '0', '传世066区');
INSERT INTO `gms_game_server` VALUES ('2567', '传世67服', '小7雄霸沙城', '139.9.123.30', '9467', '139.9.123.30', '9567', '2', '2020-04-12', '1', '2567', '0', '0', '传世067区');
INSERT INTO `gms_game_server` VALUES ('2568', '传世68服', '小7雄霸沙城', '139.9.123.30', '9468', '139.9.123.30', '9568', '2', '2020-04-12', '1', '2568', '0', '0', '传世068区');
INSERT INTO `gms_game_server` VALUES ('2569', '传世69服', '小7雄霸沙城', '139.9.123.30', '9469', '139.9.123.30', '9569', '2', '2020-04-13', '1', '2569', '0', '0', '传世069区');
INSERT INTO `gms_game_server` VALUES ('2570', '传世70服', '小7雄霸沙城', '139.9.123.30', '9470', '139.9.123.30', '9570', '2', '2020-04-13', '0', '2570', '0', '0', '传世070区');
INSERT INTO `gms_game_server` VALUES ('2571', '传世71服', '小7雄霸沙城', '139.9.120.83', '9471', '139.9.120.83', '9571', '2', '2020-04-14', '0', '2571', '0', '0', '传世071区');
INSERT INTO `gms_game_server` VALUES ('2572', '传世72服', '小7雄霸沙城', '139.9.120.83', '9472', '139.9.120.83', '9572', '2', '2020-04-14', '0', '2572', '0', '0', '传世072区');
INSERT INTO `gms_game_server` VALUES ('3000', '王城无双跨服', '669王城', '106.15.183.66', '6000', '106.15.183.66', '6100', '0', '2019-10-11', '1', '3000', '0', '0', '王城跨服');
INSERT INTO `gms_game_server` VALUES ('3001', '王城1-7服', '669王城', '106.15.183.66', '6001', '106.15.183.66', '6101', '0', '2019-10-11', '1', '3001', '0', '0', '王城1-7服');
INSERT INTO `gms_game_server` VALUES ('3500', '霸者龙城跨服', '669霸者龙城', '106.15.183.66', '8100', '106.15.183.66', '8200', '0', '2019-10-21', '1', '3500', '0', '0', '霸者龙城跨服');
INSERT INTO `gms_game_server` VALUES ('3601', '霸者1服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-10-22', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3602', '永不言败', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-10-23', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3603', '霸者3服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-10-24', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3604', '霸者4服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-10-25', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3605', '霸者5服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-10-26', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3606', '霸者6服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-10-28', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3607', '霸者7服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-11-18', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3608', '姜子牙', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-11-19', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3609', '霸者9服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-11-20', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3610', '神踏君临', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-11-21', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3611', '霸者11服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-11-22', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3612', '霸者12服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-11-23', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3613', '霸者13服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-11-25', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3614', '浴血奋战', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-11-26', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3615', '霸者15服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-11-27', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3616', '霸者16服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-11-28', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3617', '霸者17服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-11-29', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3618', '霸者18服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-11-30', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3619', '霸者19服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-02', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3620', '霸者20服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-03', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3621', '霸者21服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-04', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3622', '霸者22服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-05', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3623', '霸者23服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-06', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3624', '霸者24服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-07', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3625', '霸者25服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-09', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3626', '霸者26服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-10', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3627', '霸者27服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-11', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3628', '霸者28服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-12', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3629', '霸者29服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-13', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3630', '霸者30服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-14', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3631', '霸者31服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-16', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3632', '霸者32服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-17', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3633', '霸者33服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-18', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3634', '霸者34服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-19', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3635', '霸者35服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-20', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3636', '霸者36服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-21', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3637', '霸者37服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-23', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3638', '叱咤风云', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-24', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3639', '霸者39服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-25', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3640', '霸者40服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-26', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3641', '霸者41服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8515', '0', '2019-12-27', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3642', '霸者42服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-28', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3643', '霸者43服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-30', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3644', '霸者44服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2019-12-31', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3645', '霸者45服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2020-01-01', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3646', '霸者46服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2020-01-02', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3647', '霸者47服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2020-01-03', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3648', '霸者48服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2020-01-04', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3649', '霸者49服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2020-01-06', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3650', '霸者50服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2020-01-07', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3651', '霸者51服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2020-01-08', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3652', '霸者52服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2020-01-09', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3653', '霸者53服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2020-01-10', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3654', '霸者54服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2020-01-11', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3655', '霸者55服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2020-01-13', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3656', '霸者56服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2020-01-14', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3657', '霸者57服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2020-01-15', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3658', '霸者58服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2020-01-19', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3659', '霸者59服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2020-01-23', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3660', '霸者60服', '霸者龙城', '106.15.183.66', '8460', '106.15.183.66', '8560', '0', '2020-01-27', '1', '3660', '0', '0', '霸者60-61,63-66,74-78服');
INSERT INTO `gms_game_server` VALUES ('3661', '霸者61服', '霸者龙城', '106.15.183.66', '8460', '106.15.183.66', '8560', '0', '2020-01-31', '1', '3660', '0', '0', '霸者60-61,63-66,74-78服');
INSERT INTO `gms_game_server` VALUES ('3662', '霸者62服', '霸者龙城', '106.15.183.66', '8401', '106.15.183.66', '8501', '0', '2020-02-03', '1', '3601', '0', '0', '霸者1-59,62服');
INSERT INTO `gms_game_server` VALUES ('3663', '霸者63服', '霸者龙城', '106.15.183.66', '8460', '106.15.183.66', '8560', '0', '2020-02-06', '1', '3660', '0', '0', '霸者60-61,63-66,74-78服');
INSERT INTO `gms_game_server` VALUES ('3664', '霸者64服', '霸者龙城', '106.15.183.66', '8460', '106.15.183.66', '8560', '0', '2020-02-09', '1', '3660', '0', '0', '霸者60-61,63-66,74-78服');
INSERT INTO `gms_game_server` VALUES ('3665', '霸者65服', '霸者龙城', '106.15.183.66', '8460', '106.15.183.66', '8560', '0', '2020-02-10', '1', '3660', '0', '0', '霸者60-61,63-66,74-78服');
INSERT INTO `gms_game_server` VALUES ('3666', '霸者66服', '霸者龙城', '106.15.183.66', '8460', '106.15.183.66', '8560', '0', '2020-02-11', '1', '3660', '0', '0', '霸者60-61,63-66,74-78服');
INSERT INTO `gms_game_server` VALUES ('3667', '霸者67服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-02-13', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3668', '霸者68服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-02-16', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3669', '霸者69服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-02-19', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3670', '霸者70服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-02-20', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3671', '霸者71服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-02-21', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3672', '霸者72服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-02-22', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3673', '霸者73服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-02-24', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3674', '霸者74服', '霸者龙城', '106.15.183.66', '8460', '106.15.183.66', '8560', '0', '2020-02-25', '1', '3660', '0', '0', '霸者60-61,63-66,74-78服');
INSERT INTO `gms_game_server` VALUES ('3675', '霸者75服', '霸者龙城', '106.15.183.66', '8460', '106.15.183.66', '8560', '0', '2020-02-26', '1', '3660', '0', '0', '霸者60-61,63-66,74-78服');
INSERT INTO `gms_game_server` VALUES ('3676', '霸者76服', '霸者龙城', '106.15.183.66', '8460', '106.15.183.66', '8560', '0', '2020-02-27', '1', '3660', '0', '0', '霸者60-61,63-66,74-78服');
INSERT INTO `gms_game_server` VALUES ('3677', '霸者77服', '霸者龙城', '106.15.183.66', '8460', '106.15.183.66', '8560', '0', '2020-02-28', '1', '3660', '0', '0', '霸者60-61,63-66,74-78服');
INSERT INTO `gms_game_server` VALUES ('3678', '霸者78服', '霸者龙城', '106.15.183.66', '8460', '106.15.183.66', '8560', '0', '2020-02-29', '1', '3660', '0', '0', '霸者60-61,63-66,74-78服');
INSERT INTO `gms_game_server` VALUES ('3679', '霸者79服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-03-02', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3680', '霸者80服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-03-03', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3681', '霸者81服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-03-04', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3682', '霸者82服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-03-07', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3683', '霸者83服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-03-10', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3684', '霸者84服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-03-14', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3685', '霸者85服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-03-17', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3686', '霸者86服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-03-21', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3687', '霸者87服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-03-24', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3688', '霸者88服', '霸者龙城', '106.15.183.66', '8467', '106.15.183.66', '8567', '0', '2020-03-28', '1', '3667', '0', '0', '霸者67-73,79-88服');
INSERT INTO `gms_game_server` VALUES ('3689', '霸者89服', '霸者龙城', '106.15.183.66', '8489', '106.15.183.66', '8589', '0', '2020-04-02', '1', '3689', '0', '0', '霸者89服');
INSERT INTO `gms_game_server` VALUES ('3690', '霸者90服', '霸者龙城', '106.15.183.66', '8490', '106.15.183.66', '8590', '0', '2020-04-09', '0', '3690', '0', '0', '霸者90服');
INSERT INTO `gms_game_server` VALUES ('4002', '传奇1-21服', '669屠戮无双1服', '101.132.168.191', '6911', '101.132.168.191', '6921', '0', '2019-08-17', '1', '4002', '0', '0', '传奇1-21服');
INSERT INTO `gms_game_server` VALUES ('4003', '屠戮无双跨服', '669屠戮无双', '101.132.168.191', '6910', '101.132.168.191', '6920', '0', '2019-08-17', '1', '4003', '0', '0', '屠戮无双跨服');
INSERT INTO `gms_game_server` VALUES ('4500', '沙巴克跨服', '权倾沙巴克跨服', '47.100.205.238', '8000', '47.100.205.238', '8100', '0', '2019-08-17', '1', '4500', '0', '0', '沙巴克跨服');
INSERT INTO `gms_game_server` VALUES ('4501', '裁决1服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-10', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4502', '裁决2服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-11', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4503', '裁决3服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-12', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4504', '裁决4服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-13', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4505', '裁决5服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-14', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4506', '裁决6服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-15', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4507', '裁决7服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-16', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4508', '裁决8服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-17', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4509', '裁决9服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-18', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4510', '裁决10服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-19', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4511', '裁决11服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-20', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4512', '裁决12服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-21', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4513', '裁决13服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-22', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4514', '裁决14服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-23', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4515', '裁决15服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-24', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4516', '裁决16服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-25', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4517', '裁决17服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-26', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4518', '裁决18服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-27', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4519', '裁决19服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-28', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4520', '裁决20服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-29', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4521', '裁决21服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-09-30', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4522', '裁决22服', '权倾沙巴克', '47.100.205.238', '8001', '47.100.205.238', '8101', '0', '2019-10-01', '1', '4501', '0', '0', '裁决1-22服');
INSERT INTO `gms_game_server` VALUES ('4523', '裁决23服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-10-03', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4524', '裁决24服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-10-05', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4525', '裁决25服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-10-08', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4526', '裁决26服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-10-10', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4527', '裁决27服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-10-12', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4528', '裁决28服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-10-15', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4529', '裁决29服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-10-17', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4530', '裁决30服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-10-19', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4531', '裁决31服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-10-22', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4532', '裁决32服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-10-24', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4533', '裁决33服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-10-26', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4534', '裁决34服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-10-29', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4535', '裁决35服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-10-31', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4536', '裁决36服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-11-02', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4537', '裁决37服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-11-05', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4538', '裁决38服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-11-07', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4539', '裁决39服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-11-09', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4540', '裁决40服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-11-12', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4541', '裁决41服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-11-14', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4542', '裁决42服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-11-16', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4543', '裁决43服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-11-19', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4544', '裁决44服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-11-21', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4545', '裁决45服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-11-23', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4546', '裁决46服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-11-26', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4547', '裁决47服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-11-28', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4548', '裁决48服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-11-30', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4549', '裁决49服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-12-03', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4550', '裁决50服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '0', '2019-12-05', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4551', '裁决51服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '1', '2019-12-07', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4552', '裁决52服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '1', '2019-12-10', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4553', '裁决53服', '权倾沙巴克', '47.100.205.238', '8023', '47.100.205.238', '8123', '1', '2019-12-12', '1', '4523', '0', '0', '裁决23-53服');
INSERT INTO `gms_game_server` VALUES ('4554', '裁决54服', '权倾沙巴克', '47.100.205.238', '8054', '47.100.205.238', '8154', '1', '2019-12-14', '1', '4554', '0', '0', '裁决54-60服');
INSERT INTO `gms_game_server` VALUES ('4555', '裁决55服', '权倾沙巴克', '47.100.205.238', '8054', '47.100.205.238', '8154', '1', '2019-12-17', '1', '4554', '0', '0', '裁决54-60服');
INSERT INTO `gms_game_server` VALUES ('4556', '裁决56服', '权倾沙巴克', '47.100.205.238', '8054', '47.100.205.238', '8154', '1', '2019-12-19', '1', '4554', '0', '0', '裁决54-60服');
INSERT INTO `gms_game_server` VALUES ('4557', '裁决57服', '权倾沙巴克', '47.100.205.238', '8054', '47.100.205.238', '8154', '1', '2019-12-21', '1', '4554', '0', '0', '裁决54-60服');
INSERT INTO `gms_game_server` VALUES ('4558', '裁决58服', '权倾沙巴克', '47.100.205.238', '8054', '47.100.205.238', '8154', '1', '2019-12-24', '1', '4554', '0', '0', '裁决54-60服');
INSERT INTO `gms_game_server` VALUES ('4559', '裁决59服', '权倾沙巴克', '47.100.205.238', '8054', '47.100.205.238', '8154', '1', '2019-12-26', '1', '4554', '0', '0', '裁决54-60服');
INSERT INTO `gms_game_server` VALUES ('4560', '裁决60服', '权倾沙巴克', '47.100.205.238', '8054', '47.100.205.238', '8154', '1', '2019-12-28', '1', '4554', '0', '0', '裁决54-60服');
INSERT INTO `gms_game_server` VALUES ('4561', '裁决61服', '权倾沙巴克', '47.100.205.238', '8061', '47.100.205.238', '8161', '1', '2019-12-31', '1', '4561', '0', '0', '裁决61-70服');
INSERT INTO `gms_game_server` VALUES ('4562', '裁决62服', '权倾沙巴克', '47.100.205.238', '8061', '47.100.205.238', '8161', '1', '2020-01-02', '1', '4561', '0', '0', '裁决61-70服');
INSERT INTO `gms_game_server` VALUES ('4563', '裁决63服', '权倾沙巴克', '47.100.205.238', '8061', '47.100.205.238', '8161', '1', '2020-01-04', '1', '4561', '0', '0', '裁决61-70服');
INSERT INTO `gms_game_server` VALUES ('4564', '裁决64服', '权倾沙巴克', '47.100.205.238', '8061', '47.100.205.238', '8161', '1', '2020-01-07', '1', '4561', '0', '0', '裁决61-70服');
INSERT INTO `gms_game_server` VALUES ('4565', '裁决65服', '权倾沙巴克', '47.100.205.238', '8061', '47.100.205.238', '8161', '1', '2020-01-09', '1', '4561', '0', '0', '裁决61-70服');
INSERT INTO `gms_game_server` VALUES ('4566', '裁决66服', '权倾沙巴克', '47.100.205.238', '8061', '47.100.205.238', '8161', '1', '2020-01-11', '1', '4561', '0', '0', '裁决61-70服');
INSERT INTO `gms_game_server` VALUES ('4567', '裁决67服', '权倾沙巴克', '47.100.205.238', '8061', '47.100.205.238', '8161', '1', '2020-01-14', '1', '4561', '0', '0', '裁决61-70服');
INSERT INTO `gms_game_server` VALUES ('4568', '裁决68服', '权倾沙巴克', '47.100.205.238', '8061', '47.100.205.238', '8161', '1', '2020-01-16', '1', '4561', '0', '0', '裁决61-70服');
INSERT INTO `gms_game_server` VALUES ('4569', '裁决69服', '权倾沙巴克', '47.100.205.238', '8061', '47.100.205.238', '8161', '1', '2020-01-18', '1', '4561', '0', '0', '裁决61-70服');
INSERT INTO `gms_game_server` VALUES ('4570', '裁决70服', '权倾沙巴克', '47.100.205.238', '8061', '47.100.205.238', '8161', '1', '2020-01-21', '1', '4561', '0', '0', '裁决61-70服');
INSERT INTO `gms_game_server` VALUES ('4571', '裁决71服', '权倾沙巴克', '47.102.216.156', '8071', '47.102.216.156', '8171', '1', '2020-01-23', '1', '4571', '0', '0', '裁决71-72,76-78服');
INSERT INTO `gms_game_server` VALUES ('4572', '裁决72服', '权倾沙巴克', '47.102.216.156', '8071', '47.102.216.156', '8171', '1', '2020-01-25', '1', '4571', '0', '0', '裁决71-72,76-78服');
INSERT INTO `gms_game_server` VALUES ('4573', '裁决73服', '权倾沙巴克', '47.102.216.156', '8073', '47.102.216.156', '8173', '1', '2020-01-28', '1', '4573', '0', '0', '裁决73-75,79-81,83服');
INSERT INTO `gms_game_server` VALUES ('4574', '裁决74服', '权倾沙巴克', '47.102.216.156', '8073', '47.102.216.156', '8173', '1', '2020-01-28', '1', '4573', '0', '0', '裁决73-75,79-81,83服');
INSERT INTO `gms_game_server` VALUES ('4575', '裁决75服', '权倾沙巴克', '47.102.216.156', '8073', '47.102.216.156', '8173', '1', '2020-02-01', '1', '4573', '0', '0', '裁决73-75,79-81,83服');
INSERT INTO `gms_game_server` VALUES ('4576', '裁决76服', '权倾沙巴克', '47.102.216.156', '8071', '47.102.216.156', '8171', '1', '2020-02-04', '1', '4571', '0', '0', '裁决71-72,76-78服');
INSERT INTO `gms_game_server` VALUES ('4577', '裁决77服', '权倾沙巴克', '47.102.216.156', '8071', '47.102.216.156', '8171', '1', '2020-02-06', '1', '4571', '0', '0', '裁决71-72,76-78服');
INSERT INTO `gms_game_server` VALUES ('4578', '裁决78服', '权倾沙巴克', '47.102.216.156', '8071', '47.102.216.156', '8171', '1', '2020-02-08', '1', '4571', '0', '0', '裁决71-72,76-78服');
INSERT INTO `gms_game_server` VALUES ('4579', '裁决79服', '权倾沙巴克', '47.102.216.156', '8073', '47.102.216.156', '8173', '1', '2020-02-11', '1', '4573', '0', '0', '裁决73-75,79-81,83服');
INSERT INTO `gms_game_server` VALUES ('4580', '裁决80服', '权倾沙巴克', '47.102.216.156', '8073', '47.102.216.156', '8173', '1', '2020-02-13', '1', '4573', '0', '0', '裁决73-75,79-81,83服');
INSERT INTO `gms_game_server` VALUES ('4581', '裁决81服', '权倾沙巴克', '47.102.216.156', '8073', '47.102.216.156', '8173', '1', '2020-02-15', '1', '4573', '0', '0', '裁决73-75,79-81,83服');
INSERT INTO `gms_game_server` VALUES ('4582', '裁决82服', '权倾沙巴克', '47.102.216.156', '8082', '47.102.216.156', '8182', '1', '2020-02-18', '1', '4582', '0', '0', '裁决82,84-90服');
INSERT INTO `gms_game_server` VALUES ('4583', '裁决83服', '权倾沙巴克', '47.102.216.156', '8073', '47.102.216.156', '8173', '1', '2020-02-20', '1', '4573', '0', '0', '裁决73-75,79-81,83服');
INSERT INTO `gms_game_server` VALUES ('4584', '裁决84服', '权倾沙巴克', '47.102.216.156', '8082', '47.102.216.156', '8182', '1', '2020-02-22', '1', '4582', '0', '0', '裁决82,84-90服');
INSERT INTO `gms_game_server` VALUES ('4585', '裁决85服', '权倾沙巴克', '47.102.216.156', '8082', '47.102.216.156', '8182', '1', '2020-02-25', '1', '4582', '0', '0', '裁决82,84-90服');
INSERT INTO `gms_game_server` VALUES ('4586', '裁决86服', '权倾沙巴克', '47.102.216.156', '8082', '47.102.216.156', '8182', '1', '2020-02-27', '1', '4582', '0', '0', '裁决82,84-90服');
INSERT INTO `gms_game_server` VALUES ('4587', '裁决87服', '权倾沙巴克', '47.102.216.156', '8082', '47.102.216.156', '8182', '1', '2020-02-29', '1', '4582', '0', '0', '裁决82,84-90服');
INSERT INTO `gms_game_server` VALUES ('4588', '裁决88服', '权倾沙巴克', '47.102.216.156', '8082', '47.102.216.156', '8182', '1', '2020-03-03', '1', '4582', '0', '0', '裁决82,84-90服');
INSERT INTO `gms_game_server` VALUES ('4589', '裁决89服', '权倾沙巴克', '47.102.216.156', '8082', '47.102.216.156', '8182', '1', '2020-03-05', '1', '4582', '0', '0', '裁决82,84-90服');
INSERT INTO `gms_game_server` VALUES ('4590', '裁决90服', '权倾沙巴克', '47.102.216.156', '8082', '47.102.216.156', '8182', '1', '2020-03-07', '1', '4582', '0', '0', '裁决82,84-90服');
INSERT INTO `gms_game_server` VALUES ('4591', '裁决91服', '权倾沙巴克', '47.102.216.156', '8091', '47.102.216.156', '8191', '1', '2020-03-10', '1', '4591', '0', '0', '裁决91-93服');
INSERT INTO `gms_game_server` VALUES ('4592', '裁决92服', '权倾沙巴克', '47.102.216.156', '8091', '47.102.216.156', '8191', '1', '2020-03-12', '1', '4591', '0', '0', '裁决91-93服');
INSERT INTO `gms_game_server` VALUES ('4593', '裁决93服', '权倾沙巴克', '47.102.216.156', '8091', '47.102.216.156', '8191', '1', '2020-03-14', '1', '4591', '0', '0', '裁决91-93服');
INSERT INTO `gms_game_server` VALUES ('4594', '裁决94服', '权倾沙巴克', '47.102.216.156', '8094', '47.102.216.156', '8194', '1', '2020-03-17', '1', '4594', '0', '0', '裁决94-96服');
INSERT INTO `gms_game_server` VALUES ('4595', '裁决95服', '权倾沙巴克', '47.102.216.156', '8094', '47.102.216.156', '8194', '1', '2020-03-19', '1', '4594', '0', '0', '裁决94-96服');
INSERT INTO `gms_game_server` VALUES ('4596', '裁决96服', '权倾沙巴克', '47.102.216.156', '8094', '47.102.216.156', '8194', '1', '2020-03-21', '1', '4594', '0', '0', '裁决94-96服');
INSERT INTO `gms_game_server` VALUES ('4597', '裁决97服', '权倾沙巴克', '47.102.216.156', '8097', '47.102.216.156', '8197', '1', '2020-03-23', '1', '4597', '0', '0', '裁决97,102服');
INSERT INTO `gms_game_server` VALUES ('4598', '裁决98服', '权倾沙巴克', '47.102.216.156', '8098', '47.102.216.156', '8198', '1', '2020-03-24', '1', '4598', '0', '0', '裁决98,101,103服');
INSERT INTO `gms_game_server` VALUES ('4599', '裁决99服', '权倾沙巴克', '47.102.216.156', '8099', '47.102.216.156', '8199', '1', '2020-03-25', '1', '4599', '0', '0', '裁决99,100服');
INSERT INTO `gms_game_server` VALUES ('4600', '裁决100服', '权倾沙巴克', '47.102.216.156', '8099', '47.102.216.156', '8199', '1', '2020-03-26', '1', '4599', '0', '0', '裁决99,100服');
INSERT INTO `gms_game_server` VALUES ('4601', '热血1服', '权倾沙巴克', '47.102.216.156', '8098', '47.102.216.156', '8198', '2', '2020-03-27', '1', '4598', '0', '0', '裁决98,101,103服');
INSERT INTO `gms_game_server` VALUES ('4602', '热血2服', '权倾沙巴克', '47.102.216.156', '8097', '47.102.216.156', '8197', '2', '2020-03-28', '1', '4597', '0', '0', '裁决97,102服');
INSERT INTO `gms_game_server` VALUES ('4603', '热血3服', '权倾沙巴克', '47.102.216.156', '8098', '47.102.216.156', '8198', '2', '2020-03-30', '1', '4598', '0', '0', '裁决98,101,103服');
INSERT INTO `gms_game_server` VALUES ('4604', '热血4服', '权倾沙巴克', '47.102.216.156', '8404', '47.102.216.156', '8504', '2', '2020-03-31', '1', '4604', '0', '0', '热血4-5服');
INSERT INTO `gms_game_server` VALUES ('4605', '热血5服', '权倾沙巴克', '47.102.216.156', '8404', '47.102.216.156', '8504', '2', '2020-04-01', '1', '4604', '0', '0', '热血4-5服');
INSERT INTO `gms_game_server` VALUES ('4606', '热血6服', '权倾沙巴克', '47.102.216.156', '8406', '47.102.216.156', '8506', '2', '2020-04-02', '1', '4606', '0', '0', '热血6-7服');
INSERT INTO `gms_game_server` VALUES ('4607', '热血7服', '权倾沙巴克', '47.102.216.156', '8406', '47.102.216.156', '8506', '2', '2020-04-03', '1', '4606', '0', '0', '热血6-7服');
INSERT INTO `gms_game_server` VALUES ('4608', '热血8服', '权倾沙巴克', '47.100.205.238', '8408', '47.100.205.238', '8508', '2', '2020-04-06', '1', '4608', '0', '0', '热血8服');
INSERT INTO `gms_game_server` VALUES ('4609', '热血9服', '权倾沙巴克', '47.100.205.238', '8409', '47.100.205.238', '8509', '2', '2020-04-07', '1', '4609', '0', '0', '热血9服');
INSERT INTO `gms_game_server` VALUES ('4610', '热血10服', '权倾沙巴克', '47.100.205.238', '8410', '47.100.205.238', '8510', '2', '2020-04-08', '1', '4610', '0', '0', '热血10服');
INSERT INTO `gms_game_server` VALUES ('4611', '热血11服', '权倾沙巴克', '47.100.205.238', '8411', '47.100.205.238', '8511', '2', '2020-04-09', '1', '4611', '0', '0', '热血11服');
INSERT INTO `gms_game_server` VALUES ('4612', '热血12服', '权倾沙巴克', '47.100.205.238', '8412', '47.100.205.238', '8512', '2', '2020-04-10', '1', '4612', '0', '0', '热血12服');
INSERT INTO `gms_game_server` VALUES ('4613', '热血13服', '权倾沙巴克', '47.102.216.156', '8413', '47.102.216.156', '8513', '2', '2020-04-11', '1', '4613', '0', '0', '热血13服');
INSERT INTO `gms_game_server` VALUES ('4614', '热血14服', '权倾沙巴克', '47.102.216.156', '8414', '47.102.216.156', '8514', '2', '2020-04-13', '0', '4614', '0', '0', '热血14服');
INSERT INTO `gms_game_server` VALUES ('4615', '热血15服', '权倾沙巴克', '47.102.216.156', '8415', '47.102.216.156', '8515', '2', '2020-04-14', '0', '4615', '0', '0', '热血15服');
INSERT INTO `gms_game_server` VALUES ('6500', '仙游龙腾跨服', '仙游龙腾', '106.15.38.98', '6000', '106.15.38.98', '6100', '0', '2019-10-24', '1', '6500', '0', '0', '仙游龙腾跨服');
INSERT INTO `gms_game_server` VALUES ('6501', '龙腾1-13区', '仙游龙腾', '106.15.38.98', '6001', '106.15.38.98', '6101', '0', '2019-10-29', '1', '6501', '0', '0', '龙腾1-13服');
INSERT INTO `gms_game_server` VALUES ('6514', '龙腾14-23区', '仙游龙腾', '106.15.38.98', '6014', '106.15.38.98', '6114', '0', '2019-11-29', '1', '6514', '0', '0', '龙腾14-23服');
INSERT INTO `gms_game_server` VALUES ('6524', '龙腾24-37,50-55区', '仙游龙腾', '106.15.38.98', '6024', '106.15.38.98', '6124', '0', '2019-12-16', '1', '6524', '0', '0', '龙腾24-37,50-55服');
INSERT INTO `gms_game_server` VALUES ('6538', '龙腾38-40,59-61区', '仙游龙腾', '106.15.38.98', '6038', '106.15.38.98', '6138', '0', '2020-01-12', '1', '6538', '0', '0', '龙腾38-40,59-61服');
INSERT INTO `gms_game_server` VALUES ('6541', '龙腾41-49区', '仙游龙腾', '106.15.38.98', '6041', '106.15.38.98', '6141', '0', '2020-01-17', '1', '6541', '0', '0', '龙腾41-49服');
INSERT INTO `gms_game_server` VALUES ('6556', '龙腾56-58,62,65区', '仙游龙腾', '106.15.38.98', '6056', '106.15.38.98', '6156', '0', '2020-02-17', '1', '6556', '0', '0', '龙腾56-58,62,65服');
INSERT INTO `gms_game_server` VALUES ('6563', '龙腾63-64,66-68区', '仙游龙腾', '106.15.38.98', '6063', '106.15.38.98', '6163', '0', '2020-03-01', '1', '6563', '0', '0', '龙腾63-64,66-68服');
INSERT INTO `gms_game_server` VALUES ('6569', '龙腾69_71区', '仙游龙腾', '106.15.38.98', '6069', '106.15.38.98', '6169', '0', '2020-03-11', '1', '6569', '0', '0', '龙腾69_71服');
INSERT INTO `gms_game_server` VALUES ('6572', '龙腾72-76区', '仙游龙腾', '106.15.38.98', '6072', '106.15.38.98', '6172', '0', '2020-03-16', '1', '6572', '0', '0', '龙腾72-76服');
INSERT INTO `gms_game_server` VALUES ('6577', '龙腾77-79区', '仙游龙腾', '106.15.38.98', '6077', '106.15.38.98', '6177', '0', '2020-03-25', '1', '6577', '0', '0', '龙腾77-79服');
INSERT INTO `gms_game_server` VALUES ('6580', '龙腾80-81区', '仙游龙腾', '106.15.38.98', '6080', '106.15.38.98', '6180', '0', '2020-03-30', '1', '6580', '0', '0', '龙腾80-81服');
INSERT INTO `gms_game_server` VALUES ('6582', '龙腾82区', '仙游龙腾', '106.15.38.98', '6082', '106.15.38.98', '6182', '0', '2020-04-03', '1', '6582', '0', '0', '龙腾82服');
INSERT INTO `gms_game_server` VALUES ('6583', '龙腾83区', '仙游龙腾', '106.15.38.98', '6083', '106.15.38.98', '6183', '0', '2020-04-05', '1', '6583', '0', '0', '龙腾83服');
INSERT INTO `gms_game_server` VALUES ('6584', '龙腾84区', '仙游龙腾', '106.15.38.98', '6084', '106.15.38.98', '6184', '0', '2020-04-08', '1', '6584', '0', '0', '龙腾84服');
INSERT INTO `gms_game_server` VALUES ('6585', '龙腾85区', '仙游龙腾', '106.15.38.98', '6085', '106.15.38.98', '6185', '0', '2020-04-10', '1', '6585', '0', '0', '龙腾85服');
INSERT INTO `gms_game_server` VALUES ('6586', '龙腾86区', '仙游龙腾', '106.15.38.98', '6086', '106.15.38.98', '6186', '0', '2020-04-12', '1', '6586', '0', '0', '龙腾86服');
INSERT INTO `gms_game_server` VALUES ('6587', '龙腾87区', '仙游龙腾', '106.15.38.98', '6087', '106.15.38.98', '6187', '0', '2020-04-13', '0', '6587', '0', '0', '龙腾87服');
INSERT INTO `gms_game_server` VALUES ('10536', '战天36-44服', '昊天游-战天', '120.55.163.135', '6636', '120.55.163.135', '6736', '0', '2020-01-23', '1', '10536', '0', '0', '战天36-44服');
INSERT INTO `gms_game_server` VALUES ('10545', '战天45-53服', '昊天游-战天', '120.55.163.135', '6645', '120.55.163.135', '6745', '0', '2020-02-21', '1', '10545', '0', '0', '战天45-53服');
INSERT INTO `gms_game_server` VALUES ('10554', '战天54-56服', '昊天游-战天', '120.55.163.135', '6654', '120.55.163.135', '6754', '0', '2020-03-16', '1', '10554', '0', '0', '战天54-56服');
INSERT INTO `gms_game_server` VALUES ('10557', '战天57-59服', '昊天游-战天', '120.55.163.135', '6657', '120.55.163.135', '6757', '0', '2020-03-19', '1', '10557', '0', '0', '战天57-59服');
INSERT INTO `gms_game_server` VALUES ('10560', '战天60服', '昊天游-战天', '120.55.163.135', '6660', '120.55.163.135', '6760', '0', '2020-03-22', '1', '10560', '0', '0', '战天60服');
INSERT INTO `gms_game_server` VALUES ('10561', '战天61服', '昊天游-战天', '120.55.163.135', '6661', '120.55.163.135', '6761', '0', '2020-03-27', '1', '10561', '0', '0', '战天61服');
INSERT INTO `gms_game_server` VALUES ('10562', '战天62服', '昊天游-战天', '120.55.163.135', '6662', '120.55.163.135', '6762', '0', '2020-03-30', '1', '10562', '0', '0', '战天62服');
INSERT INTO `gms_game_server` VALUES ('10563', '战天63服', '昊天游-战天', '120.55.163.135', '6663', '120.55.163.135', '6763', '0', '2020-04-02', '1', '10563', '0', '0', '战天63服');
INSERT INTO `gms_game_server` VALUES ('10564', '战天64服', '昊天游-战天', '47.101.206.211', '6664', '47.101.206.211', '6764', '0', '2020-04-07', '1', '10564', '0', '0', '战天64服');
INSERT INTO `gms_game_server` VALUES ('10565', '战天65服', '昊天游-战天', '47.101.206.211', '6665', '47.101.206.211', '6765', '0', '2020-04-09', '1', '10565', '0', '0', '战天65服');
INSERT INTO `gms_game_server` VALUES ('10566', '战天66服', '昊天游-战天', '47.101.206.211', '6666', '47.101.206.211', '6766', '0', '2020-04-13', '0', '10566', '0', '0', '战天66服');
INSERT INTO `gms_game_server` VALUES ('11000', '霸业跨服', '玖趣', '47.100.241.139', '8100', '47.100.241.139', '8200', '0', '2019-12-10', '1', '11000', '0', '0', '霸业跨服');
INSERT INTO `gms_game_server` VALUES ('11001', '霸业测试服', '玖趣', '47.100.241.139', '8101', '47.100.241.139', '8201', '0', '2019-12-10', '1', '11001', '0', '0', '霸业1-6服');
INSERT INTO `gms_game_server` VALUES ('11101', '屠龙1-3服', '玖趣', '47.100.241.139', '8401', '47.100.241.139', '8501', '0', '2020-03-02', '1', '11101', '0', '0', '屠龙1-3服');
INSERT INTO `gms_game_server` VALUES ('11104', '屠龙4-7服', '玖趣', '47.100.241.139', '8404', '47.100.241.139', '8504', '0', '2020-03-10', '1', '11104', '0', '0', '屠龙4-7服');
INSERT INTO `gms_game_server` VALUES ('11108', '屠龙8-13服', '玖趣', '47.100.241.139', '8408', '47.100.241.139', '8508', '0', '2020-03-20', '1', '11108', '0', '0', '屠龙8-13服');
INSERT INTO `gms_game_server` VALUES ('11114', '屠龙14服', '玖趣', '47.100.241.139', '8414', '47.100.241.139', '8514', '0', '2020-04-03', '1', '11114', '0', '0', '屠龙14服');
INSERT INTO `gms_game_server` VALUES ('11115', '屠龙15服', '玖趣', '47.100.241.139', '8415', '47.100.241.139', '8515', '0', '2020-04-06', '1', '11115', '0', '0', '屠龙15服');
INSERT INTO `gms_game_server` VALUES ('11116', '屠龙16服', '玖趣', '47.100.241.139', '8416', '47.100.241.139', '8516', '0', '2020-04-08', '1', '11116', '0', '0', '屠龙16服');
INSERT INTO `gms_game_server` VALUES ('11117', '屠龙17服', '玖趣', '47.100.241.139', '8417', '47.100.241.139', '8517', '0', '2020-04-10', '1', '11117', '0', '0', '屠龙17服');
INSERT INTO `gms_game_server` VALUES ('11118', '屠龙18服', '玖趣', '47.100.241.139', '8418', '47.100.241.139', '8518', '0', '2020-04-13', '0', '11118', '0', '0', '屠龙18服');
INSERT INTO `gms_game_server` VALUES ('11501', '天启1服', '天启', '47.100.241.139', '6101', '47.100.241.139', '6201', '0', '2020-01-02', '1', '11501', '0', '0', '天启1服');
INSERT INTO `gms_game_server` VALUES ('12000', '狂龙跨服', '狂龙战域跨服', '106.15.183.66', '6400', '106.15.183.66', '6500', '0', '2020-02-26', '1', '12000', '0', '0', '狂龙跨服');
INSERT INTO `gms_game_server` VALUES ('12001', '狂龙1服', '狂龙战域', '106.15.183.66', '6401', '106.15.183.66', '6501', '0', '2020-02-27', '1', '12001', '0', '0', '狂龙1-7服');
INSERT INTO `gms_game_server` VALUES ('12002', '狂龙2服', '狂龙战域', '106.15.183.66', '6401', '106.15.183.66', '6501', '0', '2020-02-28', '1', '12001', '0', '0', '狂龙1-7服');
INSERT INTO `gms_game_server` VALUES ('12003', '狂龙3服', '狂龙战域', '106.15.183.66', '6401', '106.15.183.66', '6501', '0', '2020-02-29', '1', '12001', '0', '0', '狂龙1-7服');
INSERT INTO `gms_game_server` VALUES ('12004', '雄霸天下', '狂龙战域', '106.15.183.66', '6401', '106.15.183.66', '6501', '0', '2020-03-02', '1', '12001', '0', '0', '狂龙1-7服');
INSERT INTO `gms_game_server` VALUES ('12005', '狂龙5服', '狂龙战域', '106.15.183.66', '6401', '106.15.183.66', '6501', '0', '2020-03-03', '1', '12001', '0', '0', '狂龙1-7服');
INSERT INTO `gms_game_server` VALUES ('12006', '狂龙6服', '狂龙战域', '106.15.183.66', '6401', '106.15.183.66', '6501', '0', '2020-03-04', '1', '12001', '0', '0', '狂龙1-7服');
INSERT INTO `gms_game_server` VALUES ('12007', '狂龙7服', '狂龙战域', '106.15.183.66', '6401', '106.15.183.66', '6501', '0', '2020-03-05', '1', '12001', '0', '0', '狂龙1-7服');
INSERT INTO `gms_game_server` VALUES ('12008', '狂龙8服', '狂龙战域', '106.15.183.66', '6408', '106.15.183.66', '6508', '0', '2020-03-06', '1', '12008', '0', '0', '狂龙8-17服');
INSERT INTO `gms_game_server` VALUES ('12009', '王天浩', '狂龙战域', '106.15.183.66', '6408', '106.15.183.66', '6508', '0', '2020-03-07', '1', '12008', '0', '0', '狂龙8-17服');
INSERT INTO `gms_game_server` VALUES ('12010', '狂龙10服', '狂龙战域', '106.15.183.66', '6408', '106.15.183.66', '6508', '0', '2020-03-09', '1', '12008', '0', '0', '狂龙8-17服');
INSERT INTO `gms_game_server` VALUES ('12011', '狂龙11服', '狂龙战域', '106.15.183.66', '6408', '106.15.183.66', '6508', '0', '2020-03-10', '1', '12008', '0', '0', '狂龙8-17服');
INSERT INTO `gms_game_server` VALUES ('12012', '狂龙12服', '狂龙战域', '106.15.183.66', '6408', '106.15.183.66', '6508', '0', '2020-03-11', '1', '12008', '0', '0', '狂龙8-17服');
INSERT INTO `gms_game_server` VALUES ('12013', '狂龙13服', '狂龙战域', '106.15.183.66', '6408', '106.15.183.66', '6508', '0', '2020-03-12', '1', '12008', '0', '0', '狂龙8-17服');
INSERT INTO `gms_game_server` VALUES ('12014', '狂龙14服', '狂龙战域', '106.15.183.66', '6408', '106.15.183.66', '6508', '0', '2020-03-13', '1', '12008', '0', '0', '狂龙8-17服');
INSERT INTO `gms_game_server` VALUES ('12015', '狂龙15服', '狂龙战域', '106.15.183.66', '6408', '106.15.183.66', '6508', '0', '2020-03-14', '1', '12008', '0', '0', '狂龙8-17服');
INSERT INTO `gms_game_server` VALUES ('12016', '狂龙16服', '狂龙战域', '106.15.183.66', '6408', '106.15.183.66', '6508', '0', '2020-03-16', '1', '12008', '0', '0', '狂龙8-17服');
INSERT INTO `gms_game_server` VALUES ('12017', '狂龙17服', '狂龙战域', '106.15.183.66', '6408', '106.15.183.66', '6508', '0', '2020-03-17', '1', '12008', '0', '0', '狂龙8-17服');
INSERT INTO `gms_game_server` VALUES ('12018', '狂龙18服', '狂龙战域', '106.15.183.66', '6418', '106.15.183.66', '6518', '0', '2020-03-18', '1', '12018', '0', '0', '狂龙18-20服');
INSERT INTO `gms_game_server` VALUES ('12019', '狂龙19服', '狂龙战域', '106.15.183.66', '6418', '106.15.183.66', '6518', '0', '2020-03-19', '1', '12018', '0', '0', '狂龙18-20服');
INSERT INTO `gms_game_server` VALUES ('12020', '狂龙20服', '狂龙战域', '106.15.183.66', '6418', '106.15.183.66', '6518', '0', '2020-03-20', '1', '12018', '0', '0', '狂龙18-20服');
INSERT INTO `gms_game_server` VALUES ('12021', '狂龙21服', '狂龙战域', '106.15.183.66', '6421', '106.15.183.66', '6521', '0', '2020-03-21', '1', '12021', '0', '0', '狂龙21-23服');
INSERT INTO `gms_game_server` VALUES ('12022', '狂龙22服', '狂龙战域', '106.15.183.66', '6421', '106.15.183.66', '6521', '0', '2020-03-23', '1', '12021', '0', '0', '狂龙21-23服');
INSERT INTO `gms_game_server` VALUES ('12023', '狂龙23服', '狂龙战域', '106.15.183.66', '6421', '106.15.183.66', '6521', '0', '2020-03-24', '1', '12021', '0', '0', '狂龙21-23服');
INSERT INTO `gms_game_server` VALUES ('12024', '狂龙24服', '狂龙战域', '106.15.183.66', '6424', '106.15.183.66', '6524', '0', '2020-03-25', '1', '12024', '0', '0', '狂龙24,26,29服');
INSERT INTO `gms_game_server` VALUES ('12025', '狂龙25服', '狂龙战域', '106.15.183.66', '6425', '106.15.183.66', '6525', '0', '2020-03-26', '1', '12025', '0', '0', '狂龙25,27,28,30服');
INSERT INTO `gms_game_server` VALUES ('12026', '狂龙26服', '狂龙战域', '106.15.183.66', '6424', '106.15.183.66', '6524', '0', '2020-03-27', '1', '12024', '0', '0', '狂龙24,26,29服');
INSERT INTO `gms_game_server` VALUES ('12027', '熊出没', '狂龙战域', '106.15.183.66', '6425', '106.15.183.66', '6525', '0', '2020-03-28', '1', '12025', '0', '0', '狂龙25,27,28,30服');
INSERT INTO `gms_game_server` VALUES ('12028', '风流倜傥', '狂龙战域', '106.15.183.66', '6425', '106.15.183.66', '6525', '0', '2020-03-30', '1', '12025', '0', '0', '狂龙25,27,28,30服');
INSERT INTO `gms_game_server` VALUES ('12029', '狂龙29服', '狂龙战域', '106.15.183.66', '6424', '106.15.183.66', '6524', '0', '2020-03-31', '1', '12024', '0', '0', '狂龙24,26,29服');
INSERT INTO `gms_game_server` VALUES ('12030', '糖在兜里', '狂龙战域', '106.15.183.66', '6425', '106.15.183.66', '6525', '0', '2020-04-01', '1', '12025', '0', '0', '狂龙25,27,28,30服');
INSERT INTO `gms_game_server` VALUES ('12031', '狂龙31服', '狂龙战域', '106.15.183.66', '6431', '106.15.183.66', '6531', '0', '2020-04-02', '1', '12031', '0', '0', '狂龙31-34服');
INSERT INTO `gms_game_server` VALUES ('12032', '狂龙32服', '狂龙战域', '106.15.183.66', '6431', '106.15.183.66', '6531', '0', '2020-04-03', '1', '12031', '0', '0', '狂龙31-34服');
INSERT INTO `gms_game_server` VALUES ('12033', '狂龙33服', '狂龙战域', '106.15.183.66', '6431', '106.15.183.66', '6531', '0', '2020-04-06', '1', '12031', '0', '0', '狂龙31-34服');
INSERT INTO `gms_game_server` VALUES ('12034', '狂龙34服', '狂龙战域', '106.15.183.66', '6431', '106.15.183.66', '6531', '0', '2020-04-07', '1', '12031', '0', '0', '狂龙31-34服');
INSERT INTO `gms_game_server` VALUES ('12035', '狂龙35服', '狂龙战域', '106.15.183.66', '6435', '106.15.183.66', '6535', '0', '2020-04-08', '1', '12035', '0', '0', '狂龙35服');
INSERT INTO `gms_game_server` VALUES ('12036', '狂龙36服', '狂龙战域', '106.15.183.66', '6436', '106.15.183.66', '6536', '0', '2020-04-09', '1', '12036', '0', '0', '狂龙36服');
INSERT INTO `gms_game_server` VALUES ('12037', '狂龙37服', '狂龙战域', '106.15.183.66', '6437', '106.15.183.66', '6537', '0', '2020-04-10', '1', '12037', '0', '0', '狂龙37服');
INSERT INTO `gms_game_server` VALUES ('12038', '狂龙38服', '狂龙战域', '106.15.183.66', '6438', '106.15.183.66', '6538', '0', '2020-04-11', '1', '12038', '0', '0', '狂龙38服');
INSERT INTO `gms_game_server` VALUES ('12039', '狂龙39服', '狂龙战域', '106.15.183.66', '6439', '106.15.183.66', '6539', '0', '2020-04-13', '0', '12039', '0', '0', '狂龙39服');
INSERT INTO `gms_game_server` VALUES ('12040', '狂龙40服', '狂龙战域', '106.15.183.66', '6440', '106.15.183.66', '6540', '0', '2020-04-14', '0', '12040', '0', '0', '狂龙40服');
INSERT INTO `gms_game_server` VALUES ('12500', '血色龙城跨服', '669-血色龙城', '101.132.130.223', '6400', '101.132.130.223', '6500', '0', '2020-03-16', '1', '12500', '0', '0', '血色龙城跨服');
INSERT INTO `gms_game_server` VALUES ('12501', '龙城1服', '669-血色龙城', '101.132.130.223', '6401', '101.132.130.223', '6501', '0', '2020-03-18', '1', '12501', '0', '0', '龙城1-2服');
INSERT INTO `gms_game_server` VALUES ('12502', '素素专服', '669-血色龙城', '101.132.130.223', '6401', '101.132.130.223', '6501', '0', '2020-03-20', '1', '12501', '0', '0', '龙城1-2服');
INSERT INTO `gms_game_server` VALUES ('12503', '龙城3服', '669-血色龙城', '101.132.130.223', '6403', '101.132.130.223', '6503', '0', '2020-03-22', '1', '12503', '0', '0', '龙城3-4服');
INSERT INTO `gms_game_server` VALUES ('12504', '龙城4服', '669-血色龙城', '101.132.130.223', '6403', '101.132.130.223', '6503', '0', '2020-03-24', '1', '12503', '0', '0', '龙城3-4服');
INSERT INTO `gms_game_server` VALUES ('12505', '龙城5服', '669-血色龙城', '101.132.130.223', '6405', '101.132.130.223', '6505', '0', '2020-03-27', '1', '12505', '0', '0', '龙城5-6服');
INSERT INTO `gms_game_server` VALUES ('12506', '龙城6服', '669-血色龙城', '101.132.130.223', '6405', '101.132.130.223', '6505', '0', '2020-03-29', '1', '12505', '0', '0', '龙城5-6服');
INSERT INTO `gms_game_server` VALUES ('12507', '龙城7服', '669-血色龙城', '101.132.130.223', '6407', '101.132.130.223', '6507', '0', '2020-04-01', '1', '12507', '0', '0', '龙城7服');
INSERT INTO `gms_game_server` VALUES ('12508', '龙城8服', '669-血色龙城', '101.132.130.223', '6408', '101.132.130.223', '6508', '0', '2020-04-03', '1', '12508', '0', '0', '龙城8服');
INSERT INTO `gms_game_server` VALUES ('12509', '龙城9服', '669-血色龙城', '101.132.130.223', '6409', '101.132.130.223', '6509', '0', '2020-04-05', '1', '12509', '0', '0', '龙城9服');
INSERT INTO `gms_game_server` VALUES ('12510', '龙城10服', '669-血色龙城', '101.132.130.223', '6410', '101.132.130.223', '6510', '0', '2020-04-08', '1', '12510', '0', '0', '龙城10服');
INSERT INTO `gms_game_server` VALUES ('12511', '龙城11服', '669-血色龙城', '101.132.130.223', '6411', '101.132.130.223', '6511', '0', '2020-04-10', '1', '12511', '0', '0', '龙城11服');
INSERT INTO `gms_game_server` VALUES ('12512', '龙城12服', '669-血色龙城', '101.132.130.223', '6412', '101.132.130.223', '6512', '0', '2020-04-12', '0', '12512', '0', '0', '龙城12服');
INSERT INTO `gms_game_server` VALUES ('13000', '赤月武尊跨服', '战天-赤月武尊', '120.55.163.135', '9100', '120.55.163.135', '9200', '0', '2020-03-16', '1', '13000', '0', '0', '赤月武尊跨服');
INSERT INTO `gms_game_server` VALUES ('13001', '赤月1-3服', '战天-赤月武尊', '120.55.163.135', '9101', '120.55.163.135', '9201', '0', '2020-03-24', '1', '13001', '0', '0', '赤月1-3服');
INSERT INTO `gms_game_server` VALUES ('13004', '赤月4服', '战天-赤月武尊', '120.55.163.135', '9104', '120.55.163.135', '9204', '0', '2020-03-31', '1', '13004', '0', '0', '赤月4服');
INSERT INTO `gms_game_server` VALUES ('13005', '赤月5服', '战天-赤月武尊', '120.55.163.135', '9105', '120.55.163.135', '9205', '0', '2020-04-02', '1', '13005', '0', '0', '赤月5服');
INSERT INTO `gms_game_server` VALUES ('13006', '赤月6服', '战天-赤月武尊', '47.101.206.211', '9106', '47.101.206.211', '9206', '0', '2020-04-05', '1', '13006', '0', '0', '赤月6服');
INSERT INTO `gms_game_server` VALUES ('13007', '赤月7服', '战天-赤月武尊', '47.101.206.211', '9107', '47.101.206.211', '9207', '0', '2020-04-07', '1', '13007', '0', '0', '赤月7服');
INSERT INTO `gms_game_server` VALUES ('13008', '赤月8服', '战天-赤月武尊', '47.101.206.211', '9108', '47.101.206.211', '9208', '0', '2020-04-09', '1', '13008', '0', '0', '赤月8服');
INSERT INTO `gms_game_server` VALUES ('13009', '赤月9服', '战天-赤月武尊', '47.101.206.211', '9109', '47.101.206.211', '9209', '0', '2020-04-11', '1', '13009', '0', '0', '赤月9服');
INSERT INTO `gms_game_server` VALUES ('13010', '赤月10服', '战天-赤月武尊', '47.101.206.211', '9110', '47.101.206.211', '9210', '0', '2020-04-14', '0', '13010', '0', '0', '赤月10服');
INSERT INTO `gms_game_server` VALUES ('13500', '苍月传奇-跨服', '战天-苍月传奇', '120.55.163.135', '8100', '120.55.163.135', '8200', '0', '2020-03-16', '1', '13500', '0', '0', '苍月传奇跨服');
INSERT INTO `gms_game_server` VALUES ('13501', '苍月1-3服', '战天-苍月传奇', '120.55.163.135', '8101', '120.55.163.135', '8201', '0', '2020-03-16', '1', '13501', '0', '0', '苍月1-3服');
INSERT INTO `gms_game_server` VALUES ('13504', '苍月4服', '战天-苍月传奇', '120.55.163.135', '8104', '120.55.163.135', '8204', '0', '2020-03-28', '1', '13504', '0', '0', '苍月4服');
INSERT INTO `gms_game_server` VALUES ('13505', '苍月5服', '战天-苍月传奇', '120.55.163.135', '8105', '120.55.163.135', '8205', '0', '2020-03-30', '1', '13505', '0', '0', '苍月5服');
INSERT INTO `gms_game_server` VALUES ('13506', '苍月6服', '战天-苍月传奇', '120.55.163.135', '8106', '120.55.163.135', '8206', '0', '2020-03-31', '1', '13506', '0', '0', '苍月6服');
INSERT INTO `gms_game_server` VALUES ('13507', '苍月7服', '战天-苍月传奇', '120.55.163.135', '8107', '120.55.163.135', '8207', '0', '2020-04-01', '1', '13507', '0', '0', '苍月7服');
INSERT INTO `gms_game_server` VALUES ('13508', '苍月8服', '战天-苍月传奇', '120.55.163.135', '8108', '120.55.163.135', '8208', '0', '2020-04-02', '1', '13508', '0', '0', '苍月8服');
INSERT INTO `gms_game_server` VALUES ('13509', '苍月9服', '战天-苍月传奇', '47.101.206.211', '8109', '47.101.206.211', '8209', '0', '2020-04-03', '1', '13509', '0', '0', '苍月9服');
INSERT INTO `gms_game_server` VALUES ('13510', '苍月10服', '战天-苍月传奇', '47.101.206.211', '8110', '47.101.206.211', '8210', '0', '2020-04-05', '1', '13510', '0', '0', '苍月10服');
INSERT INTO `gms_game_server` VALUES ('13511', '苍月11服', '战天-苍月传奇', '47.101.206.211', '8111', '47.101.206.211', '8211', '0', '2020-04-07', '1', '13511', '0', '0', '苍月11服');
INSERT INTO `gms_game_server` VALUES ('13512', '苍月12服', '战天-苍月传奇', '47.101.206.211', '8112', '47.101.206.211', '8212', '0', '2020-04-09', '1', '13512', '0', '0', '苍月12服');
INSERT INTO `gms_game_server` VALUES ('13513', '苍月13服', '战天-苍月传奇', '47.101.206.211', '8113', '47.101.206.211', '8213', '0', '2020-04-11', '1', '13513', '0', '0', '苍月13服');
INSERT INTO `gms_game_server` VALUES ('13514', '苍月14服', '战天-苍月传奇', '47.101.206.211', '8114', '47.101.206.211', '8214', '0', '2020-04-13', '0', '13514', '0', '0', '苍月14服');
INSERT INTO `gms_game_server` VALUES ('13515', '苍月15服', '战天-苍月传奇', '47.101.206.211', '8115', '47.101.206.211', '8215', '0', '2020-04-14', '0', '13515', '0', '0', '苍月15服');
INSERT INTO `gms_game_server` VALUES ('14000', '裁决盛焰跨服', '669-裁决盛焰跨服', '47.100.241.139', '8700', '47.100.241.139', '8800', '0', '2020-03-23', '1', '14000', '0', '0', '裁决盛焰跨服');
INSERT INTO `gms_game_server` VALUES ('14001', '盛焰1服', '669-裁决盛焰', '47.100.241.139', '8701', '47.100.241.139', '8801', '0', '2020-03-24', '1', '14001', '0', '0', '盛焰1,4,5服');
INSERT INTO `gms_game_server` VALUES ('14002', '盛焰2服', '669-裁决盛焰', '47.100.241.139', '8702', '47.100.241.139', '8802', '0', '2020-03-25', '1', '14002', '0', '0', '盛焰2,3服');
INSERT INTO `gms_game_server` VALUES ('14003', '盛焰3服', '669-裁决盛焰', '47.100.241.139', '8702', '47.100.241.139', '8802', '0', '2020-03-26', '1', '14002', '0', '0', '盛焰2,3服');
INSERT INTO `gms_game_server` VALUES ('14004', '盛焰4服', '669-裁决盛焰', '47.100.241.139', '8701', '47.100.241.139', '8801', '0', '2020-03-27', '1', '14001', '0', '0', '盛焰1,4,5服');
INSERT INTO `gms_game_server` VALUES ('14005', '盛焰5服', '669-裁决盛焰', '47.100.241.139', '8701', '47.100.241.139', '8801', '0', '2020-03-28', '1', '14001', '0', '0', '盛焰1,4,5服');
INSERT INTO `gms_game_server` VALUES ('14006', '盛焰6服', '669-裁决盛焰', '47.100.241.139', '8706', '47.100.241.139', '8806', '0', '2020-03-30', '1', '14006', '0', '0', '盛焰6,7服');
INSERT INTO `gms_game_server` VALUES ('14007', '盛焰7服', '669-裁决盛焰', '47.100.241.139', '8706', '47.100.241.139', '8806', '0', '2020-03-31', '1', '14006', '0', '0', '盛焰6,7服');
INSERT INTO `gms_game_server` VALUES ('14008', '盛焰8服', '669-裁决盛焰', '47.100.241.139', '8708', '47.100.241.139', '8808', '0', '2020-04-01', '1', '14008', '0', '0', '盛焰8,9服');
INSERT INTO `gms_game_server` VALUES ('14009', '盛焰9服', '669-裁决盛焰', '47.100.241.139', '8708', '47.100.241.139', '8808', '0', '2020-04-02', '1', '14008', '0', '0', '盛焰8,9服');
INSERT INTO `gms_game_server` VALUES ('14010', '盛焰10服', '669-裁决盛焰', '47.100.241.139', '8710', '47.100.241.139', '8810', '0', '2020-04-03', '1', '14010', '0', '0', '盛焰10服');
INSERT INTO `gms_game_server` VALUES ('14011', '盛焰11服', '669-裁决盛焰', '47.100.241.139', '8711', '47.100.241.139', '8811', '0', '2020-04-05', '1', '14011', '0', '0', '盛焰11服');
INSERT INTO `gms_game_server` VALUES ('14012', '盛焰12服', '669-裁决盛焰', '47.100.241.139', '8712', '47.100.241.139', '8812', '0', '2020-04-06', '1', '14012', '0', '0', '盛焰12服');
INSERT INTO `gms_game_server` VALUES ('14013', '盛焰13服', '669-裁决盛焰', '47.100.241.139', '8713', '47.100.241.139', '8813', '0', '2020-04-07', '1', '14013', '0', '0', '盛焰13服');
INSERT INTO `gms_game_server` VALUES ('14014', '盛焰14服', '669-裁决盛焰', '47.100.241.139', '8714', '47.100.241.139', '8814', '0', '2020-04-08', '1', '14014', '0', '0', '盛焰14服');
INSERT INTO `gms_game_server` VALUES ('14015', '盛焰15服', '669-裁决盛焰', '47.100.241.139', '8715', '47.100.241.139', '8815', '0', '2020-04-09', '1', '14015', '0', '0', '盛焰15服');
INSERT INTO `gms_game_server` VALUES ('14016', '盛焰16服', '669-裁决盛焰', '47.100.241.139', '8716', '47.100.241.139', '8816', '0', '2020-04-10', '1', '14016', '0', '0', '盛焰16服');
INSERT INTO `gms_game_server` VALUES ('14017', '盛焰17服', '669-裁决盛焰', '47.100.241.139', '8717', '47.100.241.139', '8817', '0', '2020-04-11', '1', '14017', '0', '0', '盛焰17服');
INSERT INTO `gms_game_server` VALUES ('14018', '盛焰18服', '669-裁决盛焰', '47.100.241.139', '8718', '47.100.241.139', '8818', '0', '2020-04-13', '0', '14018', '0', '0', '盛焰18服');
INSERT INTO `gms_game_server` VALUES ('14019', '盛焰19服', '669-裁决盛焰', '47.100.241.139', '8719', '47.100.241.139', '8819', '0', '2020-04-14', '0', '14019', '0', '0', '盛焰19服');
INSERT INTO `gms_game_server` VALUES ('20002', '外网测试服', '雄霸外网测试', '101.132.168.191', '17864', '101.132.168.191', '15306', '0', '2019-08-24', '1', '20002', '0', '0', '外网测试服');
INSERT INTO `gms_game_server` VALUES ('20007', '雄霸测试服', 'gh1017_测试服 ', '101.132.168.191', '17869', '101.132.168.191', '15311', '0', '2019-08-24', '1', '20007', '0', '0', '雄霸测试服');
INSERT INTO `gms_game_server` VALUES ('20009', 'xiao7测试服', 'xiao7测试服', '101.132.168.191', '16109', '101.132.168.191', '16209', '0', '2019-08-24', '1', '20009', '0', '0', 'xiao7测试服');
INSERT INTO `gms_game_server` VALUES ('20011', '外网测11-13', '外网测11-13', '101.132.168.191', '16111', '101.132.168.191', '16211', '0', '2019-12-29', '1', '20011', '0', '0', '外网测11-13');
INSERT INTO `gms_game_server` VALUES ('20014', '669测试服', '669测试服', '101.132.168.191', '16114', '101.132.168.191', '16214', '0', '2020-02-16', '1', '20014', '0', '0', '669测试服');
INSERT INTO `gms_game_server` VALUES ('20015', '15天启测试服', '天启测试服', '101.132.168.191', '16115', '101.132.168.191', '16215', '0', '2020-02-16', '1', '20015', '0', '0', '15天启测试服');
INSERT INTO `gms_game_server` VALUES ('20016', '玖趣测试服', '玖趣测试服', '101.132.168.191', '16116', '101.132.168.191', '16216', '0', '2020-02-16', '1', '20016', '0', '0', '玖趣测试服');
INSERT INTO `gms_game_server` VALUES ('20017', '渠道测试服', '渠道测试服', '101.132.168.191', '16117', '101.132.168.191', '16217', '0', '2020-03-20', '1', '20017', '0', '0', '渠道测试服');
INSERT INTO `gms_game_server` VALUES ('20020', '常规测试服', '仙游 战天 玖趣 测试服', '101.132.168.191', '16120', '101.132.168.191', '16220', '0', '2020-03-20', '1', '20020', '0', '0', '常规测试服');
INSERT INTO `gms_game_server` VALUES ('20021', '沙巴克测试服', '沙巴克测试服', '101.132.168.191', '16121', '101.132.168.191', '16221', '0', '2020-03-20', '1', '20021', '0', '0', '沙巴克测试服');
INSERT INTO `gms_game_server` VALUES ('20022', '霸者 狂龙 测试服', '霸者 测试服', '101.132.168.191', '16122', '101.132.168.191', '16222', '0', '2020-03-20', '1', '20022', '0', '0', '霸者 测试服');
INSERT INTO `gms_game_server` VALUES ('20023', '天启测试服', '天启 测试服', '101.132.168.191', '16123', '101.132.168.191', '16223', '0', '2020-03-20', '1', '20023', '0', '0', '天启 测试服');
INSERT INTO `gms_game_server` VALUES ('20024', '裁决盛焰测试服', '裁决盛焰测试服', '101.132.168.191', '16124', '101.132.168.191', '16224', '0', '2020-03-20', '1', '20024', '0', '0', '裁决盛焰测试服');
INSERT INTO `gms_game_server` VALUES ('20025', '血色龙城测试服', '血色龙城测试服', '101.132.168.191', '16125', '101.132.168.191', '16225', '0', '2020-03-20', '1', '20025', '0', '0', '血色龙城测试服');
INSERT INTO `gms_game_server` VALUES ('20026', '测试服', '测试服', '101.132.168.191', '16126', '101.132.168.191', '16226', '0', '2020-03-24', '1', '20026', '0', '0', '测试服');
