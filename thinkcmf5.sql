/*
 Navicat Premium Data Transfer

 Source Server         : wampLocalhost
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : thinkcmf5

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 26/03/2018 17:10:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cmf_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_admin_menu`;
CREATE TABLE `cmf_admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父菜单id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `controller`(`controller`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 171 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_admin_menu
-- ----------------------------
INSERT INTO `cmf_admin_menu` VALUES (1, 0, 0, 0, 20, 'admin', 'Plugin', 'default', '', '插件中心', 'cloud', '插件中心');
INSERT INTO `cmf_admin_menu` VALUES (2, 1, 1, 1, 10000, 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理');
INSERT INTO `cmf_admin_menu` VALUES (3, 2, 1, 0, 10000, 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理');
INSERT INTO `cmf_admin_menu` VALUES (4, 2, 2, 0, 10000, 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序');
INSERT INTO `cmf_admin_menu` VALUES (5, 2, 1, 0, 10000, 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子');
INSERT INTO `cmf_admin_menu` VALUES (6, 0, 0, 1, 0, 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口');
INSERT INTO `cmf_admin_menu` VALUES (7, 6, 1, 1, 50, 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理');
INSERT INTO `cmf_admin_menu` VALUES (8, 7, 1, 0, 10000, 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接');
INSERT INTO `cmf_admin_menu` VALUES (9, 7, 2, 0, 10000, 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES (10, 7, 1, 0, 10000, 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接');
INSERT INTO `cmf_admin_menu` VALUES (11, 7, 2, 0, 10000, 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存');
INSERT INTO `cmf_admin_menu` VALUES (12, 7, 2, 0, 10000, 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接');
INSERT INTO `cmf_admin_menu` VALUES (13, 7, 2, 0, 10000, 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序');
INSERT INTO `cmf_admin_menu` VALUES (14, 7, 2, 0, 10000, 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏');
INSERT INTO `cmf_admin_menu` VALUES (15, 6, 1, 1, 10, 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置');
INSERT INTO `cmf_admin_menu` VALUES (16, 15, 2, 0, 10000, 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存');
INSERT INTO `cmf_admin_menu` VALUES (17, 15, 1, 0, 10000, 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板');
INSERT INTO `cmf_admin_menu` VALUES (18, 15, 2, 0, 10000, 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交');
INSERT INTO `cmf_admin_menu` VALUES (19, 15, 1, 0, 10000, 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试');
INSERT INTO `cmf_admin_menu` VALUES (20, 6, 1, 0, 10000, 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理');
INSERT INTO `cmf_admin_menu` VALUES (21, 20, 1, 0, 10000, 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表');
INSERT INTO `cmf_admin_menu` VALUES (22, 20, 1, 1, 10000, 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加');
INSERT INTO `cmf_admin_menu` VALUES (23, 20, 2, 0, 10000, 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存');
INSERT INTO `cmf_admin_menu` VALUES (24, 20, 1, 0, 10000, 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑');
INSERT INTO `cmf_admin_menu` VALUES (25, 20, 2, 0, 10000, 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES (26, 20, 2, 0, 10000, 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除');
INSERT INTO `cmf_admin_menu` VALUES (27, 20, 2, 0, 10000, 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序');
INSERT INTO `cmf_admin_menu` VALUES (28, 20, 1, 0, 10000, 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单');
INSERT INTO `cmf_admin_menu` VALUES (29, 6, 1, 1, 30, 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理');
INSERT INTO `cmf_admin_menu` VALUES (30, 29, 1, 0, 10000, 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航');
INSERT INTO `cmf_admin_menu` VALUES (31, 29, 2, 0, 10000, 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES (32, 29, 1, 0, 10000, 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航');
INSERT INTO `cmf_admin_menu` VALUES (33, 29, 2, 0, 10000, 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存');
INSERT INTO `cmf_admin_menu` VALUES (34, 29, 2, 0, 10000, 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航');
INSERT INTO `cmf_admin_menu` VALUES (35, 29, 1, 0, 10000, 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单');
INSERT INTO `cmf_admin_menu` VALUES (36, 35, 1, 0, 10000, 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单');
INSERT INTO `cmf_admin_menu` VALUES (37, 35, 2, 0, 10000, 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES (38, 35, 1, 0, 10000, 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单');
INSERT INTO `cmf_admin_menu` VALUES (39, 35, 2, 0, 10000, 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存');
INSERT INTO `cmf_admin_menu` VALUES (40, 35, 2, 0, 10000, 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单');
INSERT INTO `cmf_admin_menu` VALUES (41, 35, 2, 0, 10000, 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序');
INSERT INTO `cmf_admin_menu` VALUES (42, 1, 1, 1, 10000, 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表');
INSERT INTO `cmf_admin_menu` VALUES (43, 42, 2, 0, 10000, 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用');
INSERT INTO `cmf_admin_menu` VALUES (44, 42, 1, 0, 10000, 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置');
INSERT INTO `cmf_admin_menu` VALUES (45, 42, 2, 0, 10000, 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交');
INSERT INTO `cmf_admin_menu` VALUES (46, 42, 2, 0, 10000, 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装');
INSERT INTO `cmf_admin_menu` VALUES (47, 42, 2, 0, 10000, 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新');
INSERT INTO `cmf_admin_menu` VALUES (48, 42, 2, 0, 10000, 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件');
INSERT INTO `cmf_admin_menu` VALUES (49, 109, 0, 1, 10000, 'admin', 'User', 'default', '', '管理组', '', '管理组');
INSERT INTO `cmf_admin_menu` VALUES (50, 49, 1, 1, 10000, 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理');
INSERT INTO `cmf_admin_menu` VALUES (51, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色');
INSERT INTO `cmf_admin_menu` VALUES (52, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交');
INSERT INTO `cmf_admin_menu` VALUES (53, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色');
INSERT INTO `cmf_admin_menu` VALUES (54, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交');
INSERT INTO `cmf_admin_menu` VALUES (55, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色');
INSERT INTO `cmf_admin_menu` VALUES (56, 50, 1, 0, 10000, 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限');
INSERT INTO `cmf_admin_menu` VALUES (57, 50, 2, 0, 10000, 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交');
INSERT INTO `cmf_admin_menu` VALUES (58, 0, 1, 0, 10000, 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站');
INSERT INTO `cmf_admin_menu` VALUES (59, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原');
INSERT INTO `cmf_admin_menu` VALUES (60, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除');
INSERT INTO `cmf_admin_menu` VALUES (61, 6, 1, 1, 10000, 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理');
INSERT INTO `cmf_admin_menu` VALUES (62, 61, 1, 0, 10000, 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则');
INSERT INTO `cmf_admin_menu` VALUES (63, 61, 2, 0, 10000, 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交');
INSERT INTO `cmf_admin_menu` VALUES (64, 61, 1, 0, 10000, 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑');
INSERT INTO `cmf_admin_menu` VALUES (65, 61, 2, 0, 10000, 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交');
INSERT INTO `cmf_admin_menu` VALUES (66, 61, 2, 0, 10000, 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除');
INSERT INTO `cmf_admin_menu` VALUES (67, 61, 2, 0, 10000, 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用');
INSERT INTO `cmf_admin_menu` VALUES (68, 61, 2, 0, 10000, 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用');
INSERT INTO `cmf_admin_menu` VALUES (69, 61, 2, 0, 10000, 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序');
INSERT INTO `cmf_admin_menu` VALUES (70, 61, 1, 0, 10000, 'admin', 'Route', 'select', '', '选择URL', '', '选择URL');
INSERT INTO `cmf_admin_menu` VALUES (71, 6, 1, 1, 0, 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息');
INSERT INTO `cmf_admin_menu` VALUES (72, 71, 2, 0, 10000, 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交');
INSERT INTO `cmf_admin_menu` VALUES (73, 6, 1, 0, 10000, 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改');
INSERT INTO `cmf_admin_menu` VALUES (74, 73, 2, 0, 10000, 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交');
INSERT INTO `cmf_admin_menu` VALUES (75, 6, 1, 1, 10000, 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置');
INSERT INTO `cmf_admin_menu` VALUES (76, 75, 2, 0, 10000, 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交');
INSERT INTO `cmf_admin_menu` VALUES (77, 6, 1, 0, 10000, 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存');
INSERT INTO `cmf_admin_menu` VALUES (78, 6, 1, 1, 40, 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理');
INSERT INTO `cmf_admin_menu` VALUES (79, 78, 1, 0, 10000, 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片');
INSERT INTO `cmf_admin_menu` VALUES (80, 78, 2, 0, 10000, 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES (81, 78, 1, 0, 10000, 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片');
INSERT INTO `cmf_admin_menu` VALUES (82, 78, 2, 0, 10000, 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交');
INSERT INTO `cmf_admin_menu` VALUES (83, 78, 2, 0, 10000, 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片');
INSERT INTO `cmf_admin_menu` VALUES (84, 78, 1, 0, 10000, 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表');
INSERT INTO `cmf_admin_menu` VALUES (85, 84, 1, 0, 10000, 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加');
INSERT INTO `cmf_admin_menu` VALUES (86, 84, 2, 0, 10000, 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交');
INSERT INTO `cmf_admin_menu` VALUES (87, 84, 1, 0, 10000, 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑');
INSERT INTO `cmf_admin_menu` VALUES (88, 84, 2, 0, 10000, 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交');
INSERT INTO `cmf_admin_menu` VALUES (89, 84, 2, 0, 10000, 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除');
INSERT INTO `cmf_admin_menu` VALUES (90, 84, 2, 0, 10000, 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏');
INSERT INTO `cmf_admin_menu` VALUES (91, 84, 2, 0, 10000, 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示');
INSERT INTO `cmf_admin_menu` VALUES (92, 84, 2, 0, 10000, 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序');
INSERT INTO `cmf_admin_menu` VALUES (93, 6, 1, 1, 10000, 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储');
INSERT INTO `cmf_admin_menu` VALUES (94, 93, 2, 0, 10000, 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交');
INSERT INTO `cmf_admin_menu` VALUES (95, 6, 1, 1, 20, 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理');
INSERT INTO `cmf_admin_menu` VALUES (96, 95, 1, 0, 10000, 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板');
INSERT INTO `cmf_admin_menu` VALUES (97, 95, 2, 0, 10000, 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板');
INSERT INTO `cmf_admin_menu` VALUES (98, 95, 2, 0, 10000, 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装');
INSERT INTO `cmf_admin_menu` VALUES (99, 95, 2, 0, 10000, 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新');
INSERT INTO `cmf_admin_menu` VALUES (100, 95, 2, 0, 10000, 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES (101, 95, 1, 0, 10000, 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板');
INSERT INTO `cmf_admin_menu` VALUES (102, 95, 1, 0, 10000, 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置');
INSERT INTO `cmf_admin_menu` VALUES (103, 95, 1, 0, 10000, 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表');
INSERT INTO `cmf_admin_menu` VALUES (104, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑');
INSERT INTO `cmf_admin_menu` VALUES (105, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES (106, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除');
INSERT INTO `cmf_admin_menu` VALUES (107, 95, 2, 0, 10000, 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存');
INSERT INTO `cmf_admin_menu` VALUES (108, 95, 1, 0, 10000, 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源');
INSERT INTO `cmf_admin_menu` VALUES (109, 0, 0, 1, 10, 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理');
INSERT INTO `cmf_admin_menu` VALUES (110, 49, 1, 1, 10000, 'admin', 'User', 'index', '', '管理员', '', '管理员管理');
INSERT INTO `cmf_admin_menu` VALUES (111, 110, 1, 0, 10000, 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加');
INSERT INTO `cmf_admin_menu` VALUES (112, 110, 2, 0, 10000, 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交');
INSERT INTO `cmf_admin_menu` VALUES (113, 110, 1, 0, 10000, 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑');
INSERT INTO `cmf_admin_menu` VALUES (114, 110, 2, 0, 10000, 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交');
INSERT INTO `cmf_admin_menu` VALUES (115, 110, 1, 0, 10000, 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改');
INSERT INTO `cmf_admin_menu` VALUES (116, 110, 2, 0, 10000, 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交');
INSERT INTO `cmf_admin_menu` VALUES (117, 110, 2, 0, 10000, 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除');
INSERT INTO `cmf_admin_menu` VALUES (118, 110, 2, 0, 10000, 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员');
INSERT INTO `cmf_admin_menu` VALUES (119, 110, 2, 0, 10000, 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员');
INSERT INTO `cmf_admin_menu` VALUES (120, 0, 0, 0, 30, 'portal', 'AdminIndex', 'default', '', '门户管理', 'th', '门户管理');
INSERT INTO `cmf_admin_menu` VALUES (121, 120, 1, 1, 10000, 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表');
INSERT INTO `cmf_admin_menu` VALUES (122, 121, 1, 0, 10000, 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章');
INSERT INTO `cmf_admin_menu` VALUES (123, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交');
INSERT INTO `cmf_admin_menu` VALUES (124, 121, 1, 0, 10000, 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章');
INSERT INTO `cmf_admin_menu` VALUES (125, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交');
INSERT INTO `cmf_admin_menu` VALUES (126, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除');
INSERT INTO `cmf_admin_menu` VALUES (127, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布');
INSERT INTO `cmf_admin_menu` VALUES (128, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶');
INSERT INTO `cmf_admin_menu` VALUES (129, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐');
INSERT INTO `cmf_admin_menu` VALUES (130, 121, 2, 0, 10000, 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序');
INSERT INTO `cmf_admin_menu` VALUES (131, 120, 1, 1, 10000, 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表');
INSERT INTO `cmf_admin_menu` VALUES (132, 131, 1, 0, 10000, 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类');
INSERT INTO `cmf_admin_menu` VALUES (133, 131, 2, 0, 10000, 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES (134, 131, 1, 0, 10000, 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类');
INSERT INTO `cmf_admin_menu` VALUES (135, 131, 2, 0, 10000, 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交');
INSERT INTO `cmf_admin_menu` VALUES (136, 131, 1, 0, 10000, 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框');
INSERT INTO `cmf_admin_menu` VALUES (137, 131, 2, 0, 10000, 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序');
INSERT INTO `cmf_admin_menu` VALUES (138, 131, 2, 0, 10000, 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类');
INSERT INTO `cmf_admin_menu` VALUES (139, 120, 1, 1, 10000, 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理');
INSERT INTO `cmf_admin_menu` VALUES (140, 139, 1, 0, 10000, 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面');
INSERT INTO `cmf_admin_menu` VALUES (141, 139, 2, 0, 10000, 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交');
INSERT INTO `cmf_admin_menu` VALUES (142, 139, 1, 0, 10000, 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面');
INSERT INTO `cmf_admin_menu` VALUES (143, 139, 2, 0, 10000, 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交');
INSERT INTO `cmf_admin_menu` VALUES (144, 139, 2, 0, 10000, 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面');
INSERT INTO `cmf_admin_menu` VALUES (145, 120, 1, 1, 10000, 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签');
INSERT INTO `cmf_admin_menu` VALUES (146, 145, 1, 0, 10000, 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签');
INSERT INTO `cmf_admin_menu` VALUES (147, 145, 2, 0, 10000, 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交');
INSERT INTO `cmf_admin_menu` VALUES (148, 145, 2, 0, 10000, 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态');
INSERT INTO `cmf_admin_menu` VALUES (149, 145, 2, 0, 10000, 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签');
INSERT INTO `cmf_admin_menu` VALUES (150, 0, 1, 0, 10000, 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表');
INSERT INTO `cmf_admin_menu` VALUES (151, 150, 2, 0, 10000, 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件');
INSERT INTO `cmf_admin_menu` VALUES (152, 109, 0, 1, 10000, 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组');
INSERT INTO `cmf_admin_menu` VALUES (153, 152, 1, 1, 10000, 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户');
INSERT INTO `cmf_admin_menu` VALUES (154, 153, 2, 0, 10000, 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑');
INSERT INTO `cmf_admin_menu` VALUES (155, 153, 2, 0, 10000, 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用');
INSERT INTO `cmf_admin_menu` VALUES (156, 152, 1, 1, 10000, 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户');
INSERT INTO `cmf_admin_menu` VALUES (157, 156, 2, 0, 10000, 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定');
INSERT INTO `cmf_admin_menu` VALUES (158, 6, 1, 1, 10000, 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理');
INSERT INTO `cmf_admin_menu` VALUES (159, 158, 1, 0, 10000, 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作');
INSERT INTO `cmf_admin_menu` VALUES (160, 158, 2, 0, 10000, 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交');
INSERT INTO `cmf_admin_menu` VALUES (161, 158, 1, 0, 10000, 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作');
INSERT INTO `cmf_admin_menu` VALUES (162, 0, 1, 1, 40, 'domain', 'AdminIndex', 'default', '', '域名管理', 'paper-plane', '');
INSERT INTO `cmf_admin_menu` VALUES (163, 162, 1, 1, 0, 'domain', 'AdminIp', 'index', '', 'IP管理', 'location-arrow', '');
INSERT INTO `cmf_admin_menu` VALUES (164, 162, 1, 1, 10, 'domain', 'AdminDomain', 'index', '', '域名列表', 'search-plus', '');
INSERT INTO `cmf_admin_menu` VALUES (165, 163, 1, 0, 0, 'domain', 'AdminIp', 'ipadd', '', 'IP添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (166, 163, 1, 0, 10, 'domain', 'AdminIp', 'ipedit', '', 'IP编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (167, 163, 2, 0, 20, 'domain', 'AdminIP', 'ipdel', '', 'IP删除', '', '');
INSERT INTO `cmf_admin_menu` VALUES (168, 164, 1, 0, 0, 'domain', 'AdminDomain', 'domainadd', '', '域名添加', '', '');
INSERT INTO `cmf_admin_menu` VALUES (169, 164, 1, 0, 10, 'domain', 'AdminDomain', 'domainedit', '', '域名编辑', '', '');
INSERT INTO `cmf_admin_menu` VALUES (170, 164, 1, 0, 20, 'domain', 'AdminDomain', 'domaindel', '', '域名删除', '', '');

-- ----------------------------
-- Table structure for cmf_asset
-- ----------------------------
DROP TABLE IF EXISTS `cmf_asset`;
CREATE TABLE `cmf_asset`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `file_size` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件大小,单位B',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上传时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `suffix` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_auth_access
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_access`;
CREATE TABLE `cmf_auth_access`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL COMMENT '角色',
  `rule_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `rule_name`(`rule_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限授权表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_auth_access
-- ----------------------------
INSERT INTO `cmf_auth_access` VALUES (4, 2, 'domain/adminindex/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (5, 2, 'domain/adminip/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (6, 2, 'domain/admindomain/index', 'admin_url');

-- ----------------------------
-- Table structure for cmf_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_rule`;
CREATE TABLE `cmf_auth_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '规则所属module',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `module`(`app`, `status`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 171 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_auth_rule
-- ----------------------------
INSERT INTO `cmf_auth_rule` VALUES (1, 1, 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', '');
INSERT INTO `cmf_auth_rule` VALUES (2, 1, 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', '');
INSERT INTO `cmf_auth_rule` VALUES (3, 1, 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', '');
INSERT INTO `cmf_auth_rule` VALUES (4, 1, 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', '');
INSERT INTO `cmf_auth_rule` VALUES (5, 1, 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (6, 1, 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (7, 1, 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (8, 1, 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (9, 1, 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (10, 1, 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (11, 1, 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', '');
INSERT INTO `cmf_auth_rule` VALUES (12, 1, 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES (13, 1, 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', '');
INSERT INTO `cmf_auth_rule` VALUES (14, 1, 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (15, 1, 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', '');
INSERT INTO `cmf_auth_rule` VALUES (16, 1, 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', '');
INSERT INTO `cmf_auth_rule` VALUES (17, 1, 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', '');
INSERT INTO `cmf_auth_rule` VALUES (18, 1, 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (19, 1, 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (20, 1, 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', '');
INSERT INTO `cmf_auth_rule` VALUES (21, 1, 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (22, 1, 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (23, 1, 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (24, 1, 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', '');
INSERT INTO `cmf_auth_rule` VALUES (25, 1, 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES (26, 1, 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (27, 1, 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', '');
INSERT INTO `cmf_auth_rule` VALUES (28, 1, 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', '');
INSERT INTO `cmf_auth_rule` VALUES (29, 1, 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (30, 1, 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', '');
INSERT INTO `cmf_auth_rule` VALUES (31, 1, 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (32, 1, 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', '');
INSERT INTO `cmf_auth_rule` VALUES (33, 1, 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (34, 1, 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (35, 1, 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (36, 1, 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (37, 1, 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (38, 1, 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (39, 1, 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES (40, 1, 'admin', 'admin_url', 'admin/Plugin/default', '', '插件中心', '');
INSERT INTO `cmf_auth_rule` VALUES (41, 1, 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', '');
INSERT INTO `cmf_auth_rule` VALUES (42, 1, 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', '');
INSERT INTO `cmf_auth_rule` VALUES (43, 1, 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', '');
INSERT INTO `cmf_auth_rule` VALUES (44, 1, 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (45, 1, 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', '');
INSERT INTO `cmf_auth_rule` VALUES (46, 1, 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', '');
INSERT INTO `cmf_auth_rule` VALUES (47, 1, 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', '');
INSERT INTO `cmf_auth_rule` VALUES (48, 1, 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', '');
INSERT INTO `cmf_auth_rule` VALUES (49, 1, 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', '');
INSERT INTO `cmf_auth_rule` VALUES (50, 1, 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES (51, 1, 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', '');
INSERT INTO `cmf_auth_rule` VALUES (52, 1, 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES (53, 1, 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', '');
INSERT INTO `cmf_auth_rule` VALUES (54, 1, 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', '');
INSERT INTO `cmf_auth_rule` VALUES (55, 1, 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', '');
INSERT INTO `cmf_auth_rule` VALUES (56, 1, 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', '');
INSERT INTO `cmf_auth_rule` VALUES (57, 1, 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', '');
INSERT INTO `cmf_auth_rule` VALUES (58, 1, 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', '');
INSERT INTO `cmf_auth_rule` VALUES (59, 1, 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', '');
INSERT INTO `cmf_auth_rule` VALUES (60, 1, 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', '');
INSERT INTO `cmf_auth_rule` VALUES (61, 1, 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', '');
INSERT INTO `cmf_auth_rule` VALUES (62, 1, 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (63, 1, 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (64, 1, 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', '');
INSERT INTO `cmf_auth_rule` VALUES (65, 1, 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', '');
INSERT INTO `cmf_auth_rule` VALUES (66, 1, 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', '');
INSERT INTO `cmf_auth_rule` VALUES (67, 1, 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', '');
INSERT INTO `cmf_auth_rule` VALUES (68, 1, 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', '');
INSERT INTO `cmf_auth_rule` VALUES (69, 1, 'admin', 'admin_url', 'admin/Setting/default', '', '设置', '');
INSERT INTO `cmf_auth_rule` VALUES (70, 1, 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', '');
INSERT INTO `cmf_auth_rule` VALUES (71, 1, 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (72, 1, 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', '');
INSERT INTO `cmf_auth_rule` VALUES (73, 1, 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES (74, 1, 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', '');
INSERT INTO `cmf_auth_rule` VALUES (75, 1, 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (76, 1, 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', '');
INSERT INTO `cmf_auth_rule` VALUES (77, 1, 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', '');
INSERT INTO `cmf_auth_rule` VALUES (78, 1, 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES (79, 1, 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES (80, 1, 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES (81, 1, 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES (82, 1, 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES (83, 1, 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', '');
INSERT INTO `cmf_auth_rule` VALUES (84, 1, 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', '');
INSERT INTO `cmf_auth_rule` VALUES (85, 1, 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES (86, 1, 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (87, 1, 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (88, 1, 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', '');
INSERT INTO `cmf_auth_rule` VALUES (89, 1, 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES (90, 1, 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', '');
INSERT INTO `cmf_auth_rule` VALUES (91, 1, 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', '');
INSERT INTO `cmf_auth_rule` VALUES (92, 1, 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', '');
INSERT INTO `cmf_auth_rule` VALUES (93, 1, 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (94, 1, 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', '');
INSERT INTO `cmf_auth_rule` VALUES (95, 1, 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', '');
INSERT INTO `cmf_auth_rule` VALUES (96, 1, 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', '');
INSERT INTO `cmf_auth_rule` VALUES (97, 1, 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', '');
INSERT INTO `cmf_auth_rule` VALUES (98, 1, 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', '');
INSERT INTO `cmf_auth_rule` VALUES (99, 1, 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', '');
INSERT INTO `cmf_auth_rule` VALUES (100, 1, 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', '');
INSERT INTO `cmf_auth_rule` VALUES (101, 1, 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', '');
INSERT INTO `cmf_auth_rule` VALUES (102, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', '');
INSERT INTO `cmf_auth_rule` VALUES (103, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (104, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (105, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', '');
INSERT INTO `cmf_auth_rule` VALUES (106, 1, 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (107, 1, 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', '');
INSERT INTO `cmf_auth_rule` VALUES (108, 1, 'admin', 'admin_url', 'admin/User/default', '', '管理组', '');
INSERT INTO `cmf_auth_rule` VALUES (109, 1, 'admin', 'admin_url', 'admin/User/index', '', '管理员', '');
INSERT INTO `cmf_auth_rule` VALUES (110, 1, 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', '');
INSERT INTO `cmf_auth_rule` VALUES (111, 1, 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES (112, 1, 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (113, 1, 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (114, 1, 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', '');
INSERT INTO `cmf_auth_rule` VALUES (115, 1, 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES (116, 1, 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', '');
INSERT INTO `cmf_auth_rule` VALUES (117, 1, 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES (118, 1, 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES (119, 1, 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', '');
INSERT INTO `cmf_auth_rule` VALUES (120, 1, 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', '');
INSERT INTO `cmf_auth_rule` VALUES (121, 1, 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES (122, 1, 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', '');
INSERT INTO `cmf_auth_rule` VALUES (123, 1, 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', '');
INSERT INTO `cmf_auth_rule` VALUES (124, 1, 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', '');
INSERT INTO `cmf_auth_rule` VALUES (125, 1, 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', '');
INSERT INTO `cmf_auth_rule` VALUES (126, 1, 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', '');
INSERT INTO `cmf_auth_rule` VALUES (127, 1, 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', '');
INSERT INTO `cmf_auth_rule` VALUES (128, 1, 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', '');
INSERT INTO `cmf_auth_rule` VALUES (129, 1, 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', '');
INSERT INTO `cmf_auth_rule` VALUES (130, 1, 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES (131, 1, 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES (132, 1, 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES (133, 1, 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', '');
INSERT INTO `cmf_auth_rule` VALUES (134, 1, 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', '');
INSERT INTO `cmf_auth_rule` VALUES (135, 1, 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', '');
INSERT INTO `cmf_auth_rule` VALUES (136, 1, 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', '');
INSERT INTO `cmf_auth_rule` VALUES (137, 1, 'portal', 'admin_url', 'portal/AdminIndex/default', '', '门户管理', '');
INSERT INTO `cmf_auth_rule` VALUES (138, 1, 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', '');
INSERT INTO `cmf_auth_rule` VALUES (139, 1, 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', '');
INSERT INTO `cmf_auth_rule` VALUES (140, 1, 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES (141, 1, 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', '');
INSERT INTO `cmf_auth_rule` VALUES (142, 1, 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', '');
INSERT INTO `cmf_auth_rule` VALUES (143, 1, 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', '');
INSERT INTO `cmf_auth_rule` VALUES (144, 1, 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES (145, 1, 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES (146, 1, 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', '');
INSERT INTO `cmf_auth_rule` VALUES (147, 1, 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', '');
INSERT INTO `cmf_auth_rule` VALUES (148, 1, 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', '');
INSERT INTO `cmf_auth_rule` VALUES (149, 1, 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', '');
INSERT INTO `cmf_auth_rule` VALUES (150, 1, 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', '');
INSERT INTO `cmf_auth_rule` VALUES (151, 1, 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', '');
INSERT INTO `cmf_auth_rule` VALUES (152, 1, 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', '');
INSERT INTO `cmf_auth_rule` VALUES (153, 1, 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', '');
INSERT INTO `cmf_auth_rule` VALUES (154, 1, 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', '');
INSERT INTO `cmf_auth_rule` VALUES (155, 1, 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', '');
INSERT INTO `cmf_auth_rule` VALUES (156, 1, 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', '');
INSERT INTO `cmf_auth_rule` VALUES (157, 1, 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
INSERT INTO `cmf_auth_rule` VALUES (158, 1, 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', '');
INSERT INTO `cmf_auth_rule` VALUES (159, 1, 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES (160, 1, 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', '');
INSERT INTO `cmf_auth_rule` VALUES (161, 1, 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES (162, 1, 'Domain', 'admin_url', 'Domain/AdminIndex/default', '', '域名管理', '');
INSERT INTO `cmf_auth_rule` VALUES (163, 1, 'Domain', 'admin_url', 'Domain/AdminIP/index', '', 'IP管理', '');
INSERT INTO `cmf_auth_rule` VALUES (164, 1, 'Domain', 'admin_url', 'Domain/AdminDomain/index', '', '域名列表', '');
INSERT INTO `cmf_auth_rule` VALUES (165, 1, 'domain', 'admin_url', 'domain/AdminIP/ipadd', '', 'IP添加', '');
INSERT INTO `cmf_auth_rule` VALUES (166, 1, 'domain', 'admin_url', 'domain/AdminIP/ipedit', '', 'IP编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (167, 1, 'domain', 'admin_url', 'domain/AdminIP/ipdel', '', 'IP删除', '');
INSERT INTO `cmf_auth_rule` VALUES (168, 1, 'domain', 'admin_url', 'domain/AdminDomain/domainadd', '', '域名添加', '');
INSERT INTO `cmf_auth_rule` VALUES (169, 1, 'domain', 'admin_url', 'domain/AdminDomain/domainedit', '', '域名编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (170, 1, 'domain', 'admin_url', 'domain/AdminDomain/domaindel', '', '域名删除', '');

-- ----------------------------
-- Table structure for cmf_comment
-- ----------------------------
DROP TABLE IF EXISTS `cmf_comment`;
CREATE TABLE `cmf_comment`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '被回复的评论id',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发表评论的用户id',
  `to_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '被评论的用户id',
  `object_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论内容 id',
  `like_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞数',
  `dislike_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '不喜欢数',
  `floor` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '楼层数',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '原文地址',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '评论内容',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `table_id_status`(`table_name`, `object_id`, `status`) USING BTREE,
  INDEX `object_id`(`object_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_domain
-- ----------------------------
DROP TABLE IF EXISTS `cmf_domain`;
CREATE TABLE `cmf_domain`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ipid` int(10) DEFAULT NULL,
  `domain` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `isspeed` smallint(1) DEFAULT NULL COMMENT '是否加速',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 966 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_domain
-- ----------------------------
INSERT INTO `cmf_domain` VALUES (1, 16, '3g.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (2, 16, '3g.wjba120.cn', 1, '');
INSERT INTO `cmf_domain` VALUES (3, 4, '4g.lcbdnk.com', 0, '4g.0635yy.com wap.lcbdyy.com 4g.lcbdnk.com 4gzx.lcbdyy.com wap.lcbd120.com');
INSERT INTO `cmf_domain` VALUES (4, 50, 'lcyy.lcbdyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (5, 50, 'yy. lcbdyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (6, 50, 'shouji.lcbdyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (7, 50, 'gc.lcbdyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (8, 50, 'wapby.lcbdyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (9, 2, '3gnk.lcbdyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (10, 2, 'wapfk.lcbdyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (11, 2, 'zxmr.lcbdyy.com', 1, 'zxmr.lcbdyy.com www.lcbd120.com');
INSERT INTO `cmf_domain` VALUES (12, 2, 'byby.lcbdyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (13, 2, 'bbs.lcbdyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (14, 2, 'wapgc.lcbdyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (15, 2, 'wapzx.lcbdyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (16, 68, 'wappf.lcbdyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (17, 4, 'wap.lcbdyy.com', 1, '4g.0635yy.com wap.lcbdyy.com 4g.lcbdnk.com 4gzx.lcbdyy.com wap.lcbd120.com    ///wap.lcbdyy.com此战已关闭');
INSERT INTO `cmf_domain` VALUES (18, 4, '4gzx.lcbdyy.com', 1, '4g.0635yy.com wap.lcbdyy.com 4g.lcbdnk.com 4gzx.lcbdyy.com wap.lcbd120.com');
INSERT INTO `cmf_domain` VALUES (19, 2, 'www.lcbdyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (20, 16, 'nk.lcbdyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (21, 88, 'zt.lcbdyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (22, 16, 'www.wjba120.cn', 1, '');
INSERT INTO `cmf_domain` VALUES (23, 16, 'wap.tcfkyy.cn', 1, '');
INSERT INTO `cmf_domain` VALUES (24, 16, 'fk.tcfkyy.cn', 1, '');
INSERT INTO `cmf_domain` VALUES (25, 15, 'www.tcfkyy.cn', 1, '');
INSERT INTO `cmf_domain` VALUES (26, 66, 'www.njwhgb.com', 0, '');
INSERT INTO `cmf_domain` VALUES (27, 64, 'm.njwhgb.com', 0, 'm.njwhgb.com ss.jswh120.com nj.jswhgb.com');
INSERT INTO `cmf_domain` VALUES (28, 66, 'nj.njwhgb.com', 0, 'sgg.njwhgb.com nj.njwhgb.com');
INSERT INTO `cmf_domain` VALUES (29, 64, 'jsnre.njwhgb.com', 0, '');
INSERT INTO `cmf_domain` VALUES (30, 16, 'www.wjbayy.cn', 1, '');
INSERT INTO `cmf_domain` VALUES (31, 16, 'www.tzdfzx.com', 1, '');
INSERT INTO `cmf_domain` VALUES (32, 16, 'www.lcbdfk120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (33, 16, 'www.zjgwczx.com', 1, 'zjgwczxyy.com www.zjgwczxyy.com zjgwczx.com www.zjgwczx.com');
INSERT INTO `cmf_domain` VALUES (34, 16, 'wap.zjgwczx.com', 1, 'wap.zjgwczxyy.com wap.zjgwczx.com');
INSERT INTO `cmf_domain` VALUES (35, 15, '4g.zjgwczx.com', 1, '');
INSERT INTO `cmf_domain` VALUES (36, 16, 'wap.zjgwczxyy.com', 1, 'wap.zjgwczxyy.com wap.zjgwczx.com');
INSERT INTO `cmf_domain` VALUES (37, 16, 'www.zjgwczxyy.com', 1, 'zjgwczxyy.com www.zjgwczxyy.com zjgwczx.com www.zjgwczx.com');
INSERT INTO `cmf_domain` VALUES (38, 58, 'zx.zjgwczxyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (39, 16, 'm.wcnke.com', 1, '');
INSERT INTO `cmf_domain` VALUES (40, 16, 'nk.wcnke.com', 1, '');
INSERT INTO `cmf_domain` VALUES (41, 16, 'wap.wcnke.com', 1, '');
INSERT INTO `cmf_domain` VALUES (42, 16, 'www.wcnke.com', 1, '');
INSERT INTO `cmf_domain` VALUES (43, 69, 'new.tzpfb.cn', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (44, 69, 'www.tzpfb.cn', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (45, 63, 'msg.tzpfb.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (46, 28, 'sg.tzpfb.cn', 0, 'www.tzpfyy.cn tzpfyy.cn pf.tzpfyy.cn sg.tzpfyy.cn sg.tzpfb.cn www.tzpfb.cn tzpfb.cn');
INSERT INTO `cmf_domain` VALUES (47, 63, 'sgw.tzpfb.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (48, 63, 'sm.tzpfb.cn', 0, 'm.tzpfb.cn sm.tzpfb.cn');
INSERT INTO `cmf_domain` VALUES (49, 16, 'wap.tzpfb.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (50, 16, 'm.tzpfb.cn', 0, 'm.tzpfb.cn sm.tzpfb.cn');
INSERT INTO `cmf_domain` VALUES (51, 16, 'ai.tzpfb.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (52, 63, 'dywap.tzpfb.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (53, 28, 'dypf.tzpfb.cn', 0, 'www.dypfyy.com dypfyy.com pf.dypfyy.com dypf.tzgcyy.cn dypf.tzpfb.cn sg.dypfyy.com');
INSERT INTO `cmf_domain` VALUES (54, 39, 'wapfk.tchsyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (55, 4, 'fuke.tchsyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (56, 15, 'm.tchsyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (57, 15, 'www.tchsyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (58, 16, 'wap.tchsyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (59, 16, '3g.tchsyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (60, 16, 'fk.tchsyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (61, 17, 'sg.wjboai.com', 1, '');
INSERT INTO `cmf_domain` VALUES (62, 17, 'nk.wjboai.com', 1, '');
INSERT INTO `cmf_domain` VALUES (63, 40, 'm.wjboai.com', 1, '');
INSERT INTO `cmf_domain` VALUES (64, 15, '4g.wjboai.com', 1, '');
INSERT INTO `cmf_domain` VALUES (65, 16, '3g.wjboai.com', 1, '');
INSERT INTO `cmf_domain` VALUES (66, 16, 'wap.wjboai.com', 1, '');
INSERT INTO `cmf_domain` VALUES (67, 77, 'www.wjboai.com', 1, '');
INSERT INTO `cmf_domain` VALUES (68, 57, 'mm.wjboai.com', 1, '');
INSERT INTO `cmf_domain` VALUES (69, 15, 'a.wjboai.com', 1, '');
INSERT INTO `cmf_domain` VALUES (70, 16, 'mgc.yxnkyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (71, 69, '3g.yxnkyy.cn', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (72, 16, 'wap.yxnkyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (73, 69, 'www.yxnkyy.cn', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (74, 5, 'nk.yxnkyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (75, 17, '4g.yxnkyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (76, 70, 'jc.yxnkyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (77, 68, 'baopi.yxnkyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (78, 34, 'gc.yxnkyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (79, 29, 'bp.yxnkyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (80, 88, 'm.yxnkyy.cn', 0, '与m.yxbayy120.com共用');
INSERT INTO `cmf_domain` VALUES (81, 39, 'm.szxieheyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (82, 88, 'www.szxieheyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (83, 39, '3g.szxieheyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (84, 61, 'xh.szxieheyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (85, 70, 'a.szxieheyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (86, 70, 'sz.szxieheyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (87, 88, '4g.szxieheyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (88, 88, 'wap.szxieheyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (89, 88, 'nk.szxieheyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (90, 88, 'zc.szxieheyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (91, 88, 'fk.szxieheyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (92, 88, 'gc.szxieheyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (93, 21, 'www.yzltyy.cn', 1, 'nk.yzlt120.com yzltyy.cn www.yzltyy.cn');
INSERT INTO `cmf_domain` VALUES (94, 60, 'wap.yzltyy.cn', 1, 'wap.yzlt120.com wap.yzltyy.cn');
INSERT INTO `cmf_domain` VALUES (95, 70, 'pp.yzltyy.cn', 1, '');
INSERT INTO `cmf_domain` VALUES (96, 49, 'fk.yzltyy.cn', 1, '已关闭');
INSERT INTO `cmf_domain` VALUES (97, 49, 'm.yzltyy.cn', 1, '已关闭');
INSERT INTO `cmf_domain` VALUES (98, 14, 'm.0511woman.com', 1, 'm.dypfyy.com m.0511woman.com');
INSERT INTO `cmf_domain` VALUES (99, 88, 'www.0511woman.com', 1, '');
INSERT INTO `cmf_domain` VALUES (100, 57, 'ycyy.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (101, 58, 'wfnk.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (102, 15, 'tzgcyy.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (103, 40, 'bdf.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (104, 16, 'bak4.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (105, 28, 'bak3.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (106, 47, 'bak2.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (107, 26, 'bak1.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (108, 26, '3g.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (109, 26, 'adminn.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (110, 26, 'ycyjs.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (111, 26, 'yc.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (112, 69, 'wap.0523yy.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (113, 26, 'tzpfyy.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (114, 26, 'tzpf.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (115, 69, 'nk.0523yy.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (116, 26, '4g.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (117, 26, 'www.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (118, 88, 'm.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (119, 15, 'sgm.yxbayy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (120, 16, 'sg.yxbayy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (121, 15, '4g.yxbayy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (122, 6, 'gc.yxbayy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (123, 6, 'wap.yxbayy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (124, 15, 'www.yxbayy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (125, 16, '3g.yxbayy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (126, 16, 'mgc.yxbayy120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (127, 88, 'm.yxbayy120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (128, 5, '4g.cszhongshan.com', 0, '');
INSERT INTO `cmf_domain` VALUES (129, 51, 'crm.cszhongshan.com', 0, '');
INSERT INTO `cmf_domain` VALUES (130, 5, 'wap.cszhongshan.com', 0, '');
INSERT INTO `cmf_domain` VALUES (131, 4, 'www.cszhongshan.com', 0, '');
INSERT INTO `cmf_domain` VALUES (132, 88, 'm.cszhongshan.com', 0, '');
INSERT INTO `cmf_domain` VALUES (133, 17, 'm.83359999.com', 0, '');
INSERT INTO `cmf_domain` VALUES (134, 69, 'mnk.83359999.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (135, 16, 'mgc.83359999.com', 0, '');
INSERT INTO `cmf_domain` VALUES (136, 6, 'gc.83359999.com', 0, 'gc.83359999.com gc.changzheng120.com');
INSERT INTO `cmf_domain` VALUES (137, 88, 'app.83359999.com', 0, '');
INSERT INTO `cmf_domain` VALUES (138, 6, '3gfk.83359999.com', 0, '');
INSERT INTO `cmf_domain` VALUES (139, 14, 'fk.83359999.com', 0, '');
INSERT INTO `cmf_domain` VALUES (140, 69, 'nk.83359999.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (141, 6, '4g.83359999.com', 0, '');
INSERT INTO `cmf_domain` VALUES (142, 15, '3g.83359999.com', 0, '');
INSERT INTO `cmf_domain` VALUES (143, 14, 'www.83359999.com', 0, '');
INSERT INTO `cmf_domain` VALUES (144, 88, 'wap.83359999.com', 0, '');
INSERT INTO `cmf_domain` VALUES (145, 17, 'wap.dysg.org', 1, '');
INSERT INTO `cmf_domain` VALUES (146, 17, 'zh.dysg.org', 1, '');
INSERT INTO `cmf_domain` VALUES (147, 88, 'fk.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (148, 88, 'www.dysg.org', 0, '与dy.changzheng120.com共用');
INSERT INTO `cmf_domain` VALUES (149, 39, 'pf.dysg.org', 0, '站已关闭');
INSERT INTO `cmf_domain` VALUES (150, 40, 'gk.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (151, 40, 'guke.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (152, 63, 'dpisj.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (153, 63, 'nk.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (154, 58, 'gksj.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (155, 58, 'tsks.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (156, 88, 'sggc.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (157, 88, 'sgnk.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (158, 88, 'sgzx.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (159, 88, 'sgyz.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (160, 88, 'sgrl.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (161, 88, 'sgfk.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (162, 88, 'sggj.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (163, 88, 'sgby.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (164, 88, 'm.dysg.org', 0, '');
INSERT INTO `cmf_domain` VALUES (165, 17, 'msg.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (166, 17, 'sg.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (167, 17, '4g.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (168, 5, '0511.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (169, 6, 'gc.changzheng120.com', 1, 'gc.83359999.com gc.changzheng120.com');
INSERT INTO `cmf_domain` VALUES (170, 71, 'fk.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (171, 14, 'nk.changzheng120.com', 1, 'nk.changzheng120.com www.changzheng120.com changzheng120.com');
INSERT INTO `cmf_domain` VALUES (172, 15, '3g.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (173, 68, 'wap.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (174, 14, 'www.changzheng120.com', 1, 'nk.changzheng120.com www.changzheng120.com');
INSERT INTO `cmf_domain` VALUES (175, 88, 'dyguke.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (176, 88, 'dysgby.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (177, 88, 'dysgfk.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (178, 88, 'dysggc.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (179, 88, 'dysgnk.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (180, 88, 'dysgzx.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (181, 88, 'dysgyz.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (182, 88, 'dysgrl.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (183, 88, 'dysggj.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (184, 88, 'dygc.changzheng120.com', 1, '与sggc.dysg.org共用');
INSERT INTO `cmf_domain` VALUES (185, 88, 'dynk.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (186, 70, 'pp.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (187, 88, 'dyzx.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (188, 88, 'dyyz.changzheng120.com', 1, '与sgyz.dysg.org共用');
INSERT INTO `cmf_domain` VALUES (189, 88, 'dyrl.changzheng120.com', 1, '与sgrl.dysg.org共用');
INSERT INTO `cmf_domain` VALUES (190, 88, 'dygj.changzheng120.com', 1, '与sggj.dysg.org共用');
INSERT INTO `cmf_domain` VALUES (191, 88, 'dyby.changzheng120.com', 1, '与sgby.dysg.org共用');
INSERT INTO `cmf_domain` VALUES (192, 88, 'm.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (193, 88, 'dyfk.changzheng120.com', 1, '与fk.dysgyy.net共用');
INSERT INTO `cmf_domain` VALUES (194, 88, 'dy.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (195, 88, 'dym.changzheng120.com', 1, '与m.dysg.org共用');
INSERT INTO `cmf_domain` VALUES (196, 39, 'pf.dysgyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (197, 39, '120.dysgyy.net', 1, '');
INSERT INTO `cmf_domain` VALUES (198, 68, 'fk120.dysgyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (199, 63, 'pfb.dysgyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (200, 63, 'pm.dysgyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (201, 61, 'wap.dysgyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (202, 61, 'zx.dysgyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (203, 88, 'www.dysgyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (204, 88, 'fk.dysgyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (205, 17, 'fk.tlhsyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (206, 17, 'nanke.tlhsyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (207, 17, 'c.tlhsyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (208, 17, 'b.tlhsyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (209, 17, 'a.tlhsyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (210, 39, 'www.tlhsyy.com', 1, '');
INSERT INTO `cmf_domain` VALUES (211, 66, 'wap.tznke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (212, 88, 'm.tznke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (213, 46, 'crm.tznke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (214, 72, 'yetc.tznke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (215, 39, 'tzgcyy.tznke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (216, 26, 'nk.tznke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (217, 26, '3g.tznke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (218, 26, 'www.tznke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (219, 26, 'bak.tznke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (220, 26, 'nkbak.tznke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (221, 88, 'mbak.tznke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (222, 43, '4gbak.tznke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (223, 60, 'pybak.tznke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (224, 70, 'pp.tznke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (225, 44, 'm.yzlt120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (226, 28, 'www.yzlt120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (227, 57, 'wap.yzlt120.com', 1, 'wap.yzlt120.com wap.yzltyy.cn');
INSERT INTO `cmf_domain` VALUES (228, 15, 'nk.yzlt120.com', 1, 'nk.yzlt120.com yzltyy.cn www.yzltyy.cn');
INSERT INTO `cmf_domain` VALUES (229, 16, '4g.yzlt120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (230, 16, 'www.yzltnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (231, 88, 'wap.yzltnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (232, 69, 'nk.yzltnk.com', 1, 'nk.yzltnk.com kqnk.yzltnk.com  CDN加速');
INSERT INTO `cmf_domain` VALUES (233, 49, 'm.yzltnk.com', 0, '已关闭');
INSERT INTO `cmf_domain` VALUES (234, 6, 'kqnk.yzltnk.com', 0, 'nk.yzltnk.com kqnk.yzltnk.com');
INSERT INTO `cmf_domain` VALUES (235, 16, 'kq4g.yzltnk.com', 0, '4g.yzltnk.com kq4g.yzltnk.com');
INSERT INTO `cmf_domain` VALUES (236, 49, 'fk.yzltnk.com', 0, '已关闭');
INSERT INTO `cmf_domain` VALUES (237, 72, 'ffs.yzltnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (238, 44, '3g.yzltnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (239, 69, '4g.yzltnk.com', 1, '4g.yzltnk.com kq4g.yzltnk.com  CDN加速');
INSERT INTO `cmf_domain` VALUES (240, 69, 'wap.dypfzk.com', 0, 'wap.dypfyy.com wap.dypfzk.com');
INSERT INTO `cmf_domain` VALUES (241, 69, 'www.dypfzk.com', 0, 'www.dypfyy.com dypfyy.com pc.dypfzk.com www.dypfzk.com dypfzk.com');
INSERT INTO `cmf_domain` VALUES (242, 69, 'pc.dypfzk.com', 0, 'www.dypfyy.com dypfyy.com pc.dypfzk.com');
INSERT INTO `cmf_domain` VALUES (243, 64, 'jsnre.jswh120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (244, 64, 'sgm.jswh120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (245, 64, 'ss.jswh120.com', 0, 'm.njwhgb.com ss.jswh120.com nj.jswhgb.com');
INSERT INTO `cmf_domain` VALUES (246, 66, 'nk.jswh120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (247, 66, 'm.jswh120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (248, 66, 'www.jswh120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (249, 64, 'jsnre.jswhgb.com', 0, '');
INSERT INTO `cmf_domain` VALUES (250, 64, '360m.jswhgb.com', 0, '');
INSERT INTO `cmf_domain` VALUES (251, 64, 'nj.jswhgb.com', 0, 'm.njwhgb.com ss.jswh120.com nj.jswhgb.com');
INSERT INTO `cmf_domain` VALUES (252, 66, 'nk.jswhgb.com', 0, '');
INSERT INTO `cmf_domain` VALUES (253, 66, 'm.jswhgb.com', 0, '');
INSERT INTO `cmf_domain` VALUES (254, 66, 'www.jswhgb.com', 0, '');
INSERT INTO `cmf_domain` VALUES (255, 17, 'sgpc.lygnjnk.cn', 0, 'bdpc.0518njyy.com bdpc.nj0518.com sgpc.lygnjnk.cn bdpc.lygnj120.com sgpc.lygnj120.com 360pc.0518njyy.com sgpc.nakeyy.cn bdpc.njnankyy.com bdpc.lygnk.cn');
INSERT INTO `cmf_domain` VALUES (256, 17, '39nk.lygnjnk.cn', 0, '39nk.lygnjnk.cn 120ask.nj0518.com');
INSERT INTO `cmf_domain` VALUES (257, 17, 'sgmo.lygnjnk.cn', 0, 'sgmo.lygnjnk.cn sgmo.lygnj120.com sgmo.nakeyy.cn 360mo.0518njyy.com');
INSERT INTO `cmf_domain` VALUES (258, 17, 'www.lygnjnk.cn', 0, 'www.lygnjnk.cn lygnjnk.cn www.nakeyy.cn nakeyy.cn');
INSERT INTO `cmf_domain` VALUES (259, 17, 'm.lygnjnk.cn', 0, 'm.lygnj120.com wap.0518njyy.com bdmo.lygnjmnk.com m.0518njyy.com m.nj0518.com m.lygnjnk.cn m.lygnk.cn m.njnankyy.com m.nakeyy.cn m.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (260, 17, 'sgpc.nakeyy.cn', 0, 'bdpc.0518njyy.com bdpc.nj0518.com sgpc.lygnjnk.cn bdpc.lygnj120.com sgpc.lygnj120.com 360pc.0518njyy.com sgpc.nakeyy.cn bdpc.njnankyy.com bdpc.lygnk.cn');
INSERT INTO `cmf_domain` VALUES (261, 17, 'sgmo.nakeyy.cn', 0, 'sgmo.lygnjnk.cn sgmo.lygnj120.com sgmo.nakeyy.cn 360mo.0518njyy.com');
INSERT INTO `cmf_domain` VALUES (262, 17, 'www.nakeyy.cn', 0, 'www.lygnjnk.cn lygnjnk.cn www.nakeyy.cn nakeyy.cn');
INSERT INTO `cmf_domain` VALUES (263, 17, 'm.nakeyy.cn', 0, 'm.lygnj120.com wap.0518njyy.com bdmo.lygnjmnk.com m.0518njyy.com m.nj0518.com m.lygnjnk.cn m.lygnk.cn m.njnankyy.com m.nakeyy.cn m.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (264, 62, 'bdpc.lygnk.cn', 0, 'bdpc.0518njyy.com bdpc.nj0518.com sgpc.lygnjnk.cn bdpc.lygnj120.com sgpc.lygnj120.com 360pc.0518njyy.com sgpc.nakeyy.cn bdpc.njnankyy.com bdpc.lygnk.cn');
INSERT INTO `cmf_domain` VALUES (265, 62, 'bdmo.lygnk.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (266, 17, 'www.lygnk.cn', 0, 'www.lygnj120.com lygnj120.com www.0518njyy.com 0518njyy.com nj0518.com www.nj0518.com www.lygnjmnk.com lygnjmnk.com  lygnk.cn www.lygnk.cn njnankyy.com www.njnankyy.com  njnakeyy.com www.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (267, 17, 'm.lygnk.cn', 0, 'm.lygnj120.com wap.0518njyy.com bdmo.lygnjmnk.com m.0518njyy.com m.nj0518.com m.lygnjnk.cn m.lygnk.cn m.njnankyy.com m.nakeyy.cn m.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (268, 17, 'www.njnakeyy.com', 0, 'www.lygnj120.com lygnj120.com www.0518njyy.com 0518njyy.com nj0518.com www.nj0518.com www.lygnjmnk.com lygnjmnk.com  lygnk.cn www.lygnk.cn njnankyy.com www.njnankyy.com  njnakeyy.com www.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (269, 17, 'm.njnakeyy.com', 0, 'm.lygnj120.com wap.0518njyy.com bdmo.lygnjmnk.com m.0518njyy.com m.nj0518.com m.lygnjnk.cn m.lygnk.cn m.njnankyy.com m.nakeyy.cn m.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (270, 17, 'bdpc.njnankyy.com', 0, 'bdpc.0518njyy.com bdpc.nj0518.com sgpc.lygnjnk.cn bdpc.lygnj120.com sgpc.lygnj120.com 360pc.0518njyy.com sgpc.nakeyy.cn bdpc.njnankyy.com bdpc.lygnk.cn');
INSERT INTO `cmf_domain` VALUES (271, 69, 'bdmo.njnankyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (272, 17, 'www.njnankyy.com', 0, 'www.lygnj120.com lygnj120.com www.0518njyy.com 0518njyy.com nj0518.com www.nj0518.com www.lygnjmnk.com lygnjmnk.com  lygnk.cn www.lygnk.cn njnankyy.com www.njnankyy.com  njnakeyy.com www.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (273, 17, 'm.njnankyy.com', 0, 'm.lygnj120.com wap.0518njyy.com bdmo.lygnjmnk.com m.0518njyy.com m.nj0518.com m.lygnjnk.cn m.lygnk.cn m.njnankyy.com m.nakeyy.cn m.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (274, 17, 'mgc.lyjfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (275, 17, 'gc.lyjfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (276, 17, 'mnk.lyjfyy.com', 0, 'mnk.120lyjf.com mnk.lyjfyy.com');
INSERT INTO `cmf_domain` VALUES (277, 17, 'mfk.lyjfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (278, 17, 'nk.lyjfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (279, 17, 'fuke.lyjfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (280, 17, 'm.lyjfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (281, 17, 'www.lyjfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (282, 69, 'wap.tzpfbzk.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (283, 69, 'www.tzpfbzk.com', 1, 'CDN加速  ');
INSERT INTO `cmf_domain` VALUES (284, 63, 'www.gytjnk.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (285, 63, 'sg.tjnk120.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (286, 27, '3g.tjnk120.cn', 0, '3g.gytjyy120.com 3g.tjnk120.cn');
INSERT INTO `cmf_domain` VALUES (287, 63, 'www.tjnk120.cn', 0, 'www.gytjyy120.com gytjyy120.com  www.tjnk120.cn tjnk120.cn');
INSERT INTO `cmf_domain` VALUES (288, 15, '4g.tj0514.com', 0, '');
INSERT INTO `cmf_domain` VALUES (289, 15, 'm.tj0514.com', 0, '');
INSERT INTO `cmf_domain` VALUES (290, 15, '3g.tj0514.com', 0, '');
INSERT INTO `cmf_domain` VALUES (291, 64, 'www.tj0514.com', 0, 'nk.gytjyy120.com www.tj0514.com tj0514.com');
INSERT INTO `cmf_domain` VALUES (292, 17, '360pc.0518njyy.com', 0, 'bdpc.0518njyy.com bdpc.nj0518.com sgpc.lygnjnk.cn bdpc.lygnj120.com sgpc.lygnj120.com 360pc.0518njyy.com sgpc.nakeyy.cn bdpc.njnankyy.com bdpc.lygnk.cn');
INSERT INTO `cmf_domain` VALUES (293, 17, 'bdpc.0518njyy.com', 0, 'bdpc.0518njyy.com bdpc.nj0518.com sgpc.lygnjnk.cn bdpc.lygnj120.com sgpc.lygnj120.com 360pc.0518njyy.com sgpc.nakeyy.cn bdpc.njnankyy.com bdpc.lygnk.cn');
INSERT INTO `cmf_domain` VALUES (294, 17, '360mo.0518njyy.com', 0, 'sgmo.lygnjnk.cn sgmo.lygnj120.com sgmo.nakeyy.cn 360mo.0518njyy.com');
INSERT INTO `cmf_domain` VALUES (295, 17, 'm.0518njyy.com', 0, 'm.lygnj120.com wap.0518njyy.com bdmo.lygnjmnk.com m.0518njyy.com m.nj0518.com m.lygnjnk.cn m.lygnk.cn m.njnankyy.com m.nakeyy.cn m.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (296, 17, 'wap.0518njyy.com', 0, 'm.lygnj120.com wap.0518njyy.com bdmo.lygnjmnk.com m.0518njyy.com m.nj0518.com m.lygnjnk.cn m.lygnk.cn m.njnankyy.com m.nakeyy.cn m.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (297, 17, 'www.0518njyy.com', 0, 'www.lygnj120.com lygnj120.com www.0518njyy.com 0518njyy.com nj0518.com www.nj0518.com www.lygnjmnk.com lygnjmnk.com  lygnk.cn www.lygnk.cn njnankyy.com www.njnankyy.com  njnakeyy.com www.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (298, 61, 'www.dysgzxmr.com', 0, '');
INSERT INTO `cmf_domain` VALUES (299, 61, 'm.dysgzxmr.com', 0, '');
INSERT INTO `cmf_domain` VALUES (300, 67, 'm.0513hxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (301, 67, 'www.0513hxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (302, 17, 'www.qdhuaxiayy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (303, 17, 'www.qdhxyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (304, 17, '4g.qdhxyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (305, 17, '4rd.hnlj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (306, 64, 'www.hnlj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (307, 64, 'm.hnlj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (308, 64, 'mgc.jyhwyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (309, 64, 'fk.jyhwyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (310, 64, 'nk.jyhwyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (311, 64, 'wap.jyhwyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (312, 64, 'www.jyhwyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (313, 64, 'fk.jyhw120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (314, 64, 'nk.jyhw120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (315, 64, 'wap.jyhw120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (316, 64, 'www.jyhw120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (317, 61, '3g.hmzx0511.com', 0, '已关闭');
INSERT INTO `cmf_domain` VALUES (318, 61, '4g.hmzx0511.com', 0, '4g.hm0511.com 4g.zjhmzxyy.com 4g.hmzx0511.com');
INSERT INTO `cmf_domain` VALUES (319, 61, 'wap.hmzx0511.com', 0, 'wap.zjhmzxyy.com wap.hm0511.com wap.zjhm0511.com wap.hmzx0511.com sougou.zjhmzxyy.com 360.hm0511.com');
INSERT INTO `cmf_domain` VALUES (320, 61, 'www.hmzx0511.com', 0, 'www.hm0511.com hm0511.com www.zjhm0511.com zjhm0511.com hmzx0511.com www.hmzx0511.com 项目zjhmzxyy.com');
INSERT INTO `cmf_domain` VALUES (321, 61, '5g.zjhm0511.com', 0, '');
INSERT INTO `cmf_domain` VALUES (322, 61, 'www.zjhm0511.com', 0, 'www.hm0511.com hm0511.com www.zjhm0511.com zjhm0511.com hmzx0511.com www.hmzx0511.com 项目zjhmzxyy.com');
INSERT INTO `cmf_domain` VALUES (323, 61, 'wap.zjhm0511.com', 0, 'wap.zjhmzxyy.com wap.hm0511.com wap.zjhm0511.com wap.hmzx0511.com sougou.zjhmzxyy.com 360.hm0511.com  sougou.zjhm0511.com');
INSERT INTO `cmf_domain` VALUES (324, 64, 'www.phhqjk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (325, 64, '4g.phhqjk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (326, 61, '4g.0635hmzx.com', 0, '4g.lchmzxyy.com 4g.lchmzxmr.com 4g.0635hmzx.com 项目 4g.lchmzxmryy.com');
INSERT INTO `cmf_domain` VALUES (327, 61, 'm.0635hmzx.com', 0, 'm.lchmzxyy.com m.lchmzxmr.com m.0635hmzx.com 项目m.lchmzxmryy.com');
INSERT INTO `cmf_domain` VALUES (328, 66, 'wap.0635hmzx.com', 0, 'wap.lchmzxyy.com wap.lchmzxmr.com wap.0635hmzx.com');
INSERT INTO `cmf_domain` VALUES (329, 66, 'www.0635hmzx.com', 0, '');
INSERT INTO `cmf_domain` VALUES (330, 69, 'www.lchmzxmryy.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (331, 69, 'm.lchmzxmryy.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (332, 69, 'wap.lchmzxmryy.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (333, 69, '4g.lchmzxmryy.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (334, 61, '5g.lchmzxmryy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (335, 61, '4g.lchmzxmr.com', 0, '4g.lchmzxyy.com 4g.lchmzxmr.com 4g.0635hmzx.com 项目 4g.lchmzxmryy.com');
INSERT INTO `cmf_domain` VALUES (336, 61, 'm.lchmzxmr.com', 0, 'm.lchmzxyy.com m.lchmzxmr.com m.0635hmzx.com 项目m.lchmzxmryy.com');
INSERT INTO `cmf_domain` VALUES (337, 66, 'wap.lchmzxmr.com', 0, 'wap.lchmzxyy.com wap.lchmzxmr.com wap.0635hmzx.com');
INSERT INTO `cmf_domain` VALUES (338, 66, 'www.lchmzxmr.com', 0, 'www.lchmzxmr.com www.lchmzxyy.com');
INSERT INTO `cmf_domain` VALUES (339, 61, '4g.lchmzxyy.com', 0, '4g.lchmzxyy.com 4g.lchmzxmr.com 4g.0635hmzx.com 项目 4g.lchmzxmryy.com');
INSERT INTO `cmf_domain` VALUES (340, 61, 'm.lchmzxyy.com', 0, 'm.lchmzxyy.com m.lchmzxmr.com m.0635hmzx.com 项目m.lchmzxmryy.com');
INSERT INTO `cmf_domain` VALUES (341, 66, 'wap.lchmzxyy.com', 0, 'wap.lchmzxyy.com wap.lchmzxmr.com wap.0635hmzx.com');
INSERT INTO `cmf_domain` VALUES (342, 66, 'www.lchmzxyy.com', 0, 'www.lchmzxmr.com www.lchmzxyy.com');
INSERT INTO `cmf_domain` VALUES (343, 17, '3g.ganyutongjiyiyuan.com', 0, '');
INSERT INTO `cmf_domain` VALUES (344, 17, 'www.ganyutongjiyiyuan.com', 0, '');
INSERT INTO `cmf_domain` VALUES (345, 14, 'www.ganyutongji.com', 0, '');
INSERT INTO `cmf_domain` VALUES (346, 17, 'wap.ganyutongji.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (347, 17, 'www.ganyutongji.cn', 0, 'www.ganyutongji.cn ganyutongji.cn tongji.qingzhifeng.com');
INSERT INTO `cmf_domain` VALUES (348, 66, 'nk.cjyyfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (349, 66, '3g.cjyyfk.com', 0, 'm.cjnkyy.cn 3g.cjyyfk.com');
INSERT INTO `cmf_domain` VALUES (350, 61, 'm.cjyyfk.com', 0, 'm.cjyyfk.com m.cjyyfk.cn');
INSERT INTO `cmf_domain` VALUES (351, 66, 'www.cjyyfk.com', 0, 'www.cjyyfk.com cjyyfk.com fuke.cjyyfk.cn');
INSERT INTO `cmf_domain` VALUES (352, 69, 'm.lhxtzyy.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (353, 69, 'www.lhxtzyy.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (354, 17, 'wap.lhxtzyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (355, 61, 'www.lhxtnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (356, 63, 'm.lhxtnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (357, 26, 'www.jrtjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (358, 26, 'fk.jrtjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (359, 61, 'nk.jrtjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (360, 69, 'www.zjhmzxyy.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (361, 69, '3g.zjhmzxyy.com', 1, 'CDN加速 文件夹wap.zjhmzxyy.com');
INSERT INTO `cmf_domain` VALUES (362, 61, 'wap.zjhmzxyy.com', 0, 'wap.zjhmzxyy.com wap.hm0511.com wap.zjhm0511.com wap.hmzx0511.com sougou.zjhmzxyy.com 360.hm0511.com');
INSERT INTO `cmf_domain` VALUES (363, 61, 'sougou.zjhmzxyy.com', 0, 'wap.zjhmzxyy.com wap.hm0511.com wap.zjhm0511.com wap.hmzx0511.com sougou.zjhmzxyy.com 360.hm0511.com');
INSERT INTO `cmf_domain` VALUES (364, 61, '4g.zjhmzxyy.com', 0, '4g.hm0511.com 4g.zjhmzxyy.com 4g.hmzx0511.com');
INSERT INTO `cmf_domain` VALUES (365, 61, 'lchm.zjhmzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (366, 61, '360.hm0511.com', 0, 'wap.zjhmzxyy.com wap.hm0511.com wap.zjhm0511.com wap.hmzx0511.com sougou.zjhmzxyy.com 360.hm0511.com');
INSERT INTO `cmf_domain` VALUES (367, 61, '4g.hm0511.com', 0, '4g.hm0511.com 4g.zjhmzxyy.com 4g.hmzx0511.com');
INSERT INTO `cmf_domain` VALUES (368, 61, 'wap.hm0511.com', 0, 'wap.zjhmzxyy.com wap.hm0511.com wap.zjhm0511.com wap.hmzx0511.com sougou.zjhmzxyy.com 360.hm0511.com');
INSERT INTO `cmf_domain` VALUES (369, 61, 'www.hm0511.com', 0, 'www.hm0511.com hm0511.com www.zjhm0511.com zjhm0511.com hmzx0511.com www.hmzx0511.com 项目zjhmzxyy.com');
INSERT INTO `cmf_domain` VALUES (370, 61, '4g.jttjyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (371, 61, '3g.jttjyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (372, 61, 'm.jttjyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (373, 61, 'www.jttjyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (374, 17, 'www.phyy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (375, 17, 'www.phyy120.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (376, 15, 'a.csdffkyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (377, 15, 'b.csdffkyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (378, 15, 'c.csdffkyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (379, 17, 'wap.csdffkyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (380, 17, 'fuke.csdffkyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (381, 17, 'gc.csdffkyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (382, 17, 'mgc.csdffkyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (383, 17, 'www.csdffkyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (384, 61, 'www.phhqyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (385, 61, '4g.phhqyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (386, 61, '4g.phhqyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (387, 61, 'www.phhqyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (388, 17, 'www.zjcznk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (389, 17, 'm.zjcznk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (390, 63, '0514.gytjyy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (391, 27, '3g.gytjyy120.com', 0, '3g.gytjyy120.com 3g.tjnk120.cn');
INSERT INTO `cmf_domain` VALUES (392, 64, 'nk.gytjyy120.com', 0, 'nk.gytjyy120.com www.tj0514.com tj0514.com');
INSERT INTO `cmf_domain` VALUES (393, 63, 'tt.gytjyy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (394, 63, 'www.gytjyy120.com', 0, 'www.gytjyy120.com   www.tjnk120.cn tjnk120.cn');
INSERT INTO `cmf_domain` VALUES (395, 63, 'm.gytjyy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (396, 5, 'gc.qdhx120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (397, 70, 'qd.qdhx120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (398, 4, '3g.qdhx120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (399, 70, 'a.qdhx120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (400, 4, 'nkyd.qdhx120.com', 0, 'm.qdhx120.com m.qdys120.com nkyd.qdhx120.com');
INSERT INTO `cmf_domain` VALUES (401, 4, 'nkpc.qdhx120.com', 0, 'www.qdhx120.com www.qdys120.com qdys120.com nkpc.qdhx120.com 项目qdhx120.com');
INSERT INTO `cmf_domain` VALUES (402, 4, 'm.qdhx120.com', 0, 'm.qdhx120.com m.qdys120.com nkyd.qdhx120.com  现在在60.174.237.174服务器');
INSERT INTO `cmf_domain` VALUES (403, 4, 'www.qdhx120.com', 0, 'www.qdhx120.com www.qdys120.com qdys120.com nkpc.qdhx120.com');
INSERT INTO `cmf_domain` VALUES (404, 6, 'nk.qdhx120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (405, 4, '4g.qdhx120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (406, 4, '3g.qdys120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (407, 4, 'www.qdys120.com', 0, 'www.qdhx120.com www.qdys120.com qdys120.com nkpc.qdhx120.com');
INSERT INTO `cmf_domain` VALUES (408, 4, 'm.qdys120.com', 0, 'm.qdhx120.com m.qdys120.com nkyd.qdhx120.com 现在在60.174.237.174服务器上');
INSERT INTO `cmf_domain` VALUES (409, 4, 'nk.qdys120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (410, 4, '4g.qdys120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (411, 69, 'www.csdfnzyy.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (412, 15, 'mfrd.csdfnzyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (413, 15, 'frd.csdfnzyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (414, 63, 'wap.csdfnzyy.com', 0, 'fk.csdfnzyy.com wap.csdfnzyy.com');
INSERT INTO `cmf_domain` VALUES (415, 73, 'swt.csdfnzyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (416, 61, 'fuke.csdfnzyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (417, 63, 'fk.csdfnzyy.com', 0, 'fk.csdfnzyy.com wap.csdfnzyy.com');
INSERT INTO `cmf_domain` VALUES (418, 63, 'gc.csdfnzyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (419, 63, 'mgc.csdfnzyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (420, 63, 'm.dypfyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (421, 63, 'www.dypfyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (422, 16, 'www.wyxygyy.cn', 0, '原站在119.28.17.249');
INSERT INTO `cmf_domain` VALUES (423, 16, 'nk.wyxygyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (424, 16, 'fk.wyxygyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (425, 16, 'www.wyxygyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (426, 16, '4g.wyxygyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (427, 16, '4g.wyxyg120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (428, 16, 'fk.wyxyg120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (429, 16, 'nk.wyxyg120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (430, 16, 'www.wyxyg120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (431, 16, 'www.0579ygyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (432, 69, 'wap.byytqyy.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (433, 69, 'www.byytqyy.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (434, 4, '3g.byytqyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (435, 6, 'myc.byytqyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (436, 4, 'm.byytqyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (437, 28, 'www.lyxdyy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (438, 4, 'pcnk.hxfk120.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (439, 17, 'm.hxfk120.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (440, 4, 'xh.hxfk120.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (441, 4, 'nk.hxfk120.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (442, 4, '4g.hxfk120.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (443, 4, 'www.hxfk120.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (444, 2, 'www.hxxhyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (445, 2, 'm.hxxhyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (446, 28, 'www.jttj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (447, 63, 'dywap.dfpfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (448, 28, 'dypf.dfpfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (449, 28, 'ai.dfpfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (450, 74, '3g.dfpfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (451, 28, 'www.dfpfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (452, 28, 'm.dfpfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (453, 28, 'www.zjgnkyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (454, 28, 'www.wcnke.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (455, 28, 'www.xcjl120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (456, 40, 'www.hxxhyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (457, 5, '3g.0555xhyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (458, 5, 'www.0555xhyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (459, 6, 'www.xhfkyy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (460, 57, '3g.0512csfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (461, 57, 'www.0512csfk.com', 0, 'fukecsrlyy');
INSERT INTO `cmf_domain` VALUES (462, 40, 'wap.0512csfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (463, 25, '5g.tzhmzx.com', 0, '');
INSERT INTO `cmf_domain` VALUES (464, 69, 'm.tzhmzx.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (465, 69, 'zxmr.tzhmzx.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (466, 69, 'www.tzhmzx.com', 0, 'www.tzhmzx.com www.tzhmmr.com www.tzhmgj.com');
INSERT INTO `cmf_domain` VALUES (467, 25, 'swt.tzhmzx.com', 0, '');
INSERT INTO `cmf_domain` VALUES (468, 25, 'zx.tzhmzx.com', 0, 'zx.tzhmmr.com zx.tzhmgj.com zx.tzhmzx.com');
INSERT INTO `cmf_domain` VALUES (469, 76, 'www.tzhmyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (470, 76, 'm.tzhmyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (471, 25, '5g.tzhmmr.com', 0, '');
INSERT INTO `cmf_domain` VALUES (472, 25, 'wap.tzhmmr.com', 0, 'wap.tzhmgj.com wap.tzhmmr.com 项目wap.tzhmzx.com');
INSERT INTO `cmf_domain` VALUES (473, 25, 'zx.tzhmmr.com', 0, 'zx.tzhmmr.com zx.tzhmgj.com  zx.tzhmzx.com');
INSERT INTO `cmf_domain` VALUES (474, 25, 'www.tzhmmr.com', 0, 'www.tzhmzx.com www.tzhmmr.com www.tzhmgj.com');
INSERT INTO `cmf_domain` VALUES (475, 25, 'm.tzhmmr.com', 0, 'm.tzhmmr.com m.tzhmgj.com 项目m.tzhmzx.com');
INSERT INTO `cmf_domain` VALUES (476, 25, 'fbd3.tzhmgj.com', 0, '');
INSERT INTO `cmf_domain` VALUES (477, 25, '5g.tzhmgj.com', 0, '');
INSERT INTO `cmf_domain` VALUES (478, 25, 'fbd1.tzhmgj.com', 0, '');
INSERT INTO `cmf_domain` VALUES (479, 25, 'fbd2.tzhmgj.com', 0, '');
INSERT INTO `cmf_domain` VALUES (480, 25, 'wap.tzhmgj.com', 0, 'wap.tzhmgj.com wap.tzhmmr.com 项目wap.tzhmzx.com');
INSERT INTO `cmf_domain` VALUES (481, 25, 'zx.tzhmgj.com', 0, 'zx.tzhmmr.com zx.tzhmgj.com zx.tzhmzx.com');
INSERT INTO `cmf_domain` VALUES (482, 25, 'www.tzhmgj.com', 0, 'www.tzhmzx.com www.tzhmmr.com www.tzhmgj.com');
INSERT INTO `cmf_domain` VALUES (483, 25, 'm.tzhmgj.com', 0, 'm.tzhmmr.com m.tzhmgj.com 项目m.tzhmzx.com');
INSERT INTO `cmf_domain` VALUES (484, 25, 'wvvw.tzhmgj.com', 0, '');
INSERT INTO `cmf_domain` VALUES (485, 76, 'www.0523mr.com', 0, '');
INSERT INTO `cmf_domain` VALUES (486, 76, 'm.0523mr.com', 0, '');
INSERT INTO `cmf_domain` VALUES (487, 16, 'www.81pfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (488, 21, 'm.81pfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (489, 58, 'www.tlhsfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (490, 61, '5g.dysgzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (491, 69, 'wap.dysgzxyy.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (492, 69, '4g.dysgzxyy.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (493, 69, 'www.dysgzxyy.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (494, 61, 'pf.dysgzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (495, 63, 'pfm.dysgzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (496, 63, 'fkzx.dysgzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (497, 63, 'fkby.dysgzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (498, 63, 'fkgj.dysgzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (499, 63, 'fkyz.dysgzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (500, 63, 'fkrl.dysgzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (501, 63, 'm.dysgzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (502, 63, 'gc.dysgzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (503, 63, 'gk.dysgzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (504, 63, 'fk.dysgzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (505, 63, 'nk.dysgzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (506, 63, 'ai.dysgzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (507, 47, 'www.tlhsnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (508, 7, 'www.0523gcyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (509, 63, 'sgw.tzpfyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (510, 66, 'new.tzpfyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (511, 63, 'sm.tzpfyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (512, 63, 'wap.tzpfyy.cn', 0, 'm.tzpfyy.cn wap.tzpfyy.cn');
INSERT INTO `cmf_domain` VALUES (513, 28, 'sg.tzpfyy.cn', 0, 'www.tzpfyy.cn tzpfyy.cn pf.tzpfyy.cn sg.tzpfyy.cn sg.tzpfb.cn www.tzpfb.cn tzpfb.cn');
INSERT INTO `cmf_domain` VALUES (514, 73, 'swt.tzpfyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (515, 57, 'yc.tzpfyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (516, 63, 'm.tzpfyy.cn', 0, 'm.tzpfyy.cn wap.tzpfyy.cn');
INSERT INTO `cmf_domain` VALUES (517, 28, 'ai.tzpfyy.cn', 0, 'ai.tzpfyy.cn、pf.tzpfyy.cn共用一个后台');
INSERT INTO `cmf_domain` VALUES (518, 28, 'pf.tzpfyy.cn', 0, 'www.tzpfyy.cn tzpfyy.cn pf.tzpfyy.cn sg.tzpfyy.cn sg.tzpfb.cn www.tzpfb.cn tzpfb.cn');
INSERT INTO `cmf_domain` VALUES (519, 28, 'www.tzpfyy.cn', 0, 'www.tzpfyy.cn tzpfyy.cn pf.tzpfyy.cn sg.tzpfyy.cn sg.tzpfb.cn www.tzpfb.cn tzpfb.cn');
INSERT INTO `cmf_domain` VALUES (520, 47, 'www.tzpfyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (521, 58, 'www.tcxhnkyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (522, 58, '3g.tcxhnkyy.com', 0, 'm.tcxiehe.com 3g.tcxhnkyy.com');
INSERT INTO `cmf_domain` VALUES (523, 70, 'jj.tcxhnkyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (524, 66, 'www.jrtjnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (525, 15, 'www.wjnk.org', 0, '');
INSERT INTO `cmf_domain` VALUES (526, 40, 'www.wjnkyy.org', 0, '');
INSERT INTO `cmf_domain` VALUES (527, 15, 'www.wjboai.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (528, 15, '4g.wjboai.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (529, 15, 'm.0514tjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (530, 27, 'www.0514tjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (531, 27, 'www.0519jttj.com', 0, '');
INSERT INTO `cmf_domain` VALUES (532, 15, '3g.0519jttj.com', 0, '');
INSERT INTO `cmf_domain` VALUES (533, 27, 'www.0519tjyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (534, 28, 'www.jttjyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (535, 27, 'm.gytjyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (536, 27, 'www.gytjyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (537, 63, 'm.gytjfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (538, 27, 'www.gytjfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (539, 41, 'c.tchsfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (540, 41, 'b.tchsfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (541, 41, 'a.tchsfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (542, 28, 'www.tchsfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (543, 28, 'www.53120888.com', 0, '');
INSERT INTO `cmf_domain` VALUES (544, 26, 'nk.sznx120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (545, 26, '120.sznx120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (546, 26, '3g.sznx120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (547, 66, 'fk.sznx120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (548, 28, 'xh.sznx120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (549, 57, 'gc.sznx120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (550, 15, 'wap.sznx120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (551, 28, 'zc.sznx120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (552, 28, 'www.sznx120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (553, 40, 'm.sznx120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (554, 57, 'sg.wjbayy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (555, 57, '4g.wjbayy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (556, 57, 'www.wjbayy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (557, 15, '3g.wjbayy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (558, 15, 'wap.wjbayy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (559, 47, 'sj.wjbayy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (560, 39, 'm.wjbayy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (561, 73, 'swt.sz120nk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (562, 40, 'm.sz120nk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (563, 39, 'www.sz120nk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (564, 40, '3g.sz120fk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (565, 40, 'm.sz120fk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (566, 39, 'www.sz120fk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (567, 58, 'wap.zjczfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (568, 58, 'mp.zjczfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (569, 58, '3g.zjczfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (570, 58, 'www.zjczfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (571, 77, 'fk.zjczfk.com', 0, 'fk.jrtj120.com  fk.zjczfk.com');
INSERT INTO `cmf_domain` VALUES (572, 20, 'm.zjczfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (573, 58, 'wap.tzgcyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (574, 66, '3g.tzgcyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (575, 58, 'm.tzgcyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (576, 28, 'dypfm.tzgcyy.cn', 0, 'dypfm.tzgcyy.cn，m.dfpfyy.com');
INSERT INTO `cmf_domain` VALUES (577, 28, 'dypf.tzgcyy.cn', 0, 'www.dypfyy.com dypfyy.com pf.dypfyy.com dypf.tzgcyy.cn dypf.tzpfb.cn sg.dypfyy.com');
INSERT INTO `cmf_domain` VALUES (578, 28, 'pfm.tzgcyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (579, 28, 'pf.tzgcyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (580, 28, 'ai.tzgcyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (581, 28, 'www.tzgcyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (582, 39, 'gc.tzgcyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (583, 69, 'wap.dypfyy.com', 1, 'CDN加速   wap.dypfyy.com wap.dypfzk.com');
INSERT INTO `cmf_domain` VALUES (584, 69, 'www.dypfyy.com', 1, 'CDN加速   www.dypfyy.com dypfyy.com pf.dypfyy.com dypf.tzgcyy.cn dypf.tzpfb.cn sg.dypfyy.com');
INSERT INTO `cmf_domain` VALUES (585, 63, 'sgw.dypfyy.com', 0, 'm.dypfyy.com共用后台');
INSERT INTO `cmf_domain` VALUES (586, 63, 'sm.dypfyy.com', 0, 'm.dypfyy.com共用后台');
INSERT INTO `cmf_domain` VALUES (587, 28, 'sg.dypfyy.com', 0, '网站已移动至43.277.196.97 与www.dypfyy.com共用后台');
INSERT INTO `cmf_domain` VALUES (588, 63, 'm.dypfyy.com', 0, 'm.dypfyy.com m.0511woman.com');
INSERT INTO `cmf_domain` VALUES (589, 73, 'swt.dypfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (590, 28, 'ai.dypfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (591, 28, 'pf.dypfyy.com', 0, 'www.dypfyy.com dypfyy.com pf.dypfyy.com dypf.tzgcyy.cn dypf.tzpfb.cn sg.dypfyy.com');
INSERT INTO `cmf_domain` VALUES (592, 15, '3g.jrbxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (593, 58, 'www.jrbxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (594, 58, 'nk.jrbxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (595, 14, 'm.jrbxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (596, 27, 'gc.jrbxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (597, 15, 'fk.jrbxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (598, 39, 'gk.jrbxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (599, 66, 'www.njwh120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (600, 61, 'm.njwh120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (601, 61, '3g.njwh120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (602, 5, 'www.gytjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (603, 4, 'm.gytjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (604, 55, 'nk.gytjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (605, 39, '3g.gytjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (606, 57, 'nk.xcjlyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (607, 2, 'www.xcjlyy.com', 0, '原站47.90.79.154');
INSERT INTO `cmf_domain` VALUES (608, 15, '3g.xcjlyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (609, 15, 'm.xcjlyy.com', 0, 'm.tchsyy.com/xcjlyywap');
INSERT INTO `cmf_domain` VALUES (610, 69, 'wap.4009999120.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (611, 69, 'www.4009999120.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (612, 56, 'm.4009999120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (613, 56, 'mbd.4009999120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (614, 70, 'pp.4009999120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (615, 56, 'yc.4009999120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (616, 56, 'bd.4009999120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (617, 15, 'www.tcxhnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (618, 15, 'm.tcxhnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (619, 40, 'wap.tcxhnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (620, 77, 'nk.tcxhnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (621, 35, 'wshh.tcxhnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (622, 28, 'www.tcrlyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (623, 57, 'www.jynke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (624, 57, 'bak.jynke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (625, 68, 'bak.jjnke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (626, 68, 'www.jjnke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (627, 17, 'www.ntrdrl.com', 0, '');
INSERT INTO `cmf_domain` VALUES (628, 69, '3g.rdjgnk.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (629, 69, 'www.rdjgnk.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (630, 87, 'm.rdjgnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (631, 17, '4g.rdjgnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (632, 17, 'nk.rdjgnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (633, 17, '3g.rdnkjg.com', 0, '');
INSERT INTO `cmf_domain` VALUES (634, 87, 'www.rdnkjg.com', 0, '');
INSERT INTO `cmf_domain` VALUES (635, 17, 'www.ntrdfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (636, 17, 'www.rdrlw.com', 0, '');
INSERT INTO `cmf_domain` VALUES (637, 17, 'www.84522888.com', 0, '');
INSERT INTO `cmf_domain` VALUES (638, 15, 'www.tzdfyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (639, 15, 'bak.tzdfyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (640, 58, 'www.tzdfyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (641, 70, 'pp.tzdfyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (642, 69, 'www.cszsyy.cn', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (643, 69, '3g.cszsyy.cn', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (644, 16, 'wap.cszsyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (645, 70, 'jj.cszsyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (646, 5, 'nk.cszsyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (647, 13, 'bak.cszsyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (648, 13, 'crm.cszsyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (649, 6, 'm.cszsyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (650, 60, 'bak1.tzdf120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (651, 68, 'bak.tzdf120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (652, 68, 'www.tzdf120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (653, 17, 'fuke.csrlfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (654, 17, '3g.csrlfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (655, 57, 'a.csrlfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (656, 57, 'b.csrlfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (657, 57, 'c.csrlfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (658, 15, 'www.csrlfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (659, 13, 'crm.csrlfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (660, 69, 'dds1.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (661, 78, 'wmr.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (662, 57, 'nankektl120.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (663, 58, 'fktl120.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (664, 58, '3wtlhsfk.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (665, 16, 'comet.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (666, 15, '3wtl120.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (667, 15, 'nktl120.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (668, 15, 'mtchsyy.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (669, 47, '3wtlhsnk.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (670, 73, 'swt.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (671, 28, 'by.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (672, 28, 'wxb.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (673, 28, 'pp.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (674, 78, 's.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (675, 70, 'cc.tcxiehe.com', 0, '');
INSERT INTO `cmf_domain` VALUES (676, 66, '120.tcxiehe.com', 0, '');
INSERT INTO `cmf_domain` VALUES (677, 58, 'm.tcxiehe.com', 0, 'm.tcxiehe.com 3g.tcxhnkyy.com');
INSERT INTO `cmf_domain` VALUES (678, 15, '4g.tcxiehe.com', 0, '');
INSERT INTO `cmf_domain` VALUES (679, 14, 'nk.tcxiehe.com', 0, '');
INSERT INTO `cmf_domain` VALUES (680, 70, 'pp.tcxiehe.com', 0, '');
INSERT INTO `cmf_domain` VALUES (681, 63, 'www.tcxiehe.com', 0, '');
INSERT INTO `cmf_domain` VALUES (682, 63, '5g.tcxiehe.com', 0, '');
INSERT INTO `cmf_domain` VALUES (683, 26, 'm.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (684, 58, 'male.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (685, 58, 'mfk.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (686, 58, '3g.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (687, 63, 'mp.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (688, 63, 'www.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (689, 63, 'nk.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (690, 63, 'wap.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (691, 63, 'nanke.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (692, 77, 'fk.jrtj120.com', 0, 'fk.jrtj120.com  fk.zjczfk.com');
INSERT INTO `cmf_domain` VALUES (693, 27, 'mgc.jrtj120.com', 0, '与gc.jrbxyy.com共用');
INSERT INTO `cmf_domain` VALUES (694, 27, 'gc.jrtj120.com', 0, '与gc.jrbxyy.com共用');
INSERT INTO `cmf_domain` VALUES (695, 79, 'man.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (696, 80, 'yzqlx.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (697, 80, 'yzlt.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (698, 80, 'yzgc.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (699, 80, 'yzbp.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (700, 80, 'zjgc.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (701, 80, 'zjcz.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (702, 80, 'zjbp.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (703, 80, 'jrnk.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (704, 80, 'jrrl.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (705, 80, 'jrfk.jrtj120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (706, 26, 'm.jttjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (707, 26, 'www.jttjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (708, 57, '4g.jttjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (709, 57, '3g.jttjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (710, 63, 'gaofang.jttjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (711, 17, 'www.rdjgyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (712, 17, 'www.rdnkyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (713, 64, 'm.njgb120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (714, 64, 'smc.njgb120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (715, 64, 'jsnre.njgb120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (716, 66, 'www.njgb120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (717, 66, 'www.gbyy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (718, 64, 'smc.gbyy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (719, 64, 'sgm.gbyy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (720, 64, 'jsnre.gbyy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (721, 64, 'm.gbyy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (722, 73, 'swt.gbyy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (723, 66, 'www.njgbyy.com', 0, 'njwhgb.com gbyy120.com njgb120.com jswh120.com jswhgb.com njgbyy.com njwh120.com www.njwh120.com www.njwhgb.com www.gbyy120.com www.njgb120.com www.jswh120.com www.jswhgb.com www.njgbyy.com  项目www.jswh120.com');
INSERT INTO `cmf_domain` VALUES (724, 64, 'jsnre.njgbyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (725, 64, 'm.njgbyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (726, 69, 'm.zjgwcyy.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (727, 4, 'www.zjgwcyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (728, 5, '4g.zjgwcyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (729, 70, 'pp.zjgwcyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (730, 4, 'wap.zjgwcyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (731, 4, 'nk.zjgwcyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (732, 4, 'ftp.zjgwcyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (733, 81, 'mail.zjgwcyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (734, 82, 'www.njyahan.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (735, 82, 'www.yhzx025.com', 0, '');
INSERT INTO `cmf_domain` VALUES (736, 82, 'www.yahanzx.com', 0, '');
INSERT INTO `cmf_domain` VALUES (737, 18, '5g.njyhzx.com', 0, '');
INSERT INTO `cmf_domain` VALUES (738, 18, '4g.njyhzx.com', 0, '4g.025yahan.com 4g.njyhzx.com 4g.52177777.com');
INSERT INTO `cmf_domain` VALUES (739, 18, 'wap.njyhzx.com', 0, 'wap.njyhzx.com m.52177777.com 项目m_025yahan');
INSERT INTO `cmf_domain` VALUES (740, 18, 'zx.njyhzx.com', 0, 'www.52177777.com zx.025yahan.com  zx.njyhzx.com项目文件夹025yahan_com');
INSERT INTO `cmf_domain` VALUES (741, 69, 'm.njyhzx.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (742, 69, 'www.njyhzx.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (743, 83, 'qb.njyhzx.com', 0, '');
INSERT INTO `cmf_domain` VALUES (744, 83, 'xizhi.njyhzx.com', 0, '');
INSERT INTO `cmf_domain` VALUES (745, 18, '5g.52177777.com', 0, '');
INSERT INTO `cmf_domain` VALUES (746, 18, 'm.52177777.com', 0, 'wap.njyhzx.com m.52177777.com 项目m_025yahan');
INSERT INTO `cmf_domain` VALUES (747, 18, '4g.52177777.com', 0, '4g.025yahan.com 4g.njyhzx.com 4g.52177777.com');
INSERT INTO `cmf_domain` VALUES (748, 18, 'www.52177777.com', 0, 'www.52177777.com  zx.025yahan.com  zx.njyhzx.com');
INSERT INTO `cmf_domain` VALUES (749, 18, 'fbd3.025yahan.com', 0, '');
INSERT INTO `cmf_domain` VALUES (750, 69, 'www.025yahan.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (751, 69, 'm.025yahan.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (752, 18, 'fbd2.025yahan.com', 0, '');
INSERT INTO `cmf_domain` VALUES (753, 18, 'fbd1.025yahan.com', 0, '');
INSERT INTO `cmf_domain` VALUES (754, 18, '5g.025yahan.com', 0, '');
INSERT INTO `cmf_domain` VALUES (755, 18, '4g.025yahan.com', 0, '4g.025yahan.com 4g.njyhzx.com 4g.52177777.com');
INSERT INTO `cmf_domain` VALUES (756, 18, 'zx.025yahan.com', 0, 'www.52177777.com  zx.025yahan.com  zx.njyhzx.com 项目文件夹025yahan_com');
INSERT INTO `cmf_domain` VALUES (757, 18, 'oa.025yahan.com', 0, '');
INSERT INTO `cmf_domain` VALUES (758, 57, 'wx.nuozhizhou.com', 0, '');
INSERT INTO `cmf_domain` VALUES (759, 57, 'www.nuozhizhou.com', 0, '');
INSERT INTO `cmf_domain` VALUES (760, 57, 'www.tcdryy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (761, 57, 'www.tcdr120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (762, 69, '4g.dtzsyy.com', 1, 'CDN加速   4g.dtzsnk.com 4g.dtzsyy.com');
INSERT INTO `cmf_domain` VALUES (763, 6, 'www.dtzsyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (764, 6, 'm.dtzsyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (765, 69, '4g.dtzsnk.com', 1, 'CDN加速    4g.dtzsnk.com 4g.dtzsyy.com');
INSERT INTO `cmf_domain` VALUES (766, 69, 'www.dtzsnk.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (767, 4, 'm.xhnkyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (768, 4, 'www.xhnkyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (769, 69, 'qwap.syxymp.com', 1, 'CDN加速');
INSERT INTO `cmf_domain` VALUES (770, 57, 'www.syxymp.com', 0, '');
INSERT INTO `cmf_domain` VALUES (771, 14, 'm.tcxhzk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (772, 14, 'www.tcxhzk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (773, 3, 'www.duchang8.com', 0, 'www.duchang8.com duchang8.com bbs.duchang8.com');
INSERT INTO `cmf_domain` VALUES (774, 3, 'bbs.duchang8.com', 0, 'www.duchang8.com duchang8.com bbs.duchang8.com');
INSERT INTO `cmf_domain` VALUES (775, 66, 'www.cjnkyy.cn', 0, 'www.cjnkyy.cn  nk.cjyyfk.com');
INSERT INTO `cmf_domain` VALUES (776, 66, 'www.cjtfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (777, 66, 'fk.changjiangfuke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (778, 66, 'm.changjiangfuke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (779, 66, 'mfk.changjiangfuke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (780, 66, 'www.changjiangfuke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (781, 66, 'm.cjnkyy.cn', 0, 'm.cjnkyy.cn 3g.cjyyfk.com');
INSERT INTO `cmf_domain` VALUES (782, 66, 'm.cjtfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (783, 66, 'm.cjyyfs.com', 0, 'm.cjyyfs.com m.cjfsk.cn');
INSERT INTO `cmf_domain` VALUES (784, 66, 'm.cjfsk.cn', 0, 'm.cjyyfs.com m.cjfsk.cn');
INSERT INTO `cmf_domain` VALUES (785, 66, 'www.tzdfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (787, 17, '120ask.nj0518.com', 0, '39nk.lygnjnk.cn 120ask.nj0518.com  | 120ask.nj0518.com的原项目在61.155.150.192');
INSERT INTO `cmf_domain` VALUES (788, 17, 'bdmo.lygnj120.com', 0, 'bdmo.lygnj120.com bdmo.0518njyy.com bdmo.nj0518.com');
INSERT INTO `cmf_domain` VALUES (789, 17, 'bdmo.0518njyy.com', 0, 'bdmo.lygnj120.com bdmo.0518njyy.com bdmo.nj0518.com');
INSERT INTO `cmf_domain` VALUES (790, 17, 'bdmo.nj0518.com', 0, 'bdmo.lygnj120.com bdmo.0518njyy.com bdmo.nj0518.com');
INSERT INTO `cmf_domain` VALUES (791, 17, 'bdpc.nj0518.com', 0, 'bdpc.0518njyy.com bdpc.nj0518.com sgpc.lygnjnk.cn bdpc.lygnj120.com sgpc.lygnj120.com 360pc.0518njyy.com sgpc.nakeyy.cn bdpc.njnankyy.com bdpc.lygnk.cn');
INSERT INTO `cmf_domain` VALUES (792, 17, 'bdpc.lygnj120.com', 0, 'bdpc.0518njyy.com bdpc.nj0518.com sgpc.lygnjnk.cn bdpc.lygnj120.com sgpc.lygnj120.com 360pc.0518njyy.com sgpc.nakeyy.cn bdpc.njnankyy.com bdpc.lygnk.cn');
INSERT INTO `cmf_domain` VALUES (793, 17, 'sgpc.lygnj120.com', 0, 'bdpc.0518njyy.com bdpc.nj0518.com sgpc.lygnjnk.cn bdpc.lygnj120.com sgpc.lygnj120.com 360pc.0518njyy.com sgpc.nakeyy.cn bdpc.njnankyy.com bdpc.lygnk.cn');
INSERT INTO `cmf_domain` VALUES (794, 17, 'm.lygnj120.com', 0, 'm.lygnj120.com wap.0518njyy.com bdmo.lygnjmnk.com m.0518njyy.com m.nj0518.com m.lygnjnk.cn m.lygnk.cn m.njnankyy.com m.nakeyy.cn m.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (795, 17, 'bdmo.lygnjmnk.com', 0, 'm.lygnj120.com wap.0518njyy.com bdmo.lygnjmnk.com m.0518njyy.com m.nj0518.com m.lygnjnk.cn m.lygnk.cn m.njnankyy.com m.nakeyy.cn m.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (796, 17, 'm.nj0518.com', 0, 'm.lygnj120.com wap.0518njyy.com bdmo.lygnjmnk.com m.0518njyy.com m.nj0518.com m.lygnjnk.cn m.lygnk.cn m.njnankyy.com m.nakeyy.cn m.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (797, 17, 'sgmo.lygnj120.com', 0, 'sgmo.lygnjnk.cn sgmo.lygnj120.com sgmo.nakeyy.cn 360mo.0518njyy.com');
INSERT INTO `cmf_domain` VALUES (798, 17, 'www.lygnj120.com', 0, 'www.lygnj120.com lygnj120.com www.0518njyy.com 0518njyy.com nj0518.com www.nj0518.com www.lygnjmnk.com lygnjmnk.com  lygnk.cn www.lygnk.cn njnankyy.com www.njnankyy.com  njnakeyy.com www.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (799, 17, 'www.nj0518.com', 0, 'www.lygnj120.com lygnj120.com www.0518njyy.com 0518njyy.com nj0518.com www.nj0518.com www.lygnjmnk.com lygnjmnk.com  lygnk.cn www.lygnk.cn njnankyy.com www.njnankyy.com  njnakeyy.com www.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (800, 17, 'www.lygnjmnk.com', 0, 'www.lygnj120.com lygnj120.com www.0518njyy.com 0518njyy.com nj0518.com www.nj0518.com www.lygnjmnk.com lygnjmnk.com  lygnk.cn www.lygnk.cn njnankyy.com www.njnankyy.com  njnakeyy.com www.njnakeyy.com');
INSERT INTO `cmf_domain` VALUES (801, 69, 'wap.tzhmzx.com', 0, '');
INSERT INTO `cmf_domain` VALUES (802, 84, 'm.cjyyfk.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (803, 85, 'www.0512csrl.com', 0, '');
INSERT INTO `cmf_domain` VALUES (804, 15, 'wap.csrlzx.com', 1, 'wap.csrlzx.com wapzx.csrlyy.com wap.csrlzxyy.com');
INSERT INTO `cmf_domain` VALUES (805, 85, 'wapzx.csrlyy.com', 1, 'wap.csrlzx.com wapzx.csrlyy.com wap.csrlzxyy.com');
INSERT INTO `cmf_domain` VALUES (806, 21, 'wap.csrlzxyy.com', 0, 'wap.csrlzx.com wapzx.csrlyy.com wap.csrlzxyy.com');
INSERT INTO `cmf_domain` VALUES (807, 16, 'www.cjyyfk.cn', 1, '');
INSERT INTO `cmf_domain` VALUES (808, 17, 'mnk.120lyjf.com', 0, 'mnk.120lyjf.com mnk.lyjfyy.com');
INSERT INTO `cmf_domain` VALUES (809, 17, 'tongji.qingzhifeng.com', 0, 'www.ganyutongji.cn ganyutongji.cn tongji.qingzhifeng.com');
INSERT INTO `cmf_domain` VALUES (810, 68, 'www.97dx.com', 0, '');
INSERT INTO `cmf_domain` VALUES (811, 4, 'wap.lcbd120.com', 0, '4g.0635yy.com wap.lcbdyy.com 4g.lcbdnk.com 4gzx.lcbdyy.com wap.lcbd120.com');
INSERT INTO `cmf_domain` VALUES (812, 4, '4g.0635yy.com', 0, '4g.0635yy.com wap.lcbdyy.com 4g.lcbdnk.com 4gzx.lcbdyy.com wap.lcbd120.com');
INSERT INTO `cmf_domain` VALUES (813, 4, '4g.csrlzx.com', 0, '');
INSERT INTO `cmf_domain` VALUES (814, 4, 'www.csrlzx.com', 0, 'www.csrlzx.com csrlzx.com zx.csrlyy.com');
INSERT INTO `cmf_domain` VALUES (815, 6, 'wvvw.dtzsyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (816, 6, 'www.csrayy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (817, 6, 'www.csxhmz.com', 0, '');
INSERT INTO `cmf_domain` VALUES (818, 85, 'www.cszxmr0512.com', 0, 'www.cszxmr0512.com cszxmr0512.com www.csrlyy.com csrlyy.com');
INSERT INTO `cmf_domain` VALUES (819, 85, 'www.csrlyy.com', 0, 'www.cszxmr0512.com cszxmr0512.com www.csrlyy.com csrlyy.com');
INSERT INTO `cmf_domain` VALUES (820, 16, 'www.yxsgyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (821, 16, 'm.yxsgyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (822, 17, 'mbd.rdnkjg.com', 0, '');
INSERT INTO `cmf_domain` VALUES (823, 16, 'www.rdbayy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (824, 61, '5g.hm0511.com', 0, '');
INSERT INTO `cmf_domain` VALUES (825, 61, '5g.zjhmzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (826, 58, 'nk.zjczfk.com', 0, '已关闭');
INSERT INTO `cmf_domain` VALUES (827, 17, 'm.dysghs.com', 0, '');
INSERT INTO `cmf_domain` VALUES (828, 17, 'www.dysghs.com', 0, '');
INSERT INTO `cmf_domain` VALUES (829, 17, 'sg.zjcznk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (830, 15, 'm.tl120.com', 0, 'm.tchsyy.com/tlhsyywap');
INSERT INTO `cmf_domain` VALUES (831, 61, 'sougou.zjhm0511.com', 0, 'wap.zjhmzxyy.com wap.hm0511.com wap.zjhm0511.com wap.hmzx0511.com sougou.zjhmzxyy.com 360.hm0511.com  sougou.zjhm0511.com');
INSERT INTO `cmf_domain` VALUES (832, 61, 'sougou5g.zjhm0511.com', 0, '');
INSERT INTO `cmf_domain` VALUES (833, 17, 'mfk.120lyjf.com', 0, '');
INSERT INTO `cmf_domain` VALUES (834, 15, 'fk.rdbayy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (835, 17, 'm.lygnj120.cn', 0, 'm.lygnj120.com wap.0518njyy.com bdmo.lygnjmnk.com m.0518njyy.com m.nj0518.com m.lygnjnk.cn m.lygnk.cn m.njnankyy.com m.nakeyy.cn m.njnakeyy.com m.lygnj120.cn');
INSERT INTO `cmf_domain` VALUES (836, 17, 'm.lygnk120.cn', 0, 'm.lygnj120.com wap.0518njyy.com bdmo.lygnjmnk.com m.0518njyy.com m.nj0518.com m.lygnjnk.cn m.lygnk.cn m.njnankyy.com m.nakeyy.cn m.njnakeyy.com m.lygnj120.cn m.lygnk120.cn');
INSERT INTO `cmf_domain` VALUES (837, 17, 'www.lygnj120.cn', 0, 'www.lygnj120.com lygnj120.com www.0518njyy.com 0518njyy.com nj0518.com www.nj0518.com www.lygnjmnk.com lygnjmnk.com  lygnk.cn www.lygnk.cn njnankyy.com www.njnankyy.com  njnakeyy.com www.njnakeyy.com lygnk120.cn www.lygnk120.cn lygnj120.cn www.lygnj120.cn');
INSERT INTO `cmf_domain` VALUES (838, 17, 'www.lygnk120.cn', 0, 'www.lygnj120.com lygnj120.com www.0518njyy.com 0518njyy.com nj0518.com www.nj0518.com www.lygnjmnk.com lygnjmnk.com  lygnk.cn www.lygnk.cn njnankyy.com www.njnankyy.com  njnakeyy.com www.njnakeyy.com lygnk120.cn www.lygnk120.cn lygnj120.cn www.lygnj120.cn');
INSERT INTO `cmf_domain` VALUES (839, 63, 'm.gytjnk.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (840, 61, 'mgc.jrtjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (841, 28, 'sg.dysghs.com', 0, '');
INSERT INTO `cmf_domain` VALUES (842, 17, 'sgw.dysghs.com', 0, '');
INSERT INTO `cmf_domain` VALUES (843, 69, 'sg.dypfzk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (844, 69, 'sgw.dypfzk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (845, 64, 'fuke.jyhwyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (846, 64, '4g.jyhw120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (847, 17, 'www.lyjfzk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (848, 57, 'www.wjboaiyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (849, 57, 'm.wjboaiyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (850, 61, '5g.lchmzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (851, 64, '4g.jyhwyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (852, 61, 'wap.jttjyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (853, 62, 'bdmo.lygnj120.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (854, 17, 'bdpc.lygnj120.cn', 0, 'bdpc.lygnj120.cn  bdpc.0518njyy.com  共用后台');
INSERT INTO `cmf_domain` VALUES (855, 17, 'bdpc.lygnk120.cn', 0, 'bdpc.lygnk120.cn   bdpc.0518njyy.com  共用后台');
INSERT INTO `cmf_domain` VALUES (856, 62, 'wap.tzpyyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (857, 62, 'www.tzpyyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (858, 58, '4g.zjczfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (859, 64, '0578.jyhwyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (860, 15, 'tx.tjnk120.cn', 0, 'tx.tjnk120.cn');
INSERT INTO `cmf_domain` VALUES (861, 15, 'tx3g.tjnk120.cn', 0, 'tx3g.tjnk120.cn');
INSERT INTO `cmf_domain` VALUES (862, 15, 'm.jrtjnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (863, 15, '4g.txglnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (864, 15, '4g.txglfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (865, 15, 'www.txglnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (866, 15, 'www.txglfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (867, 61, '5g.dysgzxmr.com', 0, '');
INSERT INTO `cmf_domain` VALUES (868, 64, '3g.jyhw120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (869, 16, 'wap.yxsgyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (870, 62, 'wap.tzpfkyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (871, 62, 'bdmo.lygnk120.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (872, 63, 'fuke.jttjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (873, 28, '5g.yzlt120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (874, 16, '5g.yzltnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (875, 64, 'm.jyhwyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (876, 66, 'www.tzdfpfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (877, 57, 'm.dysgyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (878, 66, 'www.tzhlpf.com', 0, '');
INSERT INTO `cmf_domain` VALUES (879, 66, 'wap.tzhlpf.com', 0, '');
INSERT INTO `cmf_domain` VALUES (880, 66, 'm.tzdfpfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (881, 16, 'mgc.yxsgyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (882, 16, 'mgc.yxsgyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (883, 15, 'www1.txglnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (884, 15, '5g.txglnk.com', 0, '与4g.txglnk.com共用');
INSERT INTO `cmf_domain` VALUES (885, 66, 'm.tzdfyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (886, 17, 'www.dysg120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (887, 17, 'm.dysg120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (888, 88, '3wtlhsyy.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (889, 88, 'bj.czganglong.com', 0, '');
INSERT INTO `cmf_domain` VALUES (890, 16, '4g.yxsgyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (891, 15, 'www.txglyy.com', 0, '与www1.txglnk.com共用');
INSERT INTO `cmf_domain` VALUES (892, 15, 'm.txglyy.com', 0, '与www1.txglnk.com共用');
INSERT INTO `cmf_domain` VALUES (893, 16, 'www.yxsgyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (894, 17, 'msg.zjcznk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (895, 15, 'sg.3g.xcjlyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (896, 87, 'm.lygnk0518.com', 0, '');
INSERT INTO `cmf_domain` VALUES (897, 87, 'm.lygnkyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (898, 87, 'www.czzxjn.com', 0, '');
INSERT INTO `cmf_domain` VALUES (899, 69, 'new.tzpfbzk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (900, 57, 'sg.jttjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (901, 63, 'sgfk.jttjyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (902, 28, 'sg.yzlt120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (903, 17, 'www.120lyjf.com', 0, '');
INSERT INTO `cmf_domain` VALUES (904, 16, 'sg.yzltnk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (905, 61, 'sougou5g.zjhmzxyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (906, 66, 'www.whgb120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (907, 61, 'sg.jttjyy.net', 0, '');
INSERT INTO `cmf_domain` VALUES (908, 66, 'm.whgb120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (909, 16, 'm.njyz8.com ', 0, '');
INSERT INTO `cmf_domain` VALUES (910, 16, 'www.njyz8.com', 0, '');
INSERT INTO `cmf_domain` VALUES (911, 2, 'www.njgrzs.com', 0, '');
INSERT INTO `cmf_domain` VALUES (912, 2, 'm.njgrzs.com', 0, '');
INSERT INTO `cmf_domain` VALUES (913, 2, 'm.njjczdm.com', 0, '');
INSERT INTO `cmf_domain` VALUES (914, 2, 'www.njjczdm.com', 0, '');
INSERT INTO `cmf_domain` VALUES (915, 14, 'www.soemyintaung.com', 0, '');
INSERT INTO `cmf_domain` VALUES (916, 64, 'sg.jyhw120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (917, 57, '5g.wjboai.com', 1, '');
INSERT INTO `cmf_domain` VALUES (918, 66, 'baidu.njgbyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (919, 16, 'www.wygryy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (920, 16, 'www.wygryy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (921, 16, 'nk.wygryy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (922, 16, 'fk.wygryy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (923, 16, '4g.wygryy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (924, 16, 'nk.wygryy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (925, 16, 'fk.wygryy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (926, 16, '4g.wygryy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (927, 88, 'www.szoyyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (928, 28, 'www.szoyyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (929, 28, 'nk.szoy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (930, 28, 'xh.szoy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (931, 28, 'zc.szoy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (932, 88, 'zc.szoyyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (933, 88, 'nk.szoyyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (934, 61, 'fk.szoyyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (935, 28, '3g.szoy120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (936, 87, 'm.rdnkjg.com', 0, '');
INSERT INTO `cmf_domain` VALUES (937, 64, 'sgnk.jyhwyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (938, 64, 'sgfk.jyhwyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (939, 47, 'mbd.changzheng120.com', 1, '');
INSERT INTO `cmf_domain` VALUES (940, 62, 'mpfb.tzpfyy.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (941, 62, 'www.80192111.com', 0, '');
INSERT INTO `cmf_domain` VALUES (942, 16, 'wap.80192111.com', 0, '');
INSERT INTO `cmf_domain` VALUES (943, 66, 'yg.njwh120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (944, 66, 'bg.njwh120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (945, 66, 'gb.njwh120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (946, 66, 'gbyy.njwh120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (947, 61, 'm.njwh025.com', 0, '');
INSERT INTO `cmf_domain` VALUES (948, 61, '4g.njwh120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (949, 61, 'wap.njwh120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (950, 16, 'm.njfs120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (951, 16, 'm.njfsyy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (952, 47, 'www.njfs120.com', 0, 'www.njfsyy.com');
INSERT INTO `cmf_domain` VALUES (953, 47, 'www.njfsyy.com', 0, 'www.njfs120.com');
INSERT INTO `cmf_domain` VALUES (954, 15, 'wap.yxba120.com', 0, '');
INSERT INTO `cmf_domain` VALUES (955, 62, 'wap.yxnke.com', 0, '加速不加速心里没点数么');
INSERT INTO `cmf_domain` VALUES (956, 62, 'www.gbyynj.com', 0, '');
INSERT INTO `cmf_domain` VALUES (957, 64, 'm.gbyynj.com', 0, '');
INSERT INTO `cmf_domain` VALUES (958, 47, 'www.njwhfk.com', 0, '');
INSERT INTO `cmf_domain` VALUES (959, 26, '4g.tznke.com', 0, '');
INSERT INTO `cmf_domain` VALUES (960, 16, 'yzltyy120.cn', 0, '');
INSERT INTO `cmf_domain` VALUES (961, 15, 'sm.0523yy.com', 0, '');
INSERT INTO `cmf_domain` VALUES (964, 3, 'aasdf', 0, '');

-- ----------------------------
-- Table structure for cmf_hook
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook`;
CREATE TABLE `cmf_hook`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统钩子表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_hook
-- ----------------------------
INSERT INTO `cmf_hook` VALUES (1, 1, 0, '应用初始化', 'app_init', 'cmf', '应用初始化');
INSERT INTO `cmf_hook` VALUES (2, 1, 0, '应用开始', 'app_begin', 'cmf', '应用开始');
INSERT INTO `cmf_hook` VALUES (3, 1, 0, '模块初始化', 'module_init', 'cmf', '模块初始化');
INSERT INTO `cmf_hook` VALUES (4, 1, 0, '控制器开始', 'action_begin', 'cmf', '控制器开始');
INSERT INTO `cmf_hook` VALUES (5, 1, 0, '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤');
INSERT INTO `cmf_hook` VALUES (6, 1, 0, '应用结束', 'app_end', 'cmf', '应用结束');
INSERT INTO `cmf_hook` VALUES (7, 1, 0, '日志write方法', 'log_write', 'cmf', '日志write方法');
INSERT INTO `cmf_hook` VALUES (8, 1, 0, '输出结束', 'response_end', 'cmf', '输出结束');
INSERT INTO `cmf_hook` VALUES (9, 1, 0, '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化');
INSERT INTO `cmf_hook` VALUES (10, 1, 0, '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化');
INSERT INTO `cmf_hook` VALUES (11, 1, 1, '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码');
INSERT INTO `cmf_hook` VALUES (12, 3, 0, '模板 body标签开始', 'body_start', '', '模板 body标签开始');
INSERT INTO `cmf_hook` VALUES (13, 3, 0, '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES (14, 3, 0, '模板底部开始', 'footer_start', '', '模板底部开始');
INSERT INTO `cmf_hook` VALUES (15, 3, 0, '模板底部开始之前', 'before_footer', '', '模板底部开始之前');
INSERT INTO `cmf_hook` VALUES (16, 3, 0, '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前');
INSERT INTO `cmf_hook` VALUES (17, 3, 0, '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES (18, 3, 0, '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始');
INSERT INTO `cmf_hook` VALUES (19, 3, 0, '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前');
INSERT INTO `cmf_hook` VALUES (20, 3, 0, '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始');
INSERT INTO `cmf_hook` VALUES (21, 3, 0, '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前');
INSERT INTO `cmf_hook` VALUES (22, 3, 1, '评论区', 'comment', '', '评论区');
INSERT INTO `cmf_hook` VALUES (23, 3, 1, '留言区', 'guestbook', '', '留言区');
INSERT INTO `cmf_hook` VALUES (24, 2, 0, '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘');
INSERT INTO `cmf_hook` VALUES (25, 4, 0, '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES (26, 4, 0, '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES (27, 2, 0, '后台登录页面', 'admin_login', 'admin', '后台登录页面');
INSERT INTO `cmf_hook` VALUES (28, 1, 1, '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');
INSERT INTO `cmf_hook` VALUES (29, 3, 0, '主要内容之后', 'after_content', '', '主要内容之后');
INSERT INTO `cmf_hook` VALUES (30, 2, 0, '文章显示之前', 'portal_before_assign_article', 'portal', '文章显示之前');
INSERT INTO `cmf_hook` VALUES (31, 2, 0, '后台文章保存之后', 'portal_admin_after_save_article', 'portal', '后台文章保存之后');
INSERT INTO `cmf_hook` VALUES (32, 2, 1, '获取上传界面', 'fetch_upload_view', 'user', '获取上传界面');
INSERT INTO `cmf_hook` VALUES (33, 3, 0, '主要内容之前', 'before_content', 'cmf', '主要内容之前');
INSERT INTO `cmf_hook` VALUES (34, 1, 0, '日志写入完成', 'log_write_done', 'cmf', '日志写入完成');
INSERT INTO `cmf_hook` VALUES (35, 1, 1, '后台模板切换', 'switch_admin_theme', 'cmf', '后台模板切换');

-- ----------------------------
-- Table structure for cmf_hook_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook_plugin`;
CREATE TABLE `cmf_hook_plugin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统钩子插件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_ipadmin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_ipadmin`;
CREATE TABLE `cmf_ipadmin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ipremark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_ipadmin
-- ----------------------------
INSERT INTO `cmf_ipadmin` VALUES (2, '121.42.156.42', '华北1');
INSERT INTO `cmf_ipadmin` VALUES (3, '114.55.144.40', '华东1');
INSERT INTO `cmf_ipadmin` VALUES (4, '121.40.190.243', '华东1');
INSERT INTO `cmf_ipadmin` VALUES (5, '115.29.223.185', '华东1');
INSERT INTO `cmf_ipadmin` VALUES (6, '114.215.190.152', '华东1');
INSERT INTO `cmf_ipadmin` VALUES (7, '139.196.15.49', '华东2');
INSERT INTO `cmf_ipadmin` VALUES (8, '139.196.46.31', '华东2');
INSERT INTO `cmf_ipadmin` VALUES (9, '139.196.15.119', '华东2');
INSERT INTO `cmf_ipadmin` VALUES (10, '139.196.240.149', '华东2');
INSERT INTO `cmf_ipadmin` VALUES (11, '139.196.188.241', '华东2');
INSERT INTO `cmf_ipadmin` VALUES (12, '139.224.24.200', '华东2');
INSERT INTO `cmf_ipadmin` VALUES (13, '139.196.49.198', '华东2');
INSERT INTO `cmf_ipadmin` VALUES (14, '47.90.79.92', '香港');
INSERT INTO `cmf_ipadmin` VALUES (15, '47.90.79.63', '香港');
INSERT INTO `cmf_ipadmin` VALUES (16, '47.90.79.121', '香港');
INSERT INTO `cmf_ipadmin` VALUES (17, '47.90.78.199', '');
INSERT INTO `cmf_ipadmin` VALUES (18, '121.40.133.174', '亚韩--华东1');
INSERT INTO `cmf_ipadmin` VALUES (19, '27.255.77.82', '');
INSERT INTO `cmf_ipadmin` VALUES (20, '27.288.83.77', '');
INSERT INTO `cmf_ipadmin` VALUES (21, '49.213.8.38', '');
INSERT INTO `cmf_ipadmin` VALUES (22, '49.213.8.126', '');
INSERT INTO `cmf_ipadmin` VALUES (23, '49.213.9.99', '');
INSERT INTO `cmf_ipadmin` VALUES (24, '58.96.177.191', '');
INSERT INTO `cmf_ipadmin` VALUES (25, '58.218.199.37', '');
INSERT INTO `cmf_ipadmin` VALUES (26, '61.155.194.43', '');
INSERT INTO `cmf_ipadmin` VALUES (27, '61.160.249.39', '');
INSERT INTO `cmf_ipadmin` VALUES (28, '61.160.251.49', '');
INSERT INTO `cmf_ipadmin` VALUES (29, '103.28.44.187', '');
INSERT INTO `cmf_ipadmin` VALUES (30, '103.28.45.116', '');
INSERT INTO `cmf_ipadmin` VALUES (31, '103.28.45.130', '');
INSERT INTO `cmf_ipadmin` VALUES (32, '103.28.46.227', '');
INSERT INTO `cmf_ipadmin` VALUES (33, '106.185.40.25', '');
INSERT INTO `cmf_ipadmin` VALUES (34, '106.185.41.236', '');
INSERT INTO `cmf_ipadmin` VALUES (35, '106.185.43.8', '');
INSERT INTO `cmf_ipadmin` VALUES (36, '106.185.47.171', '');
INSERT INTO `cmf_ipadmin` VALUES (37, '106.186.121.75', '');
INSERT INTO `cmf_ipadmin` VALUES (38, '106.187.36.198', '');
INSERT INTO `cmf_ipadmin` VALUES (39, '119.28.2.250', '香港服务器，修改网站需打开Serv-U');
INSERT INTO `cmf_ipadmin` VALUES (40, '119.28.17.249', '');
INSERT INTO `cmf_ipadmin` VALUES (41, '203.88.163.96', '');
INSERT INTO `cmf_ipadmin` VALUES (42, '203.124.12.114', '');
INSERT INTO `cmf_ipadmin` VALUES (43, '203.124.12.131', '');
INSERT INTO `cmf_ipadmin` VALUES (44, '203.124.12.159', '');
INSERT INTO `cmf_ipadmin` VALUES (45, '203.124.12.196', '');
INSERT INTO `cmf_ipadmin` VALUES (46, '203.124.12.215', '');
INSERT INTO `cmf_ipadmin` VALUES (47, '203.124.12.229', '');
INSERT INTO `cmf_ipadmin` VALUES (48, '211.42.249.47', '');
INSERT INTO `cmf_ipadmin` VALUES (49, '211.152.51.148', '');
INSERT INTO `cmf_ipadmin` VALUES (50, '218.98.35.181', '');
INSERT INTO `cmf_ipadmin` VALUES (51, '222.186.9.77', '');
INSERT INTO `cmf_ipadmin` VALUES (52, '222.186.41.70', '');
INSERT INTO `cmf_ipadmin` VALUES (53, '223.4.204.214', '');
INSERT INTO `cmf_ipadmin` VALUES (54, '223.4.208.52', '');
INSERT INTO `cmf_ipadmin` VALUES (55, '223.4.211.196', '');
INSERT INTO `cmf_ipadmin` VALUES (56, '14.17.81.26', '');
INSERT INTO `cmf_ipadmin` VALUES (57, '47.90.79.154', '');
INSERT INTO `cmf_ipadmin` VALUES (58, '47.90.79.166', '');
INSERT INTO `cmf_ipadmin` VALUES (59, '49.213.8.85', '');
INSERT INTO `cmf_ipadmin` VALUES (60, '49.213.8.95', '');
INSERT INTO `cmf_ipadmin` VALUES (61, '58.211.73.248', '');
INSERT INTO `cmf_ipadmin` VALUES (62, '61.155.150.192', '');
INSERT INTO `cmf_ipadmin` VALUES (63, '61.155.161.243', '');
INSERT INTO `cmf_ipadmin` VALUES (64, '61.155.173.250', '');
INSERT INTO `cmf_ipadmin` VALUES (65, '61.155.202.41', '');
INSERT INTO `cmf_ipadmin` VALUES (66, '61.155.214.33', '');
INSERT INTO `cmf_ipadmin` VALUES (67, '119.28.20.97', '');
INSERT INTO `cmf_ipadmin` VALUES (68, '180.150.227.9', '');
INSERT INTO `cmf_ipadmin` VALUES (69, '43.227.196.97', '');
INSERT INTO `cmf_ipadmin` VALUES (70, '116.255.169.119', '');
INSERT INTO `cmf_ipadmin` VALUES (71, '59.188.233.148', '');
INSERT INTO `cmf_ipadmin` VALUES (72, '222.189.239.151', '');
INSERT INTO `cmf_ipadmin` VALUES (73, '103.28.46.117', '');
INSERT INTO `cmf_ipadmin` VALUES (74, '103.6.222.49', '');
INSERT INTO `cmf_ipadmin` VALUES (75, '112.85.219.131', '');
INSERT INTO `cmf_ipadmin` VALUES (76, '58.218.211.197', '');
INSERT INTO `cmf_ipadmin` VALUES (77, '27.255.83.77', '');
INSERT INTO `cmf_ipadmin` VALUES (78, '61.160.251.46', '');
INSERT INTO `cmf_ipadmin` VALUES (79, '218.65.30.68', '');
INSERT INTO `cmf_ipadmin` VALUES (80, '118.244.168.44', '');
INSERT INTO `cmf_ipadmin` VALUES (81, '58.68.254.21', '');
INSERT INTO `cmf_ipadmin` VALUES (82, '211.149.236.231', '');
INSERT INTO `cmf_ipadmin` VALUES (83, '121.40.254.10', '');
INSERT INTO `cmf_ipadmin` VALUES (84, '58.211.137.222', '');
INSERT INTO `cmf_ipadmin` VALUES (85, '106.14.238.14', '');
INSERT INTO `cmf_ipadmin` VALUES (87, '60.174.237.174', '');
INSERT INTO `cmf_ipadmin` VALUES (88, '60.174.237.163', '');
INSERT INTO `cmf_ipadmin` VALUES (94, '43.277.196.97', '');
INSERT INTO `cmf_ipadmin` VALUES (95, '60.174.237.182', '');

-- ----------------------------
-- Table structure for cmf_link
-- ----------------------------
DROP TABLE IF EXISTS `cmf_link`;
CREATE TABLE `cmf_link`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT 0 COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '友情链接表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_link
-- ----------------------------
INSERT INTO `cmf_link` VALUES (1, 1, 1, 8, 'thinkcmf官网', 'http://www.thinkcmf.com', 'ThinkCMF', '', '_blank', '');

-- ----------------------------
-- Table structure for cmf_nav
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav`;
CREATE TABLE `cmf_nav`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '前台导航位置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_nav
-- ----------------------------
INSERT INTO `cmf_nav` VALUES (1, 1, '主导航', '主导航');
INSERT INTO `cmf_nav` VALUES (2, 0, '底部导航', '');

-- ----------------------------
-- Table structure for cmf_nav_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_nav_menu`;
CREATE TABLE `cmf_nav_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '前台导航菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_nav_menu
-- ----------------------------
INSERT INTO `cmf_nav_menu` VALUES (1, 1, 0, 1, 0, '首页', '', 'home', '', '0-1');

-- ----------------------------
-- Table structure for cmf_option
-- ----------------------------
DROP TABLE IF EXISTS `cmf_option`;
CREATE TABLE `cmf_option`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `option_name`(`option_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '全站配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cmf_option
-- ----------------------------
INSERT INTO `cmf_option` VALUES (1, 1, 'site_info', '{\"site_name\":\"\\u6e2f\\u9f99\\u57df\\u540d\\u67e5\\u8be2\\u7cfb\\u7edf\",\"site_seo_title\":\"\\u6e2f\\u9f99\\u57df\\u540d\\u67e5\\u8be2\\u7cfb\\u7edf\",\"site_seo_keywords\":\"\\u6e2f\\u9f99\\u57df\\u540d\\u67e5\\u8be2\\u7cfb\\u7edf\",\"site_seo_description\":\"\\u6e2f\\u9f99\\u57df\\u540d\\u67e5\\u8be2\\u7cfb\\u7edf\",\"site_icp\":\"\",\"site_admin_email\":\"\",\"site_analytics\":\"\",\"urlmode\":\"1\",\"html_suffix\":\"\"}');
INSERT INTO `cmf_option` VALUES (2, 1, 'cmf_settings', '{\"open_registration\":\"0\",\"banned_usernames\":\"\"}');
INSERT INTO `cmf_option` VALUES (3, 1, 'cdn_settings', '{\"cdn_static_root\":\"\"}');
INSERT INTO `cmf_option` VALUES (4, 1, 'admin_settings', '{\"admin_password\":\"\",\"admin_style\":\"flatadmin\"}');

-- ----------------------------
-- Table structure for cmf_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_plugin`;
CREATE TABLE `cmf_plugin`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '插件安装时间',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '插件描述',
  `config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '插件配置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '插件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_portal_category
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category`;
CREATE TABLE `cmf_portal_category`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类父id',
  `post_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类文章数',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类描述',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `list_tpl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'portal应用 文章分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_portal_category_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_category_post`;
CREATE TABLE `cmf_portal_category_post`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章id',
  `category_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `term_taxonomy_id`(`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'portal应用 分类文章对应表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_portal_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_post`;
CREATE TABLE `cmf_portal_post`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级id',
  `post_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发表者用户id',
  `post_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '查看数',
  `post_like` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞数',
  `comment_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论数',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `published_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '发布时间',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `post_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '文章内容',
  `post_content_filtered` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '处理过的文章内容',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type_status_date`(`post_type`, `post_status`, `create_time`, `id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'portal应用 文章表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cmf_portal_tag
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag`;
CREATE TABLE `cmf_portal_tag`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'portal应用 文章标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_portal_tag_post
-- ----------------------------
DROP TABLE IF EXISTS `cmf_portal_tag_post`;
CREATE TABLE `cmf_portal_tag_post`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '标签 id',
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章 id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `post_id`(`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'portal应用 标签文章对应表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_recycle_bin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_recycle_bin`;
CREATE TABLE `cmf_recycle_bin`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT 0 COMMENT '删除内容 id',
  `create_time` int(10) UNSIGNED DEFAULT 0 COMMENT '创建时间',
  `table_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = ' 回收站' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_role
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role`;
CREATE TABLE `cmf_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父角色ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT 0 COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_role
-- ----------------------------
INSERT INTO `cmf_role` VALUES (1, 0, 1, 1329633709, 1329633709, 0, '超级管理员', '拥有网站最高管理员权限！');
INSERT INTO `cmf_role` VALUES (2, 0, 1, 1329633709, 1329633709, 0, '普通管理员', '权限由最高管理员分配！');

-- ----------------------------
-- Table structure for cmf_role_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role_user`;
CREATE TABLE `cmf_role_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色 id',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色对应表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_role_user
-- ----------------------------
INSERT INTO `cmf_role_user` VALUES (2, 2, 3);

-- ----------------------------
-- Table structure for cmf_route
-- ----------------------------
DROP TABLE IF EXISTS `cmf_route`;
CREATE TABLE `cmf_route`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT 1 COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'url路由表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_slide
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '幻灯片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_slide_item
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide_item`;
CREATE TABLE `cmf_slide_item`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT 0 COMMENT '幻灯片id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '幻灯片内容',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '链接打开方式',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `slide_id`(`slide_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '幻灯片子项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_theme
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme`;
CREATE TABLE `cmf_theme`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '安装时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后升级时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为已编译模板',
  `theme` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_theme
-- ----------------------------
INSERT INTO `cmf_theme` VALUES (1, 0, 0, 0, 0, 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板');

-- ----------------------------
-- Table structure for cmf_theme_file
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme_file`;
CREATE TABLE `cmf_theme_file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `theme` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_theme_file
-- ----------------------------
INSERT INTO `cmf_theme_file` VALUES (1, 0, 10, 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (2, 0, 10, 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (3, 0, 5, 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (4, 0, 10, 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (5, 0, 10, 'simpleboot3', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (6, 0, 10, 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (7, 1, 0, 'simpleboot3', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', NULL);
INSERT INTO `cmf_theme_file` VALUES (8, 1, 1, 'simpleboot3', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', NULL);

-- ----------------------------
-- Table structure for cmf_third_party_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_third_party_user`;
CREATE TABLE `cmf_third_party_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '本站用户id',
  `last_login_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后登录时间',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'access_token过期时间',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '绑定时间',
  `login_times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录次数',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '扩展信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '第三方用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user`;
CREATE TABLE `cmf_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT 0 COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT 0 COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT 0 COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '用户积分',
  `coin` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '金币',
  `balance` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '余额',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '注册时间',
  `user_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户手机号',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_login`(`user_login`) USING BTREE,
  INDEX `user_nickname`(`user_nickname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user
-- ----------------------------
INSERT INTO `cmf_user` VALUES (1, 1, 0, 0, 1522045944, 0, 0, 0.00, 1521537117, 1, 'admin', '###879c20136c037d32edba42a6c58a8a14', 'admin', 'xujunjie_1020@sina.com', '', '', '', '127.0.0.1', '', '', NULL);
INSERT INTO `cmf_user` VALUES (3, 1, 0, 0, 1522054639, 0, 0, 0.00, 0, 1, 'xujunjie', '###36b9d52097b52761d669ef694dee4b69', '', 'xujunjie_1020@foxmail.com', '', '', '', '127.0.0.1', '', '', NULL);

-- ----------------------------
-- Table structure for cmf_user_action
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action`;
CREATE TABLE `cmf_user_action`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT 0 COMMENT '奖励次数',
  `cycle_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '周期时间值',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '执行操作的url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户操作表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user_action
-- ----------------------------
INSERT INTO `cmf_user_action` VALUES (1, 1, 1, 1, 2, 1, '用户登录', 'login', 'user', '');

-- ----------------------------
-- Table structure for cmf_user_action_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_action_log`;
CREATE TABLE `cmf_user_action_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '访问次数',
  `last_visit_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后访问时间',
  `object` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_object_action`(`user_id`, `object`, `action`) USING BTREE,
  INDEX `user_object_action_ip`(`user_id`, `object`, `action`, `ip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '访问记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_balance_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_balance_log`;
CREATE TABLE `cmf_user_balance_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户 id',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `change` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '更改余额',
  `balance` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '更改后余额',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户余额变更日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_favorite
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_favorite`;
CREATE TABLE `cmf_user_favorite`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户 id',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '收藏内容的描述',
  `table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) UNSIGNED DEFAULT 0 COMMENT '收藏内容原来的主键id',
  `create_time` int(10) UNSIGNED DEFAULT 0 COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_login_attempt
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_login_attempt`;
CREATE TABLE `cmf_user_login_attempt`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '尝试次数',
  `attempt_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '尝试登录时间',
  `locked_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '锁定时间',
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户登录尝试表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cmf_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_score_log`;
CREATE TABLE `cmf_user_score_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT 0 COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT 0 COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户操作积分等奖励日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cmf_user_token
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_token`;
CREATE TABLE `cmf_user_token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户id',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT ' 过期时间',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户客户端登录 token 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user_token
-- ----------------------------
INSERT INTO `cmf_user_token` VALUES (1, 1, 1537089143, 1521537143, '511a144690d4c14d798878e822854e8b511a144690d4c14d798878e822854e8b', 'web');
INSERT INTO `cmf_user_token` VALUES (2, 3, 1537597773, 1522045773, '8c845e80b771165d6e936c64be2759f58c845e80b771165d6e936c64be2759f5', 'web');

-- ----------------------------
-- Table structure for cmf_verification_code
-- ----------------------------
DROP TABLE IF EXISTS `cmf_verification_code`;
CREATE TABLE `cmf_verification_code`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当天已经发送成功的次数',
  `send_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后发送成功时间',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '手机邮箱数字验证码表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
