/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : tams

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 02/10/2021 22:45:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_classroom
-- ----------------------------
DROP TABLE IF EXISTS `t_classroom`;
CREATE TABLE `t_classroom` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '名称',
  `enable_state` int unsigned NOT NULL DEFAULT '1' COMMENT '停启用状态，1启用 2停用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教室';

-- ----------------------------
-- Records of t_classroom
-- ----------------------------
BEGIN;
INSERT INTO `t_classroom` VALUES (1, '10号楼508机房', 1);
INSERT INTO `t_classroom` VALUES (2, '10号楼512机房', 1);
INSERT INTO `t_classroom` VALUES (3, '10号楼511机房', 1);
COMMIT;

-- ----------------------------
-- Table structure for t_color
-- ----------------------------
DROP TABLE IF EXISTS `t_color`;
CREATE TABLE `t_color` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '名称',
  `value` char(7) NOT NULL DEFAULT '' COMMENT '值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COMMENT='颜色';

-- ----------------------------
-- Records of t_color
-- ----------------------------
BEGIN;
INSERT INTO `t_color` VALUES (1, 'GREEN SEA', '#16a085');
INSERT INTO `t_color` VALUES (2, 'NEPHRITIS', '#27ae60');
INSERT INTO `t_color` VALUES (3, 'BELIZE HOLE', '#2980b9');
INSERT INTO `t_color` VALUES (4, 'MIDNIGHT', '#2c3e50');
INSERT INTO `t_color` VALUES (5, 'ASBESTOS', '#7f8c8d');
INSERT INTO `t_color` VALUES (6, 'WISTERIA', '#8e44ad');
INSERT INTO `t_color` VALUES (7, 'SILVER', '#bdc3c7');
INSERT INTO `t_color` VALUES (8, 'POMEGRANATE', '#c0392b');
INSERT INTO `t_color` VALUES (9, 'PUMPKIN', '#d35400');
INSERT INTO `t_color` VALUES (10, 'Dark Salmon', '#efa48b');
INSERT INTO `t_color` VALUES (11, 'ORANGE', '#f39c12');
INSERT INTO `t_color` VALUES (12, 'GREEN SEA', '#16a085');
INSERT INTO `t_color` VALUES (13, 'NEPHRITIS', '#27ae60');
INSERT INTO `t_color` VALUES (14, 'BELIZE HOLE', '#2980b9');
INSERT INTO `t_color` VALUES (15, 'MIDNIGHT', '#2c3e50');
INSERT INTO `t_color` VALUES (16, 'ASBESTOS', '#7f8c8d');
INSERT INTO `t_color` VALUES (17, 'WISTERIA', '#8e44ad');
INSERT INTO `t_color` VALUES (18, 'SILVER', '#bdc3c7');
INSERT INTO `t_color` VALUES (19, 'POMEGRANATE', '#c0392b');
INSERT INTO `t_color` VALUES (20, 'PUMPKIN', '#d35400');
INSERT INTO `t_color` VALUES (21, 'Dark Salmon', '#efa48b');
INSERT INTO `t_color` VALUES (22, 'ORANGE', '#f39c12');
COMMIT;

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '名称',
  `enable_state` int unsigned NOT NULL DEFAULT '1' COMMENT '停启用状态，1启用 2停用',
  `duration` int unsigned DEFAULT NULL COMMENT '课程时长，单位分钟',
  `background_color` char(7) NOT NULL DEFAULT '' COMMENT '背景颜色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='课程';

-- ----------------------------
-- Records of t_course
-- ----------------------------
BEGIN;
INSERT INTO `t_course` VALUES (1, 'Java Web高级编程（理论课）', 1, 90, '');
INSERT INTO `t_course` VALUES (2, 'C语言程序设计实验一', 1, 90, '');
COMMIT;

-- ----------------------------
-- Table structure for t_course_scheduling
-- ----------------------------
DROP TABLE IF EXISTS `t_course_scheduling`;
CREATE TABLE `t_course_scheduling` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `classroom_id` bigint NOT NULL DEFAULT '0' COMMENT '教室id',
  `course_id` bigint NOT NULL DEFAULT '0' COMMENT '课程id',
  `teacher_id` bigint NOT NULL DEFAULT '0' COMMENT '教师id',
  `date` date DEFAULT NULL COMMENT '日期',
  `attend_time` time DEFAULT NULL COMMENT '上课时间',
  `finish_time` time DEFAULT NULL COMMENT '下课时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb3 COMMENT='排课';

-- ----------------------------
-- Records of t_course_scheduling
-- ----------------------------
BEGIN;
INSERT INTO `t_course_scheduling` VALUES (81, 1, 2, 2, '2021-09-29', '15:30:00', '17:30:00');
INSERT INTO `t_course_scheduling` VALUES (82, 1, 2, 2, '2021-10-04', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (83, 1, 2, 2, '2021-10-05', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (84, 1, 2, 2, '2021-10-06', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (85, 1, 2, 2, '2021-10-07', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (86, 1, 2, 2, '2021-10-08', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (87, 1, 2, 2, '2021-10-11', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (88, 1, 2, 2, '2021-10-12', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (89, 1, 2, 2, '2021-10-13', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (90, 1, 2, 2, '2021-10-14', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (91, 1, 2, 2, '2021-10-15', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (92, 1, 2, 2, '2021-10-18', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (93, 1, 2, 2, '2021-10-19', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (94, 1, 2, 2, '2021-10-20', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (117, 1, 1, 1, '2021-10-01', '15:30:00', '17:30:00');
INSERT INTO `t_course_scheduling` VALUES (118, 1, 1, 1, '2021-10-04', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (119, 1, 1, 1, '2021-10-05', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (120, 1, 1, 1, '2021-10-06', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (121, 1, 1, 1, '2021-10-07', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (122, 1, 1, 1, '2021-10-08', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (123, 1, 1, 1, '2021-10-11', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (124, 1, 1, 1, '2021-10-12', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (125, 1, 1, 1, '2021-10-13', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (126, 1, 1, 1, '2021-10-14', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (127, 1, 1, 1, '2021-10-15', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (128, 1, 1, 1, '2021-10-18', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (129, 1, 1, 1, '2021-10-19', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (130, 1, 1, 1, '2021-10-20', '18:00:00', '20:00:00');
INSERT INTO `t_course_scheduling` VALUES (138, 1, 2, 2, '2021-10-01', '23:00:00', '01:00:00');
INSERT INTO `t_course_scheduling` VALUES (139, 1, 2, 2, '2021-10-04', '23:00:00', '01:00:00');
INSERT INTO `t_course_scheduling` VALUES (140, 1, 2, 2, '2021-10-05', '23:00:00', '01:00:00');
INSERT INTO `t_course_scheduling` VALUES (141, 1, 2, 2, '2021-10-06', '23:00:00', '01:00:00');
INSERT INTO `t_course_scheduling` VALUES (142, 1, 2, 2, '2021-10-07', '23:00:00', '01:00:00');
INSERT INTO `t_course_scheduling` VALUES (143, 1, 2, 2, '2021-10-08', '23:00:00', '01:00:00');
INSERT INTO `t_course_scheduling` VALUES (144, 1, 2, 2, '2021-10-11', '23:00:00', '01:00:00');
INSERT INTO `t_course_scheduling` VALUES (145, 1, 2, 2, '2021-10-12', '23:00:00', '01:00:00');
INSERT INTO `t_course_scheduling` VALUES (146, 1, 2, 2, '2021-10-13', '23:00:00', '01:00:00');
INSERT INTO `t_course_scheduling` VALUES (147, 1, 2, 2, '2021-10-14', '23:00:00', '01:00:00');
INSERT INTO `t_course_scheduling` VALUES (148, 1, 2, 2, '2021-10-15', '23:00:00', '01:00:00');
INSERT INTO `t_course_scheduling` VALUES (149, 1, 2, 2, '2021-10-18', '23:00:00', '01:00:00');
INSERT INTO `t_course_scheduling` VALUES (150, 1, 2, 2, '2021-10-19', '23:00:00', '01:00:00');
INSERT INTO `t_course_scheduling` VALUES (151, 1, 2, 2, '2021-10-20', '23:00:00', '01:00:00');
INSERT INTO `t_course_scheduling` VALUES (152, 1, 2, 2, '2021-10-21', '23:00:00', '01:00:00');
INSERT INTO `t_course_scheduling` VALUES (153, 1, 2, 2, '2021-10-22', '23:00:00', '01:00:00');
INSERT INTO `t_course_scheduling` VALUES (154, 1, 2, 2, '2021-09-01', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (155, 1, 2, 2, '2021-09-02', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (156, 1, 2, 2, '2021-09-03', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (157, 1, 2, 2, '2021-09-06', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (158, 1, 2, 2, '2021-09-07', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (159, 1, 2, 2, '2021-09-08', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (160, 1, 2, 2, '2021-09-09', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (161, 1, 2, 2, '2021-09-10', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (162, 1, 2, 2, '2021-09-13', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (163, 1, 2, 2, '2021-09-13', '10:15:00', '12:15:00');
INSERT INTO `t_course_scheduling` VALUES (164, 1, 2, 2, '2021-09-14', '10:15:00', '12:15:00');
INSERT INTO `t_course_scheduling` VALUES (165, 1, 2, 2, '2021-09-16', '10:15:00', '12:15:00');
INSERT INTO `t_course_scheduling` VALUES (166, 1, 2, 2, '2021-09-15', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (167, 1, 2, 2, '2021-09-20', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (168, 1, 2, 2, '2021-09-21', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (169, 1, 2, 2, '2021-09-25', '08:15:00', '10:15:00');
INSERT INTO `t_course_scheduling` VALUES (170, 1, 2, 2, '2021-09-22', '20:15:00', '22:15:00');
INSERT INTO `t_course_scheduling` VALUES (171, 1, 2, 2, '2021-09-22', '20:30:00', '22:30:00');
INSERT INTO `t_course_scheduling` VALUES (172, 1, 2, 2, '2021-09-27', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (173, 1, 2, 2, '2021-09-28', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (174, 1, 2, 2, '2021-09-30', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (175, 1, 2, 2, '2021-10-02', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (176, 1, 2, 2, '2021-10-02', '10:30:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (177, 1, 2, 2, '2021-10-04', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (178, 1, 2, 2, '2021-10-05', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (179, 1, 2, 2, '2021-10-06', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (180, 1, 2, 2, '2021-10-07', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (181, 1, 2, 2, '2021-10-08', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (182, 1, 2, 2, '2021-10-11', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (183, 1, 2, 2, '2021-10-12', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (184, 1, 2, 2, '2021-10-13', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (185, 1, 2, 2, '2021-10-14', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (186, 1, 2, 2, '2021-10-15', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (187, 1, 2, 2, '2021-10-18', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (188, 1, 2, 2, '2021-10-19', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (189, 1, 2, 2, '2021-10-20', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (190, 1, 2, 2, '2021-10-21', '08:00:00', '10:00:00');
INSERT INTO `t_course_scheduling` VALUES (191, 2, 1, 1, '2021-09-20', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (192, 2, 1, 1, '2021-09-21', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (193, 2, 1, 1, '2021-09-22', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (194, 2, 1, 1, '2021-09-22', '12:45:00', '14:15:00');
INSERT INTO `t_course_scheduling` VALUES (195, 2, 1, 1, '2021-09-25', '11:15:00', '12:45:00');
INSERT INTO `t_course_scheduling` VALUES (196, 2, 1, 1, '2021-09-27', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (197, 2, 1, 1, '2021-09-28', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (198, 2, 1, 1, '2021-09-29', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (199, 2, 1, 1, '2021-09-30', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (200, 2, 1, 1, '2021-09-27', '14:30:00', '16:00:00');
INSERT INTO `t_course_scheduling` VALUES (201, 2, 1, 1, '2021-10-04', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (202, 2, 1, 1, '2021-10-05', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (203, 2, 1, 1, '2021-10-06', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (204, 2, 1, 1, '2021-10-07', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (205, 2, 1, 1, '2021-10-08', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (206, 2, 1, 1, '2021-10-11', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (207, 2, 1, 1, '2021-10-12', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (208, 2, 1, 1, '2021-10-13', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (209, 2, 1, 1, '2021-10-14', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (210, 2, 1, 1, '2021-10-15', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (211, 2, 1, 1, '2021-10-18', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (212, 2, 1, 1, '2021-10-19', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (213, 2, 1, 1, '2021-10-20', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (214, 2, 1, 1, '2021-10-21', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (215, 2, 1, 1, '2021-10-22', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (216, 2, 1, 1, '2021-10-25', '11:00:00', '12:30:00');
INSERT INTO `t_course_scheduling` VALUES (217, 2, 1, 1, '2021-10-26', '11:00:00', '12:30:00');
COMMIT;

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '姓名',
  `enable_state` int unsigned NOT NULL DEFAULT '1' COMMENT '停启用状态，1启用 2停用',
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
BEGIN;
INSERT INTO `t_teacher` VALUES (1, '谷志峰', 1, '123');
INSERT INTO `t_teacher` VALUES (2, '王春艳', 1, '123');
INSERT INTO `t_teacher` VALUES (8, '张三', 1, '123111');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
