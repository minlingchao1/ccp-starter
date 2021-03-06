
CREATE DATABASE ccp_admin DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
Use ccp_admin;
/*
 Navicat Premium Data Transfer

 Source Server         : ccp-admin
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost
 Source Database       : ccp_admin

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : utf-8

 Date: 02/25/2018 14:59:50 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `base_depart`
-- ----------------------------
DROP TABLE IF EXISTS `base_depart`;
CREATE TABLE `base_depart` (
  `id` varchar(36) NOT NULL COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '组织名称',
  `parent_id` varchar(36) DEFAULT NULL COMMENT '上级节点',
  `code` varchar(100) DEFAULT NULL COMMENT '编码',
  `path` varchar(4000) DEFAULT NULL COMMENT '路劲',
  `type` varchar(36) DEFAULT NULL COMMENT '部门类型',
  `crt_user_name` varchar(255) DEFAULT NULL COMMENT '创建人',
  `crt_user_id` varchar(36) DEFAULT NULL COMMENT '创建人ID',
  `crt_time` datetime DEFAULT NULL COMMENT '创建时间',
  `upd_user_name` varchar(255) DEFAULT NULL COMMENT '最后更新人',
  `upd_user_id` varchar(36) DEFAULT NULL COMMENT '最后更新人ID',
  `upd_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_code` (`code`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_depart`
-- ----------------------------
BEGIN;
INSERT INTO `base_depart` VALUES ('2b06ea24a3cf40659c183da3242cc669', '子节点', 'd8bb2fc8d51745458f77a78c42bf60ab', '1518502802626_tmp', null, null, '测试租户', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '2018-02-13 14:20:03', '测试租户', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '2018-02-13 14:20:03', null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0'), ('8782fcb72842440fa3254bf72717d7b0', '子节点', 'd8bb2fc8d51745458f77a78c42bf60ab', '1518500776414_tmp', null, null, '王小七', '59c28b8593c2472e99e54e3ed9b6efe8', '2018-02-13 13:46:17', '王小七', '59c28b8593c2472e99e54e3ed9b6efe8', '2018-02-13 13:46:17', null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0'), ('9a255e4ca80842d0bdb18029d916fb1e', '子节点', '8782fcb72842440fa3254bf72717d7b0', '1518505073066_tmp', null, null, '测试租户', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '2018-02-13 14:57:53', '测试租户', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '2018-02-13 14:57:53', null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0'), ('9f871185e4a648dbbdc7bb880c0eb90f', '子节点', '8782fcb72842440fa3254bf72717d7b0', '1518507609891_tmp', null, null, '测试租户', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '2018-02-13 15:40:10', '测试租户', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '2018-02-13 15:40:10', null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0'), ('a269b706b0b34ee89dd7e8e08e8514bc', '子节点', '8782fcb72842440fa3254bf72717d7b0', '1518507610091_tmp', null, null, '测试租户', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '2018-02-13 15:40:10', '测试租户', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '2018-02-13 15:40:10', null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0'), ('d583e7de6d2d48b78fb3c7dcb180cb1f', '普通租户', 'root', '1518438046753_tmp', null, 'group', 'Mr.AG', '1', '2018-02-12 20:20:47', 'Mr.AG', '1', '2018-02-12 20:26:26', null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24'), ('d8bb2fc8d51745458f77a78c42bf60ab', '测试租户部门', '-1', '1518449909887', null, 'group', '测试租户', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '2018-02-12 23:38:30', '测试租户', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '2018-02-12 23:40:46', null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0'), ('root', '超级租户部门', '-1', '1518437538385', null, null, 'Mr.AG', '1', '2018-02-12 20:12:18', 'Mr.AG', '1', '2018-02-12 20:13:55', null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
COMMIT;

-- ----------------------------
--  Table structure for `base_depart_user`
-- ----------------------------
DROP TABLE IF EXISTS `base_depart_user`;
CREATE TABLE `base_depart_user` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `depart_id` varchar(36) DEFAULT NULL,
  `tenant_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_depart_user`
-- ----------------------------
BEGIN;
INSERT INTO `base_depart_user` VALUES ('11c493ebe5fc4075952ace01901301f6', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', 'd583e7de6d2d48b78fb3c7dcb180cb1f', 'ac88ceb386aa4231b09bf472cb937c24'), ('5c5330952de94f4d8e9534b69616ec7d', '59c28b8593c2472e99e54e3ed9b6efe8', 'd8bb2fc8d51745458f77a78c42bf60ab', '1ec08564dcc344018d6aaa910068f0f0'), ('b16d09bd7c2148b1ad97e1e2115c1805', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', 'd8bb2fc8d51745458f77a78c42bf60ab', '1ec08564dcc344018d6aaa910068f0f0');
COMMIT;

-- ----------------------------
--  Table structure for `base_element`
-- ----------------------------
DROP TABLE IF EXISTS `base_element`;
CREATE TABLE `base_element` (
  `id` varchar(36) NOT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT '资源编码',
  `type` varchar(255) DEFAULT NULL COMMENT '资源类型',
  `name` varchar(255) DEFAULT NULL COMMENT '资源名称',
  `uri` varchar(255) DEFAULT NULL COMMENT '资源路径',
  `menu_id` varchar(255) DEFAULT NULL COMMENT '资源关联菜单',
  `parent_id` varchar(255) DEFAULT NULL,
  `path` varchar(2000) DEFAULT NULL COMMENT '资源树状检索路径',
  `method` varchar(10) DEFAULT NULL COMMENT '资源请求类型',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(36) DEFAULT NULL COMMENT '租户Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_element`
-- ----------------------------
BEGIN;
INSERT INTO `base_element` VALUES ('10', 'menuManager:btn_add', 'button', '新增', '/admin/menu', '6', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null, null), ('103593127199487794f9fd8fd573db5f', 'positionManager:btn_depart', 'button', '授权部门权限', '/admin/position/{*}/depart', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'PUT', null, '2018-02-11 12:44:45', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('11', 'menuManager:btn_edit', 'button', '编辑', '/admin/menu', '6', '', '', 'PUT', '', '2017-06-24 00:00:00', '', '', '', '', '', '', '', '', '', '', '', null), ('12', 'menuManager:btn_del', 'button', '删除', '/admin/menu', '6', '', '', 'DELETE', '', '2017-06-24 00:00:00', '', '', '', '', '', '', '', '', '', '', '', null), ('13', 'menuManager:btn_element_add', 'button', '新增元素', '/admin/element', '6', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null, null), ('14', 'menuManager:btn_element_edit', 'button', '编辑元素', '/admin/element', '6', null, null, 'PUT', '', null, null, null, null, null, null, null, null, null, null, null, null, null), ('15', 'menuManager:btn_element_del', 'button', '删除元素', '/admin/element', '6', null, null, 'DELETE', '', null, null, null, null, null, null, null, null, null, null, null, null, null), ('16', 'groupManager:btn_add', 'button', '新增', '/admin/group', '7', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null, null), ('17', 'groupManager:btn_edit', 'button', '编辑', '/admin/group', '7', null, null, 'PUT', '', null, null, null, null, null, null, null, null, null, null, null, null, null), ('18', 'groupManager:btn_del', 'button', '删除', '/admin/group', '7', null, null, 'DELETE', '', null, null, null, null, null, null, null, null, null, null, null, null, null), ('19', 'groupManager:btn_userManager', 'button', '分配用户', '/admin/group/{*}/user', '7', null, null, 'PUT', '', null, null, null, null, null, null, null, null, null, null, null, null, null), ('20', 'groupManager:btn_resourceManager', 'button', '分配权限', '/admin/group/{*}/authority', '7', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null, null), ('21', 'groupManager:menu', 'uri', '分配菜单', '/admin/group/{*}/authority/menu', '7', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null, null), ('21b3fe683a6040ed8c57423e55cd94a2', 'groupManager:authorize_menu', 'button', '菜单下发', '/admin/group/{*}/authorize/menu', '7', null, null, 'POST', null, '2018-02-12 14:54:57', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24'), ('22', 'groupManager:element', 'uri', '分配资源', '/admin/group/{*}/authority/element', '7', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null, null), ('23', 'userManager:view', 'uri', '查看', '/admin/user', '1', '', '', 'GET', '', '2017-06-26 00:00:00', '', '', '', '', '', '', '', '', '', '', '', null), ('24', 'menuManager:view', 'uri', '查看', '/admin/menu', '6', '', '', 'GET', '', '2017-06-26 00:00:00', '', '', '', '', '', '', '', '', '', '', '', null), ('24ecd755a1ea4cf6b76c8b72ea1858fe', 'tenantManager:btn_user', 'button', '授予用户', '/admin/tenant/user', '7574b969c9fa4e5895d6cc9c2b8a9a62', null, null, 'POST', null, '2018-02-12 21:05:48', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24'), ('27', 'menuManager:element_view', 'uri', '查看', '/admin/element', '6', null, null, 'GET', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('28', 'groupManager:view', 'uri', '查看', '/admin/group', '7', null, null, 'GET', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('2b7b250b2b7346759938a05da57d2fcb', 'tenantManager:view', 'uri', '查看租户', '/admin/tenant', '7574b969c9fa4e5895d6cc9c2b8a9a62', null, null, 'GET', null, '2018-02-09 12:26:27', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('3', 'userManager:btn_add', 'button', '新增', '/admin/user', '1', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null, null), ('32', 'groupTypeManager:view', 'uri', '查看', '/admin/groupType', '8', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null, null), ('33', 'groupTypeManager:btn_add', 'button', '新增', '/admin/groupType', '8', null, null, 'POST', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('34', 'groupTypeManager:btn_edit', 'button', '编辑', '/admin/groupType', '8', null, null, 'PUT', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('35', 'groupTypeManager:btn_del', 'button', '删除', '/admin/groupType', '8', null, null, 'DELETE', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('375b04fe927c44e88593d02670acd90f', 'groupManager:btn_authorizeManager', 'button', '权限下发', '/admin/group/{*}/authorize', '7', null, null, 'GET', null, '2018-02-12 14:52:55', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24'), ('39925b8263664c9e923f9c34f9bc2a37', 'positionManager:btn_user', 'button', '分配岗位人员', '/admin/position/{*}/user', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'PUT', null, '2018-02-10 16:49:57', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('4', 'userManager:btn_edit', 'button', '编辑', '/admin/user', '1', null, null, 'PUT', '', null, null, null, null, null, null, null, null, null, null, null, null, null), ('41', 'gateLogManager:view', 'button', '查看', '/admin/gateLog', '27', null, null, 'GET', '', '2017-07-01 00:00:00', '1', 'admin', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, null), ('42', 'serviceManager:view', 'uri', '查看', '/auth/service', '30', null, null, 'GET', null, '2017-12-26 20:17:42', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null), ('43', 'serviceManager:btn_add', 'button', '新增', '/auth/service', '30', null, null, 'POST', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('44', 'serviceManager:btn_edit', 'button', '编辑', '/auth/service', '30', null, null, 'PUT', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('45', 'serviceManager:btn_del', 'button', '删除', '/auth/service', '30', null, null, 'DELETE', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('46', 'serviceManager:btn_clientManager', 'button', '授权服务', '/auth/service/{*}/client', '30', null, null, 'POST', null, '2017-12-30 16:32:48', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null), ('47', 'serviceManager:btn_buidlProject', 'button', '构建工程', '/auth/generator/build', '30', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('48', 'dictTypeManager:view', 'uri', '查看字典目录', '/dict/dictType', '21', null, null, 'GET', null, '2017-12-26 20:17:42', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null), ('49', 'dictTypeManager:btn_add', 'button', '新增字典目录', '/dict/dictType', '21', null, null, 'POST', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('4ee4f57a2d92494abe2595bff4f32057', 'groupManager:authorize_element', 'button', '资源下发', '/admin/group/{*}/authorize/element', '7', null, null, 'POST', null, '2018-02-12 14:55:30', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24'), ('5', 'userManager:btn_del', 'button', '删除', '/admin/user', '1', null, null, 'DELETE', '', null, null, null, null, null, null, null, null, null, null, null, null, null), ('50', 'dictTypeManager:btn_edit', 'button', '编辑字典目录', '/dict/dictType', '21', null, null, 'PUT', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('51', 'dictTypeManager:btn_del', 'button', '删除字典目录', '/dict/dictType', '21', null, null, 'DELETE', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('52', 'dictValueManager:view', 'uri', '查看字典值', '/dict/dictValue', '21', null, null, 'GET', null, '2017-12-26 20:17:42', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null), ('53', 'dictValueManager:btn_add', 'button', '新增字典值', '/dict/dictValue', '21', null, null, 'POST', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('54', 'dictValueManager:btn_edit', 'button', '编辑字典值', '/dict/dictValue', '21', null, null, 'PUT', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('55', 'dictValueManager:btn_del', 'button', '删除字典值', '/dict/dictValue', '21', null, null, 'DELETE', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('56', 'departManager:view', 'uri', '查看部门值', '/admin/depart', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'GET', null, '2017-12-26 20:17:42', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null), ('57', 'departManager:btn_add', 'button', '新增部门值', '/admin/depart', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'POST', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('58', 'departManager:btn_edit', 'button', '编辑部门值', '/admin/depart', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'PUT', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('59', 'departManager:btn_del', 'button', '删除部门值', '/admin/depart', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'DELETE', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('6d7ea83bb71d476dbfbda2bcbc1a01bd', 'positionManager:btn_del', 'button', '删除岗位', '/admin/position', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'DELETE', null, '2018-02-10 16:47:45', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('73db20cb63e6439f80b2f992e64f545d', 'gatewayRouteManager:btn_edit', 'button', '编辑路由', '/auth/gatewayRoute', '68ee45b69c0f41cb9d6a5c33d46fb7a6', null, null, 'PUT', null, '2018-02-25 13:46:18', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24'), ('7a16202657c3478c8b4ece27a792e026', 'positionManager:btn_group', 'button', '分配岗位角色', '/admin/position/{*}/group', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'PUT', null, '2018-02-10 16:51:31', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('8b5ff030c76341059a335e0653fef5ea', 'departManager:btn_user_del', 'button', '删除部门人员', '/admin/depart/user', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'DELETE', null, '2018-02-10 16:45:10', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('9', 'menuManager:element', 'uri', '按钮页面', '/admin/element', '6', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null, null), ('a03cac538f794958bc7fa6458f85b8ae', 'tenantManager:btn_del', 'uri', '删除租户', '/admin/tenant', '7574b969c9fa4e5895d6cc9c2b8a9a62', null, null, 'DELETE', null, '2018-02-09 12:28:42', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('c6469be83d8e4d5ca404b46b347f7d4c', 'positionManager:btn_add', 'button', '新增岗位', '/admin/position', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'POST', null, '2018-02-10 16:47:23', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('cac49646909c4750b23f223f53eafc5b', 'positionManager:btn_edit', 'button', '编辑岗位', '/admin/posision', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'PUT', null, '2018-02-10 16:48:24', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('cdf65eea98fa4679bd3f1041d5c06d68', 'gatewayRouteManager:view', 'uri', '查看路由', '/auth/gatewayRoute', '68ee45b69c0f41cb9d6a5c33d46fb7a6', null, null, 'GET', null, '2018-02-25 13:42:23', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24'), ('d26625c13796423c8353176197cd7f0d', 'gatewayRouteManager:btn_del', 'uri', '禁用路由', '/auth/gatewayRoute', '68ee45b69c0f41cb9d6a5c33d46fb7a6', null, null, 'DELETE', null, '2018-02-25 13:47:19', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24'), ('d2773b3568c6438c8f9cc21b06b660ee', 'departManager:btn_user_add', 'button', '新增部门人员', '/admin/depart/user', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'POST', null, '2018-02-10 16:44:07', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('d6b714eff47a42d0a654e55c39304dd5', 'tenantManager:btn_edit', 'button', '编辑租户', '/admin/tenant', '7574b969c9fa4e5895d6cc9c2b8a9a62', null, null, 'PUT', null, '2018-02-09 12:29:26', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('eddad1f3d2d54ba0ac50e8c4781764cb', 'tenantManager:btn_add', 'button', '新增租户', '/admin/tenant', '7574b969c9fa4e5895d6cc9c2b8a9a62', null, null, 'POST', null, '2018-02-09 12:27:11', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('ef73cc9bf70d448caf72e3f45015700a', 'positionManager:view', 'uri', '查看岗位', '/admin/depart', 'b5211cc69d234b28a97f27e63edc9a58', null, null, 'GET', null, '2018-02-10 16:48:49', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('f7b1d97edd98407aab36a01d290683ee', 'gatewayRouteManager:btn_add', 'button', '新建路由', '/auth/gatewayRoute', '68ee45b69c0f41cb9d6a5c33d46fb7a6', null, null, 'POST', null, '2018-02-25 13:43:16', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
COMMIT;

-- ----------------------------
--  Table structure for `base_group`
-- ----------------------------
DROP TABLE IF EXISTS `base_group`;
CREATE TABLE `base_group` (
  `id` varchar(36) NOT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT '角色编码',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `parent_id` varchar(36) NOT NULL COMMENT '上级节点',
  `path` varchar(2000) DEFAULT NULL COMMENT '树状关系',
  `type` char(1) DEFAULT NULL COMMENT '类型',
  `group_type` varchar(36) NOT NULL COMMENT '角色组类型',
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user_id` varchar(255) DEFAULT NULL,
  `crt_user_name` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user_id` varchar(255) DEFAULT NULL,
  `upd_user_name` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(36) DEFAULT NULL COMMENT '租户Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_group`
-- ----------------------------
BEGIN;
INSERT INTO `base_group` VALUES ('258651cfd4ca41cbaa70d1b233659b5c', 'commonAdmin', '普通租户管理员', '-1', '/commonAdmin', null, 'role', '普通租户管理员', '2018-02-12 23:20:54', '1', 'Mr.AG', '2018-02-12 23:20:54', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24'), ('366af0a7fd79453fbe54c0d24917ec4b', 'dongshiz', '董事长', '-1', '/dongshiz', null, 'org', null, '2018-02-13 00:04:27', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', '2018-02-13 00:04:27', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', null, null, null, null, null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0');
COMMIT;

-- ----------------------------
--  Table structure for `base_group_leader`
-- ----------------------------
DROP TABLE IF EXISTS `base_group_leader`;
CREATE TABLE `base_group_leader` (
  `id` varchar(36) NOT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(36) DEFAULT NULL COMMENT '租户Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_group_leader`
-- ----------------------------
BEGIN;
INSERT INTO `base_group_leader` VALUES ('a92d887fa6814c0e865e3a7071bbdeab', '258651cfd4ca41cbaa70d1b233659b5c', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24');
COMMIT;

-- ----------------------------
--  Table structure for `base_group_member`
-- ----------------------------
DROP TABLE IF EXISTS `base_group_member`;
CREATE TABLE `base_group_member` (
  `id` varchar(36) NOT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(36) DEFAULT NULL COMMENT '租户Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `base_group_type`
-- ----------------------------
DROP TABLE IF EXISTS `base_group_type`;
CREATE TABLE `base_group_type` (
  `id` varchar(32) NOT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT '编码',
  `name` varchar(255) DEFAULT NULL COMMENT '类型名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `crt_time` datetime DEFAULT NULL COMMENT '创建时间',
  `crt_user` varchar(255) DEFAULT NULL COMMENT '创建人ID',
  `crt_name` varchar(255) DEFAULT NULL COMMENT '创建人',
  `crt_host` varchar(255) DEFAULT NULL COMMENT '创建主机',
  `upd_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `upd_user` varchar(255) DEFAULT NULL COMMENT '最后更新人ID',
  `upd_name` varchar(255) DEFAULT NULL COMMENT '最后更新人',
  `upd_host` varchar(255) DEFAULT NULL COMMENT '最后更新主机',
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(36) DEFAULT NULL COMMENT '租户Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_group_type`
-- ----------------------------
BEGIN;
INSERT INTO `base_group_type` VALUES ('free', 'free', '自定义类型', 'sad', null, null, null, null, '2018-01-22 12:59:12', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null), ('org', 'org', '岗位组（不可删）', null, null, null, null, null, '2017-08-25 17:52:43', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null), ('role', 'role', '角色组（不可删）', 'role', null, null, null, null, '2017-08-25 17:52:37', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `base_menu`
-- ----------------------------
DROP TABLE IF EXISTS `base_menu`;
CREATE TABLE `base_menu` (
  `id` varchar(36) NOT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT '路径编码',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `parent_id` varchar(36) NOT NULL COMMENT '父级节点',
  `href` varchar(255) DEFAULT NULL COMMENT '资源路径',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `type` char(10) DEFAULT NULL,
  `order_num` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `path` varchar(500) DEFAULT NULL COMMENT '菜单上下级关系',
  `enabled` char(1) DEFAULT NULL COMMENT '启用禁用',
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(36) DEFAULT NULL COMMENT '租户Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_menu`
-- ----------------------------
BEGIN;
INSERT INTO `base_menu` VALUES ('1', 'userManager', '用户管理', '5', '/admin/user', 'user', 'menu', '1', '', '/adminSys/baseManager/userManager', null, null, null, null, null, '2018-01-23 15:35:50', '1', 'Mr.AG', '127.0.0.1', '_import(\'admin/user/index\')', null, null, null, null, null, null, null, null), ('13', 'adminSys', '权限管理系统', '-1', '/base', 'setting', 'dirt', '0', '', '/adminSys', null, null, null, null, null, '2018-02-02 19:48:22', '1', 'Mr.AG', '127.0.0.1', 'Layout', null, null, null, null, null, null, null, null), ('21', 'dictManager', '数据字典', '5', '', 'documentation', 'menu', '5', '', '/adminSys/baseManager/dictManager', null, null, null, null, null, '2018-02-04 14:48:47', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('27', 'gateLogManager', '操作日志', '5', '/admin/gateLog', 'log', 'menu', '6', '', '/adminSys/baseManager/gateLogManager', null, '2017-07-01 00:00:00', '1', 'admin', '0:0:0:0:0:0:0:1', '2017-09-05 22:32:55', '1', 'Mr.AG', '127.0.0.1', '_import(\'admin/gateLog/index\')', null, null, null, null, null, null, null, null), ('29', 'authManager', '服务管理', '13', '/auth', 'service', 'dirt', '3', '服务权限管理', '/adminSys/authManager', null, '2017-12-26 19:54:45', '1', 'Mr.AG', '127.0.0.1', '2018-02-02 19:48:42', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null), ('30', 'serviceManager', '服务权限管理', '29', '/auth/service', 'client', 'menu', '1', '服务管理', '/adminSys/authManager/serviceManager', null, '2017-12-26 19:56:06', '1', 'Mr.AG', '127.0.0.1', '2018-02-02 19:48:46', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null), ('31', 'monitorManager', '监控运维管理', '13', null, 'setting', 'dirt', '3', null, '/adminSys/monitorManager', null, '2018-01-07 11:35:19', '1', 'Mr.AG', '127.0.0.1', '2018-02-04 22:33:41', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null), ('33', 'serviceMonitorManager', '服务监控管理', '31', null, 'client', 'menu', '2', null, '/adminSys/monitorManager/serviceMonitorManager', null, '2018-01-07 11:38:13', '1', 'Mr.AG', '127.0.0.1', '2018-01-07 11:38:29', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null), ('34', 'serviceEurekaManager', '服务注册管理', '31', null, 'client', 'menu', '1', null, '/adminSys/monitorManager/serviceEurekaManager', null, '2018-01-07 12:20:31', '1', 'Mr.AG', '127.0.0.1', '2018-01-07 12:20:31', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null), ('35', 'serviceZipkinManager', '服务链路监控', '31', null, 'client', 'menu', '3', null, '/adminSys/monitorManager/serviceZipkinManager', null, '2018-01-07 17:58:14', '1', 'Mr.AG', '127.0.0.1', '2018-01-07 17:58:14', '1', 'Mr.AG', '127.0.0.1', null, null, null, null, null, null, null, null, null), ('5', 'baseManager', '基础配置管理', '13', '/admin', 'setting', 'dirt', '0', '', '/adminSys/baseManager', null, null, null, null, null, '2018-02-02 19:48:27', '1', 'Mr.AG', '127.0.0.1', 'Layout', null, null, null, null, null, null, null, null), ('6', 'menuManager', '菜单管理', '5', '/admin/menu', 'category', 'menu', '2', '', '/adminSys/baseManager/menuManager', null, null, null, null, null, '2017-09-05 21:10:25', '1', 'Mr.AG', '127.0.0.1', '_import(\'admin/menu/index\')', null, null, null, null, null, null, null, null), ('68ee45b69c0f41cb9d6a5c33d46fb7a6', 'gatewayManager', '网关路由管理', '29', null, 'navigate', 'menu', '3', null, '/adminSys/authManager/gatewayManager', null, '2018-02-25 13:30:49', '1', 'Mr.AG', null, '2018-02-25 13:30:49', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24'), ('7', 'groupManager', '角色权限管理', '5', '/admin/group', 'group_fill', 'menu', '3', '', '/adminSys/baseManager/groupManager', null, null, null, null, null, '2017-09-05 21:11:34', '1', 'Mr.AG', '127.0.0.1', 'import(\'admin/group/index\')', null, null, null, null, null, null, null, null), ('7494902cc9e948668e51f4596042b084', 'apiManager', '服务接口文档', '29', '/auth/api', 'documentation', 'menu', '2', null, '/adminSys/authManager/apiManager', null, '2018-02-07 13:28:05', '1', 'Mr.AG', null, '2018-02-07 13:30:42', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('7574b969c9fa4e5895d6cc9c2b8a9a62', 'tenantManager', '租户管理', '5', '/admin/tenantManager', 'tenant', 'menu', '7', null, '/adminSys/baseManager/tenantManager', null, '2018-02-09 08:56:43', '1', 'Mr.AG', null, '2018-02-12 13:23:54', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('7a0a75752c7d422abd2e30b7aad744d7', 'orgManager', '组织部门管理', '13', '/org', 'org', 'dirt', '2', null, '/adminSys/orgManager', null, '2018-02-04 22:33:33', '1', 'Mr.AG', null, '2018-02-04 22:35:57', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null), ('8', 'groupTypeManager', '角色类型管理', '5', '/admin/groupType', 'group', 'menu', '4', '', '/adminSys/baseManager/groupTypeManager', null, null, null, null, null, '2017-09-05 21:12:28', '1', 'Mr.AG', '127.0.0.1', '_import(\'admin/groupType/index\')', null, null, null, null, null, null, null, null), ('b5211cc69d234b28a97f27e63edc9a58', 'departManager', '部门管理', '7a0a75752c7d422abd2e30b7aad744d7', '/org/depart', 'depart', 'menu', '1', null, '/adminSys/orgManager/departManager', null, '2018-02-04 22:40:01', '1', 'Mr.AG', null, '2018-02-04 22:40:01', '1', 'Mr.AG', null, null, null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `base_position`
-- ----------------------------
DROP TABLE IF EXISTS `base_position`;
CREATE TABLE `base_position` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '职位',
  `code` varchar(100) DEFAULT NULL COMMENT '编码',
  `depart_id` varchar(36) DEFAULT NULL COMMENT '部门ID',
  `type` varchar(36) DEFAULT NULL COMMENT '类型',
  `crt_user_name` varchar(255) DEFAULT NULL COMMENT '创建人',
  `crt_user_id` varchar(36) DEFAULT NULL COMMENT '创建人ID',
  `crt_time` datetime DEFAULT NULL COMMENT '创建时间',
  `upd_user_name` varchar(255) DEFAULT NULL COMMENT '最后更新人',
  `upd_user_id` varchar(36) DEFAULT NULL COMMENT '最后更新人ID',
  `upd_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_code` (`code`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_position`
-- ----------------------------
BEGIN;
INSERT INTO `base_position` VALUES ('9c2f9ab789634c2ca11456a1f28b3545', '12', '12', 'root', null, 'Mr.AG', '1', '2018-02-15 10:57:28', 'Mr.AG', '1', '2018-02-15 10:57:28', null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24'), ('c5f51dcdb64f4706acb4caa867359721', '董事长', 'dongshiz', 'd8bb2fc8d51745458f77a78c42bf60ab', null, '测试租户', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '2018-02-13 00:14:19', '测试租户', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '2018-02-13 00:14:19', null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0');
COMMIT;

-- ----------------------------
--  Table structure for `base_position_depart`
-- ----------------------------
DROP TABLE IF EXISTS `base_position_depart`;
CREATE TABLE `base_position_depart` (
  `id` varchar(36) NOT NULL,
  `position_id` varchar(36) DEFAULT NULL,
  `depart_id` varchar(36) DEFAULT NULL,
  `tenant_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_position_depart`
-- ----------------------------
BEGIN;
INSERT INTO `base_position_depart` VALUES ('06fcf4a245574548b26483a7935d6b80', 'c5f51dcdb64f4706acb4caa867359721', '2b06ea24a3cf40659c183da3242cc669', '1ec08564dcc344018d6aaa910068f0f0'), ('52e4769712644574b510375d2cd67193', '9c2f9ab789634c2ca11456a1f28b3545', 'root', 'ac88ceb386aa4231b09bf472cb937c24'), ('a3b52b00c9db421dac71a0cf8515292f', 'c5f51dcdb64f4706acb4caa867359721', '8782fcb72842440fa3254bf72717d7b0', '1ec08564dcc344018d6aaa910068f0f0'), ('a56fa87a91024418bcb9c455eb6dbe4a', 'c5f51dcdb64f4706acb4caa867359721', 'a269b706b0b34ee89dd7e8e08e8514bc', '1ec08564dcc344018d6aaa910068f0f0'), ('e9e7ae7b39ec4b1095005a1d58a96db0', 'c5f51dcdb64f4706acb4caa867359721', '6cc8e1c706ec4119afbf12bf1da2b9ad', '1ec08564dcc344018d6aaa910068f0f0');
COMMIT;

-- ----------------------------
--  Table structure for `base_position_group`
-- ----------------------------
DROP TABLE IF EXISTS `base_position_group`;
CREATE TABLE `base_position_group` (
  `id` varchar(36) NOT NULL,
  `position_id` varchar(36) DEFAULT NULL,
  `group_id` varchar(36) DEFAULT NULL,
  `tenant_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_position_group`
-- ----------------------------
BEGIN;
INSERT INTO `base_position_group` VALUES ('4eb85c39babc44b5ab3c0dcc569068b2', 'ba87c899a1404f43bb3caa3c072a88cc', '366af0a7fd79453fbe54c0d24917ec4b', '1ec08564dcc344018d6aaa910068f0f0'), ('d020f0f465104f5ca32b1a00a3a81836', 'c5f51dcdb64f4706acb4caa867359721', '366af0a7fd79453fbe54c0d24917ec4b', '1ec08564dcc344018d6aaa910068f0f0');
COMMIT;

-- ----------------------------
--  Table structure for `base_position_user`
-- ----------------------------
DROP TABLE IF EXISTS `base_position_user`;
CREATE TABLE `base_position_user` (
  `id` varchar(36) NOT NULL,
  `position_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `tenant_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_position_user`
-- ----------------------------
BEGIN;
INSERT INTO `base_position_user` VALUES ('30366d57e3914cdeaff3676e5d3e1d61', 'ba87c899a1404f43bb3caa3c072a88cc', '59c28b8593c2472e99e54e3ed9b6efe8', '1ec08564dcc344018d6aaa910068f0f0');
COMMIT;

-- ----------------------------
--  Table structure for `base_resource_authority`
-- ----------------------------
DROP TABLE IF EXISTS `base_resource_authority`;
CREATE TABLE `base_resource_authority` (
  `id` varchar(36) NOT NULL,
  `authority_id` varchar(255) DEFAULT NULL COMMENT '角色ID',
  `authority_type` varchar(255) DEFAULT NULL COMMENT '角色类型',
  `resource_id` varchar(255) DEFAULT NULL COMMENT '资源ID',
  `resource_type` varchar(255) DEFAULT NULL COMMENT '资源类型',
  `parent_id` varchar(255) DEFAULT NULL,
  `path` varchar(2000) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(36) DEFAULT NULL COMMENT '租户Id',
  `type` varchar(1) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_resource_authority`
-- ----------------------------
BEGIN;
INSERT INTO `base_resource_authority` VALUES ('0757704647af4651ab9e19daa52f5cb7', '366af0a7fd79453fbe54c0d24917ec4b', 'group', '1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('078b80792ecb4754b5566d7b31537206', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '-1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('0b65c6e846d44793a7a411b6d6c2e8d5', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '5', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('0c9ed5b75eff4e0da05ca80e47d88ad3', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '7a16202657c3478c8b4ece27a792e026', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('0e35f3f47d07402daa82c13e4bd1eeea', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '57', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('0fa164ab87c540ca92e81f7bc3f1ca56', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '28', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('0fbd2b1a652b4450aa6eb3895085e876', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('13315a1c9ad54e9784fbf1360f3ea362', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '4ee4f57a2d92494abe2595bff4f32057', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('13de9dce30a44f7c8479577506def590', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '4ee4f57a2d92494abe2595bff4f32057', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('1587b15affaa4c89a7310769ccad7aef', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '21b3fe683a6040ed8c57423e55cd94a2', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('1b0c9d3cf9a04317b9b2b6818b3d1900', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '-1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('1b31971f38e545629c656d64d9d2d0cd', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '56', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('1f7e43d004004e5493b6c5e66c517536', '258651cfd4ca41cbaa70d1b233659b5c', 'group', 'cac49646909c4750b23f223f53eafc5b', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('20643a004e8c4751a980649485989499', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '21b3fe683a6040ed8c57423e55cd94a2', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('21471cad403a4bb883864b67912893b3', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '6d7ea83bb71d476dbfbda2bcbc1a01bd', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('25c45a4e2b48442491405a92d5660c8e', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '8b5ff030c76341059a335e0653fef5ea', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('25c85684ec83485db4fc2db8300e5879', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '103593127199487794f9fd8fd573db5f', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('2965a0d840e24d4f8e71685231072b2c', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '13', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('29c127f85ceb49f89124240eb034760a', '258651cfd4ca41cbaa70d1b233659b5c', 'group', 'c6469be83d8e4d5ca404b46b347f7d4c', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('2a13e650f13e4225bd3cadd4a2b8aa0c', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '6', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('2de45274d45f46138b721eff803d6057', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '7a0a75752c7d422abd2e30b7aad744d7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('2e3f2f4ca32f46948cc5066651f50e6f', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('2f643a3c464146d2b4796f405f87a049', '366af0a7fd79453fbe54c0d24917ec4b', 'group', 'b5211cc69d234b28a97f27e63edc9a58', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('31263c0e45d843bbb2d3c27136c4920c', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '22', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('32fd0f08ed77450c89e161cd01c5dcfb', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '48', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('3421b7806bf049309762b3e5ef30d52c', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '19', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('35e79f43a44a430dba65fd0a0cfa6691', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '41', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('3e7dfb6d37d846d697bdd3ec1a32eb94', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '56', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('3f306f8e4f6c407c83216883dc59b7f2', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '103593127199487794f9fd8fd573db5f', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('43290fae8a7d412a9212e71381da0e0f', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '-1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('469e8c81b2704adc8c4b0819eee892d3', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '17', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('4f144c816618461c824f5936e8f53cd8', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '3', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('5677312b4e0743f6b53c88d0325e7e05', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '27', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('5842776d4e2f424292f0028de1120fda', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '5', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('5bf1497ac5e6478d8abefc34cacdce76', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('5d013d261b1543cb82fd899967832543', '258651cfd4ca41cbaa70d1b233659b5c', 'group', 'b5211cc69d234b28a97f27e63edc9a58', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('6116121c0283433a8b74ff25c70a8700', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '21', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('69388de8e28c4f6f9d0d8186edc18c38', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '103593127199487794f9fd8fd573db5f', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('6969f9f5b4b24e96be9793971d85dd91', '366af0a7fd79453fbe54c0d24917ec4b', 'group', '23', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('6b6114349f8d4395a03ab769a299ea43', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '28', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('6d6f8b0c827d466b814ba39d4a5a8ccf', '366af0a7fd79453fbe54c0d24917ec4b', 'group', '7a0a75752c7d422abd2e30b7aad744d7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('6fbbfa5c8d96436c881ed1eeb2a4b364', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '5', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('70345def316a4721a95beb6266c4e621', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '20', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('74ab7b0ea38c4efeaab7b85cf0601280', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '16', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('7538845fffa144a09b5cc804eea7fa74', '366af0a7fd79453fbe54c0d24917ec4b', 'group', '-1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('761236db28ba4143a5dd0e28774ca319', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '5', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('765d458acb0c4b5cbb9afafa6ebab24c', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '7a16202657c3478c8b4ece27a792e026', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('766f31aafdb44ae6872b1401d1581a47', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '4', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('78791a03c6b44a5e8a7a0518d1005964', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('7925a385408a4a21a99182268a9fe1ae', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '57', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('7c8e84550571470da9dcd79860c5260e', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '52', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('7f4938bf77084207a2c349d20cc9d826', '258651cfd4ca41cbaa70d1b233659b5c', 'group', 'cac49646909c4750b23f223f53eafc5b', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('851abc264ac84b568fedc7d38db08eed', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '21', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('8e6ad67a2f1b443e85f84e5f037dea33', '366af0a7fd79453fbe54c0d24917ec4b', 'group', '59', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('8edbac86de834d40a67204f162815f12', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '8b5ff030c76341059a335e0653fef5ea', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('90e7de53222a4a048d14d6109ba4be5f', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '39925b8263664c9e923f9c34f9bc2a37', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('94dd147289a3430bb037d7dd0ef2a872', '366af0a7fd79453fbe54c0d24917ec4b', 'group', '57', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('95281a2ba60c48b49a39552457e677c8', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '5', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('9b2a306b36a149a386d9c2aa78e45036', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '6', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('a1a13b751b914d749678579e4c9a0195', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '18', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('a4358c504e4741af8f1fac0c4f288108', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '21', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('a735ad8b48c1486ea383dee07bc627aa', '258651cfd4ca41cbaa70d1b233659b5c', 'group', 'd2773b3568c6438c8f9cc21b06b660ee', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('aa3b1922117847f8905b6b13182696c7', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '6d7ea83bb71d476dbfbda2bcbc1a01bd', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('aaa5247869d54ee6873dd470badf6960', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '375b04fe927c44e88593d02670acd90f', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('afcc73fc556e40a39af61a24014455ff', '366af0a7fd79453fbe54c0d24917ec4b', 'group', '56', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('b07231d0a836470b9daa6e233f77dec9', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('b399763b839a481abfbf3b759710fc85', '258651cfd4ca41cbaa70d1b233659b5c', 'group', 'd2773b3568c6438c8f9cc21b06b660ee', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('b39bd9e4219244b498bc96f321f51e0d', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '23', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('b4fd332d932e4bcc86620d3c9d4e13e7', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '13', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('b59edec22f664787aa4186f2867908b9', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '58', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('b5f00cb818f24dd5a241009aa71c030e', '366af0a7fd79453fbe54c0d24917ec4b', 'group', '58', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('bd9395bb258b401b95e712a698724d24', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '3', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('c17441b541ef40d19faefcd6a30160a5', '366af0a7fd79453fbe54c0d24917ec4b', 'group', '23', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('c2571d38498e45fcb7fcd06f96174608', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '16', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('c269301853054f6c871479090ce8f476', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '7a0a75752c7d422abd2e30b7aad744d7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('c344b74a0c4c454082cc652af43464d3', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '7a0a75752c7d422abd2e30b7aad744d7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('c420da58959146ec989933575b3c1d87', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '39925b8263664c9e923f9c34f9bc2a37', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('c70e0c9fe1cc487c8c8b1e7c3f2ab268', '366af0a7fd79453fbe54c0d24917ec4b', 'group', '5', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('c8ba65c87dcd40e3adc27fd9270d85b2', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '4', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('cb0ac5ca7a924f13b23460d6936295de', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '23', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('d13e961443fc4f56817ae155792e5ed6', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '59', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('d4b0c3ddb45d484a8a17d2a038b82161', '366af0a7fd79453fbe54c0d24917ec4b', 'group', '13', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('da2c26d274634f0c8ab393ad852a8b09', '258651cfd4ca41cbaa70d1b233659b5c', 'group', 'c6469be83d8e4d5ca404b46b347f7d4c', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('dc7b8f3712b546d484e10bab3c0812c8', '258651cfd4ca41cbaa70d1b233659b5c', 'group', 'b5211cc69d234b28a97f27e63edc9a58', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('dfcceb9c306a432fb7e794603dfb9339', '258651cfd4ca41cbaa70d1b233659b5c', 'group', 'b5211cc69d234b28a97f27e63edc9a58', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('e19bf5b10e8f431b9c01e0213fa39b41', '258651cfd4ca41cbaa70d1b233659b5c', 'group', 'ef73cc9bf70d448caf72e3f45015700a', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('e1b31c5828ce4d3485c9d35de0752dca', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '22', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('e1bf257da1314d78b8ee2c92f87c13ec', '366af0a7fd79453fbe54c0d24917ec4b', 'group', '3', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('e43ac2d407d14891a5e55d815f144338', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '17', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('e6f8da9991d543c699e108f06d7d805f', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('e72e2b709b4c4e5f8f65ee9dd21fd057', '258651cfd4ca41cbaa70d1b233659b5c', 'group', 'ef73cc9bf70d448caf72e3f45015700a', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('f20a0ecdbd7c41888c8ec293a3a32034', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '13', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('f3b8b7d4fd224b92a182f5edac3b0522', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '19', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('f3bf9ea034e444c08b7ca2c3a86d0c7e', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '59', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('f7f7d1e5ffb84c38909e99a6940ca03e', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '18', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('f96a9425b188416e9b7165c07ed5579e', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '20', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0'), ('faebfb6f224743f89db2c6e4b42ef568', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '58', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1'), ('fb0811cdcb2743a0abaccab0033e680b', '258651cfd4ca41cbaa70d1b233659b5c', 'group', '375b04fe927c44e88593d02670acd90f', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `base_tenant`
-- ----------------------------
DROP TABLE IF EXISTS `base_tenant`;
CREATE TABLE `base_tenant` (
  `id` varchar(36) NOT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT '编码',
  `name` varchar(255) DEFAULT NULL COMMENT '最后更新时间',
  `crt_user_name` varchar(255) DEFAULT NULL COMMENT '创建人',
  `crt_user_id` varchar(36) DEFAULT NULL COMMENT '创建人ID',
  `crt_time` datetime DEFAULT NULL COMMENT '创建时间',
  `upd_user_name` varchar(255) DEFAULT NULL COMMENT '最后更新人',
  `upd_user_id` varchar(36) DEFAULT NULL COMMENT '最后更新人ID',
  `upd_time` datetime DEFAULT NULL COMMENT '最后更新时间',
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `is_super_tenant` varchar(1) DEFAULT NULL COMMENT '是否超级租户',
  `tenant_id` varchar(36) DEFAULT NULL,
  `owner` varchar(36) DEFAULT NULL COMMENT '拥有者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租户表';

-- ----------------------------
--  Records of `base_tenant`
-- ----------------------------
BEGIN;
INSERT INTO `base_tenant` VALUES ('1ec08564dcc344018d6aaa910068f0f0', 'testTenant', '测试租户', 'Mr.AG', '1', '2018-02-12 15:30:54', 'Mr.AG', '1', '2018-02-15 09:58:39', null, null, null, null, '测试租户', '0', 'ac88ceb386aa4231b09bf472cb937c24', 'a1a2cb17b4f24e50bbde2f1b8a233bcb'), ('ac88ceb386aa4231b09bf472cb937c24', 'superTenant', '超级租户', 'Mr.AG', '1', '2018-02-09 16:31:20', 'Mr.AG', '1', '2018-02-15 10:57:13', null, null, null, null, '超级租户', '1', 'ac88ceb386aa4231b09bf472cb937c24', '1');
COMMIT;

-- ----------------------------
--  Table structure for `base_user`
-- ----------------------------
DROP TABLE IF EXISTS `base_user`;
CREATE TABLE `base_user` (
  `id` varchar(36) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `tel_phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` varchar(16) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user_id` varchar(255) DEFAULT NULL,
  `crt_user_name` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user_id` varchar(255) DEFAULT NULL,
  `upd_user_name` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  `tenant_id` varchar(36) DEFAULT NULL COMMENT '租户Id',
  `is_deleted` char(1) DEFAULT NULL COMMENT '是否删除',
  `is_disabled` char(1) DEFAULT NULL COMMENT '是否作废',
  `depart_id` varchar(36) DEFAULT NULL COMMENT '默认部门',
  `is_super_admin` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_usernane` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_user`
-- ----------------------------
BEGIN;
INSERT INTO `base_user` VALUES ('1', 'admin', '$2a$12$S/yLlj9kzi5Dgsz97H4rAekxrPlk/10eXp1lUJcAVAx.2M9tOpWie', 'Mr.AG', '', null, '', null, '', '男', null, null, '', null, null, null, '2018-02-15 13:46:33', '1', 'Mr.AG', null, null, null, null, null, null, null, null, 'ac88ceb386aa4231b09bf472cb937c24', '0', '0', 'root', '1'), ('59c28b8593c2472e99e54e3ed9b6efe8', 'wxiaoqi', '$2a$15$1WefWbAodMNhdx8.iz3eVOLn4iKPVqytY18aqGgHGZQ9NWtuk19Di', '王小七', null, null, null, null, null, '男', null, null, null, '2018-02-12 23:41:35', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', '2018-02-12 23:54:07', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', null, null, null, null, null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0', '0', '0', 'd8bb2fc8d51745458f77a78c42bf60ab', '0'), ('a1a2cb17b4f24e50bbde2f1b8a233bcb', 'tenant', '$2a$15$PBhj/OtlRxC2YNGcfyyO2.a0sCWrbT2xtsikW6M4yDOg8UuUnYhUu', '测试租户', null, null, null, null, null, '男', null, null, null, '2018-02-12 20:27:14', '1', 'Mr.AG', '2018-02-12 23:54:12', 'a1a2cb17b4f24e50bbde2f1b8a233bcb', '测试租户', null, null, null, null, null, null, null, null, '1ec08564dcc344018d6aaa910068f0f0', '0', '0', 'd8bb2fc8d51745458f77a78c42bf60ab', '0');
COMMIT;

-- ----------------------------
--  Table structure for `gate_log`
-- ----------------------------
DROP TABLE IF EXISTS `gate_log`;
CREATE TABLE `gate_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `tenant_id` varchar(36) DEFAULT NULL COMMENT '租户Id',
  `menu` varchar(255) DEFAULT NULL COMMENT '菜单',
  `opt` varchar(255) DEFAULT NULL COMMENT '操作',
  `uri` varchar(255) DEFAULT NULL COMMENT '资源路径',
  `crt_time` datetime DEFAULT NULL COMMENT '操作时间',
  `crt_user` varchar(255) DEFAULT NULL COMMENT '操作人ID',
  `crt_name` varchar(255) DEFAULT NULL COMMENT '操作人',
  `crt_host` varchar(255) DEFAULT NULL COMMENT '操作主机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4;

SET FOREIGN_KEY_CHECKS = 1;
