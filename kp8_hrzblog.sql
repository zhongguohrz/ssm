/*
Navicat MySQL Data Transfer

Source Server         : xm
Source Server Version : 100116
Source Host           : localhost:3306
Source Database       : kp8_hrzblog

Target Server Type    : MYSQL
Target Server Version : 100116
File Encoding         : 65001

Date: 2019-01-09 14:18:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(255) NOT NULL COMMENT '文章标题',
  `article_label` varchar(255) NOT NULL COMMENT '定义文章的标签',
  `article_keyword` varchar(255) DEFAULT NULL COMMENT '文章关键字',
  `article_text` text NOT NULL COMMENT '发表文章内容',
  `article_describe` text NOT NULL COMMENT '文章描述',
  `article_state` varchar(255) DEFAULT NULL COMMENT ' 1 公开 2加密(匿名)',
  `uid` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `article_titleimg` varchar(255) DEFAULT NULL,
  `article_tiem` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `adfasd` (`cid`),
  CONSTRAINT `adfasd` FOREIGN KEY (`cid`) REFERENCES `column` (`id`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('36', 'java发展', 'java,编程', '计算机编程语言', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">20世纪90年代，硬件领域出现了单片式计算机系统，这种价格低廉的系统一出现就立即引起了自动控制领域人员的注意，因为使用它可以大幅度提升消费类电子产品</span><em style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">（如电视机顶盒、面包烤箱、移动电话等）</em><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">的</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%99%BA%E8%83%BD%E5%8C%96\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">智能化</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">程度。Sun公司为了抢占市场先机，在1991年成立了一个称为Green的项目小组，</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%B8%95%E7%89%B9%E9%87%8C%E5%85%8B/4831889\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">帕特里克</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%A9%B9%E5%A7%86%E6%96%AF%C2%B7%E9%AB%98%E6%96%AF%E6%9E%97\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">詹姆斯·高斯林</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">、麦克·舍林丹和其他几个工程师一起组成的工作小组在</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%8A%A0%E5%88%A9%E7%A6%8F%E5%B0%BC%E4%BA%9A\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">加利福尼亚</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">州</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%97%A8%E6%B4%9B%E5%B8%95%E5%85%8B\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">门洛帕克</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">市沙丘路的一个小工作室里面研究开发新技术，专攻计算机在家电产品上的嵌入式应用。</span></p>', '1997年2月，JDK 1.1面世，在随后的3周时间里，达到了22万次的下载量。4月2日，Java One会球', '1', '5', '11', 'image/1afb8c3b-3e47-4757-ada7-6cc435318780.jpeg', '2019-01-08 21:17:42');
INSERT INTO `article` VALUES ('37', 'java信息', 'java', 'java信息介绍', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">由于在开发Oak语言时，尚且不存在运行字节码的硬件平台，所以为了在开发时可以对这种语言进行实验研究，他们就在已有的硬件和软件平台基础上，按照自己所指定的规范，用软件建设了一个运行平台，整个系统除了比C++更加简单之外，没有什么大的区别。1992年的夏天，当Oak语言开发成功后，研究者们向硬件生产商进行演示了Green操作系统、Oak的程序设计语言、类库和其硬件，以说服他们使用Oak语言生产硬件芯片，但是，硬件生产商并未对此产生极大的热情。因为他们认为，在所有人对Oak语言还一无所知的情况下，就生产硬件产品的风险实在太大了，所以Oak语言也就因为缺乏硬件的支持而无法进入市场，从而被搁置了下来。</span></p>', 'java是一门编程', '1', '5', '11', 'image/3695a374-76c8-4ee3-a5ef-f5230ac5471a.jpeg', '2019-01-08 21:20:31');
INSERT INTO `article` VALUES ('38', 'java', 'java,javaee', 'javaee', '<p>java</p>', 'java', '1', '5', '11', 'image/fa4d8466-9a25-4de6-8a24-57b667228339.jpeg', '2019-01-09 11:54:57');

-- ----------------------------
-- Table structure for column
-- ----------------------------
DROP TABLE IF EXISTS `column`;
CREATE TABLE `column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `column_name` varchar(255) NOT NULL COMMENT '栏目名称',
  `column_keyword` varchar(255) DEFAULT NULL COMMENT '栏目关键字',
  `column_text` varchar(255) NOT NULL COMMENT '栏目内容',
  `column_tiem` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '栏目发表时间',
  `uid` int(11) NOT NULL,
  `column_state` varchar(255) DEFAULT NULL,
  `column_alias` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dfsf` (`uid`),
  CONSTRAINT `dfsf` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of column
-- ----------------------------
INSERT INTO `column` VALUES ('11', 'java', 'java', '学习交流', '2019-01-08 21:13:44', '5', '1', 'javaweb');
INSERT INTO `column` VALUES ('12', 'php', 'php', 'php论坛', '2019-01-08 21:14:10', '5', '1', 'php标签');
INSERT INTO `column` VALUES ('13', '.net论坛', '.net', '交流学习', '2019-01-08 21:14:48', '5', '1', 'net');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_ip` varchar(255) NOT NULL COMMENT '评论者ip',
  `comment_text` text NOT NULL COMMENT '评论内容',
  `comment_tiem` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '评论发表时间',
  `comment_address` varchar(255) DEFAULT NULL COMMENT '评论发表地址',
  `comment_state` varchar(255) DEFAULT NULL COMMENT '评论状态',
  `aid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dfgsdg` (`aid`),
  KEY `fddsf` (`uid`),
  CONSTRAINT `dfgsdg` FOREIGN KEY (`aid`) REFERENCES `article` (`id`),
  CONSTRAINT `fddsf` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('16', '117.136.88.54', 'java语言', '2019-01-09 09:31:13', '湖南省长沙市', '1', '37', '5');

-- ----------------------------
-- Table structure for error_log
-- ----------------------------
DROP TABLE IF EXISTS `error_log`;
CREATE TABLE `error_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `error_name` text,
  `error_url` varchar(255) DEFAULT NULL,
  `error_tiem` datetime DEFAULT NULL,
  `error_alias` varchar(255) DEFAULT NULL,
  `error_state` varchar(255) DEFAULT NULL,
  `error_statetiem` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of error_log
-- ----------------------------
INSERT INTO `error_log` VALUES ('59', 'org.springframework.dao.DataIntegrityViolationException: \r\n### Error querying database.  Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'id\' in where clause is ambiguous\r\n### The error may exist in file [D:\\maven\\javassmblog\\kp8hrzblog\\target\\classes\\com\\hrz\\mappers\\User.xml]\r\n### The error may involve com.hrz.dao.UserDao.getUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select  u.* ,l.id lid,l.log_tiem ,a.id aids from user u  left join user_log l on  l.uid =u.id   left join  article a on a.uid=u.id   where  1=1                            and  id=?                                            and  user_state != 3\r\n### Cause: com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'id\' in where clause is ambiguous\n; SQL []; Column \'id\' in where clause is ambiguous; nested exception is com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Column \'id\' in where clause is ambiguous', 'User/updateuserBo.do', '2019-01-09 08:38:25', '修改用户信息失败', '2', '2019-01-09 09:29:24');
INSERT INTO `error_log` VALUES ('60', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 11:50:33', '判断该用户是否存在', '1', '2019-01-09 11:50:33');
INSERT INTO `error_log` VALUES ('61', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 11:50:36', '判断该用户是否存在', '1', '2019-01-09 11:50:36');
INSERT INTO `error_log` VALUES ('62', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 11:51:02', '判断该用户是否存在', '1', '2019-01-09 11:51:02');
INSERT INTO `error_log` VALUES ('63', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 11:51:14', '判断该用户是否存在', '1', '2019-01-09 11:51:14');
INSERT INTO `error_log` VALUES ('64', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 11:53:19', '判断该用户是否存在', '1', '2019-01-09 11:53:19');
INSERT INTO `error_log` VALUES ('65', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 11:55:08', '判断该用户是否存在', '1', '2019-01-09 11:55:08');
INSERT INTO `error_log` VALUES ('66', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 11:55:10', '判断该用户是否存在', '1', '2019-01-09 11:55:10');
INSERT INTO `error_log` VALUES ('67', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 12:01:23', '判断该用户是否存在', '1', '2019-01-09 12:01:23');
INSERT INTO `error_log` VALUES ('68', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 12:02:37', '判断该用户是否存在', '1', '2019-01-09 12:02:37');
INSERT INTO `error_log` VALUES ('69', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 12:02:48', '判断该用户是否存在', '1', '2019-01-09 12:02:48');
INSERT INTO `error_log` VALUES ('70', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 12:03:24', '判断该用户是否存在', '1', '2019-01-09 12:03:24');
INSERT INTO `error_log` VALUES ('71', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 12:04:15', '判断该用户是否存在', '1', '2019-01-09 12:04:15');
INSERT INTO `error_log` VALUES ('72', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 12:04:18', '判断该用户是否存在', '1', '2019-01-09 12:04:18');
INSERT INTO `error_log` VALUES ('73', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 12:04:21', '判断该用户是否存在', '1', '2019-01-09 12:04:21');
INSERT INTO `error_log` VALUES ('74', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 12:05:24', '判断该用户是否存在', '1', '2019-01-09 12:05:24');
INSERT INTO `error_log` VALUES ('75', 'java.lang.NullPointerException', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 12:10:51', '判断该用户是否存在', '1', '2019-01-09 12:10:51');
INSERT INTO `error_log` VALUES ('76', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 12:43:07', '判断该用户是否存在', '1', '2019-01-09 12:43:07');
INSERT INTO `error_log` VALUES ('77', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserIdcardisRo.do', '2019-01-09 13:35:37', '前台身份证检查', '1', '2019-01-09 13:35:37');
INSERT INTO `error_log` VALUES ('78', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', 'AjaxRo/getuserPhoneisRo.do', '2019-01-09 13:40:24', '判断该电话是否存在', '1', '2019-01-09 13:40:24');
INSERT INTO `error_log` VALUES ('79', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', 'AjaxRo/getuserPhoneisRo.do', '2019-01-09 13:40:34', '判断该电话是否存在', '1', '2019-01-09 13:40:34');
INSERT INTO `error_log` VALUES ('80', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', 'AjaxRo/getuserPhoneisRo.do', '2019-01-09 13:41:29', '判断该电话是否存在', '1', '2019-01-09 13:41:29');
INSERT INTO `error_log` VALUES ('81', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', 'AjaxRo/getuserPhoneisRo.do', '2019-01-09 13:41:32', '判断该电话是否存在', '1', '2019-01-09 13:41:32');
INSERT INTO `error_log` VALUES ('82', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 2', 'AjaxRo/getuserPhoneisRo.do', '2019-01-09 13:41:44', '判断该电话是否存在', '1', '2019-01-09 13:41:44');
INSERT INTO `error_log` VALUES ('83', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 13:50:48', '判断该用户是否存在', '1', '2019-01-09 13:50:48');
INSERT INTO `error_log` VALUES ('84', 'org.mybatis.spring.MyBatisSystemException: nested exception is org.apache.ibatis.exceptions.TooManyResultsException: Expected one result (or null) to be returned by selectOne(), but found: 3', 'AjaxRo/getuserAccountnameisRo.do', '2019-01-09 13:50:52', '判断该用户是否存在', '1', '2019-01-09 13:50:52');

-- ----------------------------
-- Table structure for friendlylink
-- ----------------------------
DROP TABLE IF EXISTS `friendlylink`;
CREATE TABLE `friendlylink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) DEFAULT NULL COMMENT '链接名称',
  `link_url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `link_state` varchar(255) DEFAULT NULL COMMENT '链接状态',
  `uid` int(11) DEFAULT NULL,
  `link_tiem` datetime DEFAULT CURRENT_TIMESTAMP,
  `link_text` text,
  PRIMARY KEY (`id`),
  KEY `fdsfadf` (`uid`),
  CONSTRAINT `fdsfadf` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friendlylink
-- ----------------------------
INSERT INTO `friendlylink` VALUES ('2', '个人博客', 'www.aaa.com', '1', '5', '2018-12-25 11:45:09', 'dsf');
INSERT INTO `friendlylink` VALUES ('3', '个人主页', 'www.hrz.com', '1', '5', '2018-12-25 16:16:19', 'dfsafd');
INSERT INTO `friendlylink` VALUES ('4', '百度', 'www.baidu.com', '1', '5', '2018-12-27 14:46:29', 'sdfafdasdfasdf');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_tiem` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '公告时间',
  `notice_text` text NOT NULL,
  `notice_state` varchar(255) DEFAULT NULL COMMENT '公告状态 1 公开 2加密(匿名)',
  `uid` int(11) DEFAULT NULL,
  `notice_title` varchar(255) DEFAULT NULL COMMENT '公告标题',
  `notice_describe` varchar(255) DEFAULT NULL,
  `notice_keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  PRIMARY KEY (`id`),
  KEY `aadsf` (`uid`),
  CONSTRAINT `aadsf` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('16', '2019-01-08 21:19:09', '<p>注册可联系2722158321@qq.com</p>', '1', '5', '欢迎光临本博客', '注册提示', '注册');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户表id',
  `user_username` varchar(255) NOT NULL COMMENT '用户名',
  `user_accountname` varchar(255) DEFAULT NULL COMMENT '用户账号',
  `user_accountpassword` varchar(255) DEFAULT NULL COMMENT '用户注密码',
  `user_tiem` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '用户注册时间',
  `user_phone` varchar(255) DEFAULT NULL COMMENT '用户电话号码',
  `user_state` varchar(255) DEFAULT NULL COMMENT '用户状态',
  `user_salt` varchar(255) DEFAULT '' COMMENT '加盐的值',
  `user_idcard` varchar(255) DEFAULT NULL COMMENT '绑定身份证',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('5', 'zs', 'hrz', '3bae4bf51564b19ea8b76a5babb4951d', '2019-01-09 09:46:52', '13677431016', '4', 'hrz', '430522200011131417');
INSERT INTO `user` VALUES ('9', 'wife', 'wife', 'f753c64cb309de5041ce04dc1c3d22e4', '2019-01-08 21:07:28', '15807393148', '4', 'shen123123123', '430524200311278689');
INSERT INTO `user` VALUES ('10', 'SSD', 'CCCP', '58661496c76506dcf24edff89c179426', '2019-01-09 13:42:08', '13677431019', '1', '!!!', '430503200107171516');
INSERT INTO `user` VALUES ('11', 'zhujing', '3391239126', '7c663ff6f1fbbd33c30694eea6623935', '2019-01-09 14:12:02', '14725836911', '1', '123456', '430503200112125514');

-- ----------------------------
-- Table structure for user_log
-- ----------------------------
DROP TABLE IF EXISTS `user_log`;
CREATE TABLE `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户日志表id',
  `log_tiem` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '日志时间',
  `log_ip` varchar(255) NOT NULL COMMENT '用户ip',
  `log_state` varchar(255) NOT NULL COMMENT '日志状态 1 访问记录  && 2 登入记录 ',
  `uid` int(11) NOT NULL COMMENT '用户表关联',
  PRIMARY KEY (`id`),
  KEY `aaa` (`uid`),
  CONSTRAINT `aaa` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=648 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_log
-- ----------------------------
INSERT INTO `user_log` VALUES ('642', '2019-01-09 09:38:47', '192.168.43.219', '3', '10');
INSERT INTO `user_log` VALUES ('643', '2019-01-09 09:39:16', '192.168.43.219', '3', '5');
INSERT INTO `user_log` VALUES ('644', '2019-01-09 09:47:12', '192.168.43.219', '3', '5');
INSERT INTO `user_log` VALUES ('645', '2019-01-09 11:51:58', '192.168.43.219', '3', '5');
INSERT INTO `user_log` VALUES ('646', '2019-01-09 11:54:04', '192.168.43.219', '3', '5');
INSERT INTO `user_log` VALUES ('647', '2019-01-09 14:15:39', '192.168.43.219', '3', '11');

-- ----------------------------
-- Table structure for user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_permissions`;
CREATE TABLE `user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL COMMENT '用户角色名',
  `permission` varchar(255) NOT NULL COMMENT '用户角色所具备的权限',
  `url` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_permissions
-- ----------------------------
INSERT INTO `user_permissions` VALUES ('1', 'user', 'delete', 'index.do', '1');
INSERT INTO `user_permissions` VALUES ('2', 'user', 'select', 'userlogselectBo', '1');
INSERT INTO `user_permissions` VALUES ('3', 'user', 'insert', 'add', '1');
INSERT INTO `user_permissions` VALUES ('4', 'user', 'update', 'u', '1');
INSERT INTO `user_permissions` VALUES ('5', 'admin', 'deleteAll', '1', '1');
INSERT INTO `user_permissions` VALUES ('6', 'admin', 'selectAll', '1', '1');
INSERT INTO `user_permissions` VALUES ('7', 'admin', 'insertAll', '1', '1');
INSERT INTO `user_permissions` VALUES ('8', 'admin', 'updateAll', '1', '1');
INSERT INTO `user_permissions` VALUES ('9', 'superadmin', 'All', '1', '1');
INSERT INTO `user_permissions` VALUES ('10', 'superadmin', 'deleteAll', null, '1');
INSERT INTO `user_permissions` VALUES ('11', 'superadmin', 'selectAll', null, '1');
INSERT INTO `user_permissions` VALUES ('12', 'superadmin', 'insertAll', null, '1');
INSERT INTO `user_permissions` VALUES ('13', 'superadmin', 'updateAll', null, '1');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL COMMENT '用户名卡号',
  `role_name` varchar(255) NOT NULL COMMENT '用户具备角色',
  `role_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES ('10', 'hrz', 'superadmin', '1');
INSERT INTO `user_roles` VALUES ('14', 'wife', 'admin', '1');
INSERT INTO `user_roles` VALUES ('15', 'CCCP', 'user', '1');
INSERT INTO `user_roles` VALUES ('16', '3391239126', 'user', '1');

-- ----------------------------
-- Table structure for user_state
-- ----------------------------
DROP TABLE IF EXISTS `user_state`;
CREATE TABLE `user_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `rolesname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_state
-- ----------------------------
INSERT INTO `user_state` VALUES ('1', 'hrz', 'selectAll', '2', 'admin');
INSERT INTO `user_state` VALUES ('2', 'hrz', 'deleteAll', '2', 'admin');
INSERT INTO `user_state` VALUES ('3', 'hrz', 'updateAll', '2', 'admin');
INSERT INTO `user_state` VALUES ('4', 'hrz', 'insertAll', '2', 'admin');
INSERT INTO `user_state` VALUES ('5', 'hrz', 'All', '1', 'superadmin');
INSERT INTO `user_state` VALUES ('6', 'hrz', 'select', '2', 'user');
INSERT INTO `user_state` VALUES ('7', 'hrz', 'insert', '2', 'user');
INSERT INTO `user_state` VALUES ('8', 'hrz', 'delete', '2', 'user');
INSERT INTO `user_state` VALUES ('9', 'hrz', 'update', '2', 'user');
INSERT INTO `user_state` VALUES ('10', 'hrz', 'selectAll', '1', 'superadmin');
INSERT INTO `user_state` VALUES ('11', 'hrz', 'deleteAll', '1', 'superadmin');
INSERT INTO `user_state` VALUES ('15', 'hrz', 'updateAll', '1', 'superadmin');
INSERT INTO `user_state` VALUES ('16', 'hrz', 'insertAll', '1', 'superadmin');
INSERT INTO `user_state` VALUES ('250', 'wife', 'select', '2', 'user');
INSERT INTO `user_state` VALUES ('251', 'wife', 'update', '2', 'user');
INSERT INTO `user_state` VALUES ('252', 'wife', 'insert', '2', 'user');
INSERT INTO `user_state` VALUES ('253', 'wife', 'delete', '2', 'user');
INSERT INTO `user_state` VALUES ('254', 'wife', 'selectAll', '1', 'admin');
INSERT INTO `user_state` VALUES ('255', 'wife', 'updateAll', '1', 'admin');
INSERT INTO `user_state` VALUES ('256', 'wife', 'deleteAll', '1', 'admin');
INSERT INTO `user_state` VALUES ('257', 'wife', 'insertAll', '1', 'admin');
INSERT INTO `user_state` VALUES ('258', 'wife', 'All', '2', 'superadmin');
INSERT INTO `user_state` VALUES ('259', 'wife', 'selectAll', '2', 'superadmin');
INSERT INTO `user_state` VALUES ('260', 'wife', 'updateAll', '2', 'superadmin');
INSERT INTO `user_state` VALUES ('261', 'wife', 'deleteAll', '2', 'superadmin');
INSERT INTO `user_state` VALUES ('262', 'wife', 'insertAll', '2', 'superadmin');
INSERT INTO `user_state` VALUES ('263', 'CCCP', 'select', '1', 'user');
INSERT INTO `user_state` VALUES ('264', 'CCCP', 'update', '1', 'user');
INSERT INTO `user_state` VALUES ('265', 'CCCP', 'insert', '1', 'user');
INSERT INTO `user_state` VALUES ('266', 'CCCP', 'delete', '1', 'user');
INSERT INTO `user_state` VALUES ('267', 'CCCP', 'selectAll', '2', 'admin');
INSERT INTO `user_state` VALUES ('268', 'CCCP', 'updateAll', '2', 'admin');
INSERT INTO `user_state` VALUES ('269', 'CCCP', 'deleteAll', '2', 'admin');
INSERT INTO `user_state` VALUES ('270', 'CCCP', 'insertAll', '2', 'admin');
INSERT INTO `user_state` VALUES ('271', 'CCCP', 'All', '2', 'superadmin');
INSERT INTO `user_state` VALUES ('272', 'CCCP', 'selectAll', '2', 'superadmin');
INSERT INTO `user_state` VALUES ('273', 'CCCP', 'updateAll', '2', 'superadmin');
INSERT INTO `user_state` VALUES ('274', 'CCCP', 'deleteAll', '2', 'superadmin');
INSERT INTO `user_state` VALUES ('275', 'CCCP', 'insertAll', '2', 'superadmin');
INSERT INTO `user_state` VALUES ('276', '3391239126', 'select', '1', 'user');
INSERT INTO `user_state` VALUES ('277', '3391239126', 'update', '1', 'user');
INSERT INTO `user_state` VALUES ('278', '3391239126', 'insert', '1', 'user');
INSERT INTO `user_state` VALUES ('279', '3391239126', 'delete', '1', 'user');
INSERT INTO `user_state` VALUES ('280', '3391239126', 'selectAll', '2', 'admin');
INSERT INTO `user_state` VALUES ('281', '3391239126', 'updateAll', '2', 'admin');
INSERT INTO `user_state` VALUES ('282', '3391239126', 'deleteAll', '2', 'admin');
INSERT INTO `user_state` VALUES ('283', '3391239126', 'insertAll', '2', 'admin');
INSERT INTO `user_state` VALUES ('284', '3391239126', 'All', '2', 'superadmin');
INSERT INTO `user_state` VALUES ('285', '3391239126', 'selectAll', '2', 'superadmin');
INSERT INTO `user_state` VALUES ('286', '3391239126', 'updateAll', '2', 'superadmin');
INSERT INTO `user_state` VALUES ('287', '3391239126', 'deleteAll', '2', 'superadmin');
INSERT INTO `user_state` VALUES ('288', '3391239126', 'insertAll', '2', 'superadmin');

-- ----------------------------
-- Procedure structure for likeuser
-- ----------------------------
DROP PROCEDURE IF EXISTS `likeuser`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `likeuser`( in  h_rz varchar(36))
begin
	  select  * from user u where u.user_state!=3  and user_accountname or   user_username or id  like  '%h_rz%' ;
	end
;;
DELIMITER ;
SET FOREIGN_KEY_CHECKS=1;
