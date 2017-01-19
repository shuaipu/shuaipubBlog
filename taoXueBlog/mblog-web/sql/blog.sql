/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-01-19 10:14:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mto_attachs
-- ----------------------------
DROP TABLE IF EXISTS `mto_attachs`;
CREATE TABLE `mto_attachs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `height` int(11) NOT NULL,
  `original` varchar(255) DEFAULT NULL,
  `preview` varchar(255) DEFAULT NULL,
  `screenshot` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `to_id` bigint(20) DEFAULT NULL,
  `width` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mto_attachs
-- ----------------------------
INSERT INTO `mto_attachs` VALUES ('1', '0', '/store/orig/2017/0113/131053045fmr.png', '/store/thumbs/2017/0113/13105304xok8.png', '/store/screenshot/2017/0113/131053040t8f.png', '0', '0', '1', '0');
INSERT INTO `mto_attachs` VALUES ('2', '0', '/store/orig/2017/0113/13105304uwve.png', '/store/thumbs/2017/0113/13105304f1l3.png', '/store/screenshot/2017/0113/13105304uxgz.png', '0', '0', '1', '0');
INSERT INTO `mto_attachs` VALUES ('3', '0', '/store/orig/2017/0113/13110546tp21.jpg', '/store/thumbs/2017/0113/131105478li0.jpg', '/store/screenshot/2017/0113/13110548s9xv.jpg', '0', '0', '2', '0');
INSERT INTO `mto_attachs` VALUES ('4', '0', 'https://r1.ykimg.com/0541040858774D3D6A0A4C04601A60F2', 'https://r1.ykimg.com/0541040858774D3D6A0A4C04601A60F2', 'https://r1.ykimg.com/0541040858774D3D6A0A4C04601A60F2', '0', '1', '3', '0');

-- ----------------------------
-- Table structure for mto_auth_menu
-- ----------------------------
DROP TABLE IF EXISTS `mto_auth_menu`;
CREATE TABLE `mto_auth_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent_ids` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fynq2bfwabynqmnauw69b7ulc` (`parent_id`),
  CONSTRAINT `FK_fynq2bfwabynqmnauw69b7ulc` FOREIGN KEY (`parent_id`) REFERENCES `mto_auth_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_auth_menu
-- ----------------------------
INSERT INTO `mto_auth_menu` VALUES ('1', '根目录', '', '', '1', '/', null, null);
INSERT INTO `mto_auth_menu` VALUES ('2', '后台管理', null, 'admin', '1', 'admin', '1', null);
INSERT INTO `mto_auth_menu` VALUES ('3', '我的主页', null, '', '1', '', '1', null);
INSERT INTO `mto_auth_menu` VALUES ('4', '文章管理', null, 'posts:view', '2', 'admin/posts/list', '2', 'fa fa-clone icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES ('5', '文章修改', null, 'posts:edit', '1', null, '4', null);
INSERT INTO `mto_auth_menu` VALUES ('6', '用户管理', null, 'users:view', '3', 'admin/users/list', '2', 'fa fa-user icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES ('7', '禁用用户', null, 'users:edit', '1', '', '6', null);
INSERT INTO `mto_auth_menu` VALUES ('8', '修改密码', null, 'users:edit', '1', null, '6', null);
INSERT INTO `mto_auth_menu` VALUES ('9', '评论管理', null, 'comments:view', '4', 'admin/comments/list', '2', 'fa fa-comments-o icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES ('10', '删除评论', null, 'comments:edit', '1', null, '9', null);
INSERT INTO `mto_auth_menu` VALUES ('11', '标签管理', null, 'tags:view', '5', 'admin/tags/list', '2', 'fa fa-tags icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES ('12', '删除标签', null, 'tags:edit', '1', null, '11', null);
INSERT INTO `mto_auth_menu` VALUES ('13', '修改标签', null, 'tags:edit', '2', null, '11', null);
INSERT INTO `mto_auth_menu` VALUES ('14', '推荐标签', null, 'tags:edit', '3', null, '11', null);
INSERT INTO `mto_auth_menu` VALUES ('15', '系统配置', null, 'config:view', '6', 'admin/config/', '2', 'fa fa-sun-o icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES ('16', '修改配置', null, 'config:edit', '1', null, '15', null);
INSERT INTO `mto_auth_menu` VALUES ('17', '仪表盘', null, 'admin', '1', 'admin', '2', 'fa fa-dashboard icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES ('18', '角色管理', null, 'roles:view', '7', 'admin/roles/list', '2', 'fa fa fa-registered icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES ('19', '菜单管理', null, 'authMenus:view', '8', 'admin/authMenus/list', '2', 'fa fa-reorder icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES ('21', '菜单修改', null, 'authMenus:edit', '0', '', '19', null);
INSERT INTO `mto_auth_menu` VALUES ('22', '角色修改', null, 'roles:edit', '0', null, '18', null);
INSERT INTO `mto_auth_menu` VALUES ('23', '文章查看', null, 'posts:view', '1', '', '4', null);
INSERT INTO `mto_auth_menu` VALUES ('24', '用户查看', null, 'users:view', '1', '', '6', null);
INSERT INTO `mto_auth_menu` VALUES ('25', '评论查看', null, 'comments:view', '1', '', '9', null);
INSERT INTO `mto_auth_menu` VALUES ('26', '标签查看', null, 'tags:view', '1', '', '11', null);
INSERT INTO `mto_auth_menu` VALUES ('27', '角色查看', null, 'roles:view', '1', '', '18', null);
INSERT INTO `mto_auth_menu` VALUES ('28', '菜单查看', null, 'authMenus:view', '1', '', '19', null);
INSERT INTO `mto_auth_menu` VALUES ('29', '友情链接', null, 'friendLink:view', '8', 'admin/friendLink/list', '2', 'fa fa-link');
INSERT INTO `mto_auth_menu` VALUES ('30', '友情链接修改', null, 'friendLink:edit', '0', '', '29', null);
INSERT INTO `mto_auth_menu` VALUES ('31', '友情链接查看', null, 'friendLink:view', '0', '', '29', null);

-- ----------------------------
-- Table structure for mto_comments
-- ----------------------------
DROP TABLE IF EXISTS `mto_comments`;
CREATE TABLE `mto_comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `pid` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `to_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mto_comments
-- ----------------------------
INSERT INTO `mto_comments` VALUES ('1', '1', '发大水发', '2017-01-13 10:53:44', '0', '0', '1');
INSERT INTO `mto_comments` VALUES ('2', '4', '发的', '2017-01-16 11:18:59', '0', '0', '5');

-- ----------------------------
-- Table structure for mto_config
-- ----------------------------
DROP TABLE IF EXISTS `mto_config`;
CREATE TABLE `mto_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_99vo6d7ci4wlxruo3gd0q2jq8` (`key_`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_config
-- ----------------------------
INSERT INTO `mto_config` VALUES ('1', 'site_name', '0', '淘学博客，淘你所学');
INSERT INTO `mto_config` VALUES ('2', 'site_welcomes', '0', '淘学博客, 轻松分享');
INSERT INTO `mto_config` VALUES ('3', 'site_domain', '0', 'taoblogs.com');
INSERT INTO `mto_config` VALUES ('4', 'site_keywords', '0', '淘学博客,博客,游戏,源码分享,技术分享,娱乐,其他');
INSERT INTO `mto_config` VALUES ('5', 'site_description', '0', '淘学博客, 轻松分享你的博客经验. 便捷的文字、图片发布,扁平化的响应式设计,美观、大气,是您记录生活的最佳选择');
INSERT INTO `mto_config` VALUES ('6', 'site_editor', '1', 'ueditor');
INSERT INTO `mto_config` VALUES ('7', 'site_metas', '0', '');
INSERT INTO `mto_config` VALUES ('8', 'site_copyright', '0', '');
INSERT INTO `mto_config` VALUES ('9', 'site_icp', '0', '');
INSERT INTO `mto_config` VALUES ('10', 'site_advs_right', '0', '');
INSERT INTO `mto_config` VALUES ('11', 'image_processor', '0', 'GraphicsMagick');
INSERT INTO `mto_config` VALUES ('12', 'site_oauth_qq', '0', '');
INSERT INTO `mto_config` VALUES ('13', 'qq_app_id', '0', '');
INSERT INTO `mto_config` VALUES ('14', 'qq_app_key', '0', '');
INSERT INTO `mto_config` VALUES ('15', 'site_oauth_weibo', '0', '');
INSERT INTO `mto_config` VALUES ('16', 'weibo_client_id', '0', '');
INSERT INTO `mto_config` VALUES ('17', 'weibo_client_sercret', '0', '');
INSERT INTO `mto_config` VALUES ('18', 'site_oauth_douban', '0', '');
INSERT INTO `mto_config` VALUES ('19', 'douban_api_key', '0', '');
INSERT INTO `mto_config` VALUES ('20', 'douban_secret_key', '0', '');
INSERT INTO `mto_config` VALUES ('21', 'site_mail_host', '0', '13564615517@163.com');
INSERT INTO `mto_config` VALUES ('22', 'site_mail_username', '0', '13564615517');
INSERT INTO `mto_config` VALUES ('23', 'site_mail_password', '0', 'shuaipu812');

-- ----------------------------
-- Table structure for mto_favors
-- ----------------------------
DROP TABLE IF EXISTS `mto_favors`;
CREATE TABLE `mto_favors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `own_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mto_favors
-- ----------------------------

-- ----------------------------
-- Table structure for mto_feeds
-- ----------------------------
DROP TABLE IF EXISTS `mto_feeds`;
CREATE TABLE `mto_feeds` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `own_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mto_feeds
-- ----------------------------
INSERT INTO `mto_feeds` VALUES ('1', '4', '2017-01-13 10:53:05', '4', '1', '1');
INSERT INTO `mto_feeds` VALUES ('2', '4', '2017-01-13 11:05:49', '4', '2', '1');
INSERT INTO `mto_feeds` VALUES ('3', '4', '2017-01-13 16:32:24', '4', '3', '1');
INSERT INTO `mto_feeds` VALUES ('4', '4', '2017-01-16 11:16:50', '4', '4', '1');
INSERT INTO `mto_feeds` VALUES ('5', '4', '2017-01-16 11:18:44', '4', '5', '1');
INSERT INTO `mto_feeds` VALUES ('6', '4', '2017-01-16 12:53:16', '4', '6', '1');

-- ----------------------------
-- Table structure for mto_follows
-- ----------------------------
DROP TABLE IF EXISTS `mto_follows`;
CREATE TABLE `mto_follows` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `follow_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t38um6ivtsbk34xph98levx4x` (`follow_id`),
  KEY `FK_3grh3868ek909r524m0kphmux` (`user_id`),
  CONSTRAINT `FK_3grh3868ek909r524m0kphmux` FOREIGN KEY (`user_id`) REFERENCES `mto_users` (`id`),
  CONSTRAINT `FK_t38um6ivtsbk34xph98levx4x` FOREIGN KEY (`follow_id`) REFERENCES `mto_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mto_follows
-- ----------------------------

-- ----------------------------
-- Table structure for mto_friend_link
-- ----------------------------
DROP TABLE IF EXISTS `mto_friend_link`;
CREATE TABLE `mto_friend_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mto_friend_link
-- ----------------------------

-- ----------------------------
-- Table structure for mto_group
-- ----------------------------
DROP TABLE IF EXISTS `mto_group`;
CREATE TABLE `mto_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `template` varchar(16) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_group
-- ----------------------------
INSERT INTO `mto_group` VALUES ('1', 'blog', '文章', '写文章', 'fa fa-pencil-square', 'blog', '0');
INSERT INTO `mto_group` VALUES ('2', 'image', '图片', '发图片', 'fa fa-camera', 'image', '0');
INSERT INTO `mto_group` VALUES ('3', 'video', '视频', '搬视频', 'fa fa-toggle-right', 'video', '0');
INSERT INTO `mto_group` VALUES ('4', 'ask', '问答', '提问题', 'fa fa-question-circle', 'ask', '0');

-- ----------------------------
-- Table structure for mto_logs
-- ----------------------------
DROP TABLE IF EXISTS `mto_logs`;
CREATE TABLE `mto_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` date DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mto_logs
-- ----------------------------

-- ----------------------------
-- Table structure for mto_menu
-- ----------------------------
DROP TABLE IF EXISTS `mto_menu`;
CREATE TABLE `mto_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(18) DEFAULT NULL,
  `target` varchar(18) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_menu
-- ----------------------------
INSERT INTO `mto_menu` VALUES ('1', '博客', '_self', 'g/blog', '0', '0');
INSERT INTO `mto_menu` VALUES ('2', '视频', '_self', 'g/video', '0', '0');
INSERT INTO `mto_menu` VALUES ('3', '问答', '_self', 'g/ask', '0', '0');
INSERT INTO `mto_menu` VALUES ('4', '发现', '_self', 'tags', '0', '0');
INSERT INTO `mto_menu` VALUES ('5', '走廊', '_self', 'gallery?g=2', '0', '0');
INSERT INTO `mto_menu` VALUES ('6', '分享', '_self', 'g/share', '0', '0');

-- ----------------------------
-- Table structure for mto_notify
-- ----------------------------
DROP TABLE IF EXISTS `mto_notify`;
CREATE TABLE `mto_notify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `event` int(11) NOT NULL,
  `from_id` bigint(20) DEFAULT NULL,
  `own_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mto_notify
-- ----------------------------
INSERT INTO `mto_notify` VALUES ('1', '2017-01-16 11:18:59', '3', '4', '4', '5', '0');

-- ----------------------------
-- Table structure for mto_posts
-- ----------------------------
DROP TABLE IF EXISTS `mto_posts`;
CREATE TABLE `mto_posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) DEFAULT NULL,
  `comments` int(11) NOT NULL,
  `content` longtext,
  `created` datetime DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `favors` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `group_` int(11) DEFAULT NULL,
  `images` int(11) NOT NULL,
  `last_image_id` bigint(20) DEFAULT NULL,
  `markdown` longtext,
  `privacy` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `views` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mto_posts
-- ----------------------------
INSERT INTO `mto_posts` VALUES ('1', '4', '0', '<p>发大水发啊阿萨德范德萨水电费啥的</p>', '2017-01-13 10:53:04', 'ueditor', '0', '0', '2', '2', '2', null, '0', '0', '发大水发啊阿萨德范德萨水电费啥的', '放大放大发大水', '范德萨发送的发送是', '1');
INSERT INTO `mto_posts` VALUES ('2', '4', '0', '<p>范德萨发送</p>', '2017-01-13 11:05:49', 'ueditor', '0', '0', '2', '1', '3', null, '0', '0', '范德萨发送', '范德萨', 'javaxxx', '4');
INSERT INTO `mto_posts` VALUES ('3', '4', '0', '<p>在远得知琦琦破坏佳一创业后十分生气，为此他和琦琦提出分手。在远在云顶的权限被父亲取消，气愤的他要琦琦帮自己对付芷晴。佳一对做账之事一窍不通，陈母督促其学习基础会计，佳一无奈应允。石磊派人假扮AM集团的人与芷晴谈合作，芷晴被骗的人财两空，陈曦见状十分心疼芷晴。陈曦替芷晴买避孕药却被佳一发现，二人发生争执。芷晴当众指出在远陷害自己，随后她向志高提出辞职。</p>', '2017-01-13 16:32:23', 'ueditor', '0', '0', '3', '1', '4', null, '0', '0', '在远得知琦琦破坏佳一创业后十分生气，为此他和琦琦提出分手。在远在云顶的权限被父亲取消，气愤的他要琦琦帮自己对付芷晴。佳一对做账之事一窍不通，陈母督促其学习基础会计，佳一无奈应允。石磊派人假扮AM集团的人与芷晴谈合作，芷晴被骗的人财两空，陈曦见状十分心疼芷晴。陈曦替芷晴买避孕药却被佳一发现，二人发生争执。芷晴当众指出在远陷害自己，随后她向志高提出辞职。', '', '守护丽人 23', '7');
INSERT INTO `mto_posts` VALUES ('4', '4', '0', '<p>32323</p>', '2017-01-16 11:16:50', 'ueditor', '0', '0', '1', '0', '0', null, '0', '0', '32323', '323', '3232', '0');
INSERT INTO `mto_posts` VALUES ('5', '4', '1', '<p>范德萨发</p>', '2017-01-16 11:18:44', 'ueditor', '0', '0', '4', '0', '0', null, '0', '0', '范德萨发', '3', '范德萨3333333333333', '1');
INSERT INTO `mto_posts` VALUES ('6', '4', '0', '<p><img src=\"/shuaipublogs/store/thumbs/2017/0116/16125308x7jh.png\" title=\"\" alt=\"\"/></p>', '2017-01-16 12:53:16', 'ueditor', '0', '0', '1', '0', '0', null, '0', '0', '', '2121', '固定固定', '0');

-- ----------------------------
-- Table structure for mto_posts_attribute
-- ----------------------------
DROP TABLE IF EXISTS `mto_posts_attribute`;
CREATE TABLE `mto_posts_attribute` (
  `id` bigint(20) NOT NULL,
  `video_body` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mto_posts_attribute
-- ----------------------------
INSERT INTO `mto_posts_attribute` VALUES ('3', '<div id=\'youkuplayer\' class=\'player\'></div><script type=\"text/javascript\" src=\"http://player.youku.com/jsapi\">player = new YKU.Player(\'youkuplayer\',{styleid: \'0\',client_id: \'7c068d0cb01cb88c\',vid: \'XMjE5OTAzODczMg==\' }); </script>', 'http://v.youku.com/v_show/id_XMjE5OTAzODczMg==.html?spm=a2hww.20023042.m_230771.5~5!2~5~5~5~5~A');

-- ----------------------------
-- Table structure for mto_role
-- ----------------------------
DROP TABLE IF EXISTS `mto_role`;
CREATE TABLE `mto_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_role
-- ----------------------------
INSERT INTO `mto_role` VALUES ('1', '管理员');
INSERT INTO `mto_role` VALUES ('2', '普通用户');
INSERT INTO `mto_role` VALUES ('3', '半个管理员');

-- ----------------------------
-- Table structure for mto_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `mto_role_menu`;
CREATE TABLE `mto_role_menu` (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  KEY `FK_td8ih8aorlkpyop3gemfqxmbt` (`menu_id`),
  KEY `FK_5o5vaxfyg0d1qa0142dnkruiv` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_role_menu
-- ----------------------------
INSERT INTO `mto_role_menu` VALUES ('1', '1');
INSERT INTO `mto_role_menu` VALUES ('1', '2');
INSERT INTO `mto_role_menu` VALUES ('1', '4');
INSERT INTO `mto_role_menu` VALUES ('1', '5');
INSERT INTO `mto_role_menu` VALUES ('1', '23');
INSERT INTO `mto_role_menu` VALUES ('1', '6');
INSERT INTO `mto_role_menu` VALUES ('1', '7');
INSERT INTO `mto_role_menu` VALUES ('1', '8');
INSERT INTO `mto_role_menu` VALUES ('1', '24');
INSERT INTO `mto_role_menu` VALUES ('1', '9');
INSERT INTO `mto_role_menu` VALUES ('1', '10');
INSERT INTO `mto_role_menu` VALUES ('1', '25');
INSERT INTO `mto_role_menu` VALUES ('1', '11');
INSERT INTO `mto_role_menu` VALUES ('1', '12');
INSERT INTO `mto_role_menu` VALUES ('1', '13');
INSERT INTO `mto_role_menu` VALUES ('1', '14');
INSERT INTO `mto_role_menu` VALUES ('1', '26');
INSERT INTO `mto_role_menu` VALUES ('1', '15');
INSERT INTO `mto_role_menu` VALUES ('1', '16');
INSERT INTO `mto_role_menu` VALUES ('1', '17');
INSERT INTO `mto_role_menu` VALUES ('1', '18');
INSERT INTO `mto_role_menu` VALUES ('1', '22');
INSERT INTO `mto_role_menu` VALUES ('1', '27');
INSERT INTO `mto_role_menu` VALUES ('1', '19');
INSERT INTO `mto_role_menu` VALUES ('1', '21');
INSERT INTO `mto_role_menu` VALUES ('1', '28');
INSERT INTO `mto_role_menu` VALUES ('1', '3');
INSERT INTO `mto_role_menu` VALUES ('1', '29');
INSERT INTO `mto_role_menu` VALUES ('1', '30');
INSERT INTO `mto_role_menu` VALUES ('1', '31');

-- ----------------------------
-- Table structure for mto_tags
-- ----------------------------
DROP TABLE IF EXISTS `mto_tags`;
CREATE TABLE `mto_tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(11) NOT NULL,
  `hots` int(11) NOT NULL,
  `last_post_id` bigint(20) DEFAULT NULL,
  `posts` int(11) NOT NULL,
  `locked` int(11) NOT NULL,
  `img_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mto_tags
-- ----------------------------
INSERT INTO `mto_tags` VALUES ('1', '心情', '1', '4', '0', '0', '0', '/store/find/spring.png');
INSERT INTO `mto_tags` VALUES ('2', '摄影', '1', '4', '0', '0', '0', '/store/find/photo.png');
INSERT INTO `mto_tags` VALUES ('3', 'IT', '1', '4', '0', '0', '0', '/store/find/itimg.jpg');
INSERT INTO `mto_tags` VALUES ('5', '源码', '1', '5', '0', '0', '0', '/store/find/open.png');
INSERT INTO `mto_tags` VALUES ('6', '技术问答', '1', '7', '0', '0', '0', '/store/find/jiaoliu.png');
INSERT INTO `mto_tags` VALUES ('7', '实用工具分享', '1', '8', '0', '0', '0', '/store/find/tools.png');
INSERT INTO `mto_tags` VALUES ('8', '323', '0', '2', '4', '1', '0', null);
INSERT INTO `mto_tags` VALUES ('9', '3', '0', '1', '5', '1', '0', null);
INSERT INTO `mto_tags` VALUES ('10', '2121', '0', '0', '6', '1', '0', null);

-- ----------------------------
-- Table structure for mto_users
-- ----------------------------
DROP TABLE IF EXISTS `mto_users`;
CREATE TABLE `mto_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT '/assets/images/ava/default.png',
  `updated` datetime DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `source` int(11) NOT NULL,
  `active_email` int(11) DEFAULT NULL,
  `comments` int(11) NOT NULL,
  `fans` int(11) NOT NULL,
  `favors` int(11) NOT NULL,
  `follows` int(11) NOT NULL,
  `posts` int(11) NOT NULL,
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_users
-- ----------------------------
INSERT INTO `mto_users` VALUES ('1', '2015-08-06 17:52:41', 'admin@mtons.com', '2017-01-16 11:53:17', null, '3TGCQF25BLHU9R7IQUITN0FCC5', '0', 'admin', '小蒲', '/store/ava/000/00/00/01_100.jpg', '2015-07-26 11:08:36', '0', '1', '0', '1', '1', '0', '0', '0', '0', '');
INSERT INTO `mto_users` VALUES ('4', '2017-01-12 17:51:49', '1426090908@qq.com', '2017-01-18 17:19:20', null, '3ABVSMMDKPGOAOMVG2P7HVGCJF', '0', 'shuaipu', '测试1', '/assets/images/ava/default.png', null, '0', null, '0', '0', '1', '0', '0', '0', '6', null);
INSERT INTO `mto_users` VALUES ('5', '2017-01-12 17:55:10', '2672260633@qq.com', null, null, '3931MUEQD1939MQMLM4AISPVNE', '0', 'aaaaa', '测试2', '/assets/images/ava/default.png', null, '0', null, '0', '0', '0', '0', '0', '0', '0', null);

-- ----------------------------
-- Table structure for mto_users_open_oauth
-- ----------------------------
DROP TABLE IF EXISTS `mto_users_open_oauth`;
CREATE TABLE `mto_users_open_oauth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_token` varchar(255) DEFAULT NULL,
  `expire_in` varchar(255) DEFAULT NULL,
  `oauth_code` varchar(255) DEFAULT NULL,
  `oauth_type` int(11) DEFAULT NULL,
  `oauth_user_id` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mto_users_open_oauth
-- ----------------------------

-- ----------------------------
-- Table structure for mto_user_role
-- ----------------------------
DROP TABLE IF EXISTS `mto_user_role`;
CREATE TABLE `mto_user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `FK_fhtla2vc199mv0ru2r2kvakha` (`role_id`),
  KEY `FK_b4m7ef0uvkr4efrscf8r1ehy2` (`user_id`),
  CONSTRAINT `FK_b4m7ef0uvkr4efrscf8r1ehy2` FOREIGN KEY (`user_id`) REFERENCES `mto_users` (`id`),
  CONSTRAINT `FK_fhtla2vc199mv0ru2r2kvakha` FOREIGN KEY (`role_id`) REFERENCES `mto_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mto_user_role
-- ----------------------------
INSERT INTO `mto_user_role` VALUES ('1', '1');
INSERT INTO `mto_user_role` VALUES ('1', '2');

-- ----------------------------
-- Table structure for mto_verify
-- ----------------------------
DROP TABLE IF EXISTS `mto_verify`;
CREATE TABLE `mto_verify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(60) NOT NULL,
  `created` datetime NOT NULL,
  `expired` datetime NOT NULL,
  `status` int(11) DEFAULT NULL,
  `target` varchar(96) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_m7p0b526c4xlgjn787t22om2g` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mto_verify
-- ----------------------------
INSERT INTO `mto_verify` VALUES ('1', '8987832226', '2017-01-12 17:37:28', '2017-01-12 18:07:28', '0', '1426090908@qq.com', null, '1', '2');
INSERT INTO `mto_verify` VALUES ('2', '0416150431', '2017-01-12 17:43:09', '2017-01-12 18:13:09', '0', '2672260633@qq.com', null, '1', '3');
INSERT INTO `mto_verify` VALUES ('3', '5635038759', '2017-01-12 17:51:49', '2017-01-12 18:21:49', '0', '1426090908@qq.com', null, '1', '4');
INSERT INTO `mto_verify` VALUES ('4', '2676352890', '2017-01-12 17:55:10', '2017-01-12 18:25:10', '0', '2672260633@qq.com', null, '1', '5');
