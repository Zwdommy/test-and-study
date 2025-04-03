CREATE DATABASE IF NOT EXISTS `system_select_course1` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学院id',
  `cname` varchar(255) NOT NULL COMMENT '学院名称',
  `descr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('1', '计算机学院', '学院现设有计算机应用技术系、软件工程系、网络与信息安全系、计算机基础教学中心、实验技术中心5个基层教学单位；设学院办公室、研究生培养办公室、学生发展中心等机构，为教学、科研、学生管理提供良好服务。学院现有教职工60余人，具有高级技术职称及博士研究生学历的教师占80%以上。');
INSERT INTO `college` VALUES ('2', '管理学院', '管理学院始建于1987年，是我校办学较早、实力较强的二级学院之一。现开设物流管理、工业工程、财务管理、酒店管理4个本科专业和大数据与会计、旅游管理2个专科专业。');
INSERT INTO `college` VALUES ('3', '纺织学院', '纺织科学与工程学科1981成为国内首批本、硕、博三级学位授予学科，1986年由国家教委评为首批国家重点学科，1996年列入"211工程"重点建设学科，1998年获一级学科博士学位授予权， 2007年被评为一级学科国家重点学科。在教育部组织到目前为止的四次全国学科评估中，均名列同类学科全国第一。2017年9月入选全国高校"双一流"建设学科。');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `cname` varchar(255) NOT NULL COMMENT '课程名称',
  `major` varchar(255) DEFAULT NULL COMMENT '所属专业',
  `address` varchar(255) DEFAULT NULL COMMENT '上课地点',
  `num` varchar(255) NOT NULL DEFAULT '0' COMMENT '已选人数',
  `stock` varchar(255) DEFAULT NULL COMMENT '容量',
  `cimage` varchar(255) DEFAULT NULL,
  `cbook` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'java', '软件工程', 'b323', '2', '16', 'Snipaste_2023-10-02_23-28-41.png', '数据库设计说明书.doc');
INSERT INTO `course` VALUES ('2', 'c++', '软件工程', 'c345', '2', '70', '620595895026200.png', 'c++.docx');
INSERT INTO `course` VALUES ('3', '软件测试', '软件工程', 'c321', '1', '40', '218145975932200.png', 'type.sql');

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '专业id',
  `mname` varchar(255) NOT NULL COMMENT '专业名称',
  `college` varchar(255) DEFAULT NULL COMMENT '所属学院',
  `descr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES ('1', '计算机科学与技术', '计算机学院', '计算机科学与技术主要研究计算机的设计与制造，包含计算机软件、硬件的基本理论、技能与方法，进行计算机系统和软件的开发与维护、硬件的组装等');
INSERT INTO `major` VALUES ('2', '软件工程', '计算机学院', '软件工程主要研究计算机各类软件的构造、设计、开发方法、测试、维护等相关的知识和技术，涉及程序设计语言、数据库、软件开发工具、系统平台、设计模式等多方面');
INSERT INTO `major` VALUES ('3', '管理学', '管理学院', '管理学是研究管理规律、探讨管理方法、建构管理模式、取得最大管理效益的学科。');
INSERT INTO `major` VALUES ('4', '人工智能', '计算机学院', null);
INSERT INTO `major` VALUES ('6', '网络工程', '计算机学院', '网络工程主要研究计算机软硬件、网络与通信系统等方面的基本知识和技术，进行计算机网络系统的规划设计、维护管理和应用开发等');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生学号',
  `sname` varchar(255) NOT NULL COMMENT '学生姓名',
  `password` varchar(255) DEFAULT '202cb962ac59075b964b07152d234b70' COMMENT '密码',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `age` int(255) DEFAULT NULL COMMENT '年龄',
  `major` varchar(255) DEFAULT NULL COMMENT '所属专业',
  `college` varchar(255) DEFAULT NULL COMMENT '所属学院',
  `simage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '张三', '202cb962ac59075b964b07152d234b70', '男', '44', '软件工程', '计算机学院', 'Snipaste_2023-05-04_09-13-52.png');
INSERT INTO `student` VALUES ('2', '李四', '202cb962ac59075b964b07152d234b70', '男', '22', '计算机科学与技术', '计算机学院', '64087494246000.png');
INSERT INTO `student` VALUES ('3', '王五', '202cb962ac59075b964b07152d234b70', '男', '21', '人工智能', '计算机学院', '217768836006900.png');
INSERT INTO `student` VALUES ('7', '张三aaaa', '202cb962ac59075b964b07152d234b70', null, null, null, null, null);

-- ----------------------------
-- Table structure for student_course
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分配编号',
  `sid` int(11) NOT NULL COMMENT '教师id',
  `cid` int(11) NOT NULL COMMENT '课程id',
  `status` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`),
  KEY `cid` (`cid`),
  CONSTRAINT `student_course_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `course` (`id`),
  CONSTRAINT `student_course_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES ('1', '1', '1', '0');
INSERT INTO `student_course` VALUES ('2', '1', '2', '0');
INSERT INTO `student_course` VALUES ('9', '1', '3', '1');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师id',
  `tname` varchar(255) NOT NULL COMMENT '教师姓名',
  `password` varchar(255) NOT NULL DEFAULT '666' COMMENT '密码',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL COMMENT '手机',
  `age` varchar(255) DEFAULT NULL COMMENT '年龄',
  `major` varchar(255) DEFAULT NULL COMMENT '所属专业',
  `timage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '李琳', '202cb962ac59075b964b07152d234b70', '男', '234760595@qq.com', '444444444', '42', '软件工程', '218603522359700.png');
INSERT INTO `teacher` VALUES ('2', '马越', '202cb962ac59075b964b07152d234b70', '男', '234760595@qq.com', '19591581167111', '34', '计算机科学与技术', '217432031978400.png');
INSERT INTO `teacher` VALUES ('3', '范菲', '666', '女', '1231232321', '123123', '43', '软件工程', '219991647139000.png');

-- ----------------------------
-- Table structure for teacher_course
-- ----------------------------
DROP TABLE IF EXISTS `teacher_course`;
CREATE TABLE `teacher_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分配编号',
  `tid` int(11) NOT NULL COMMENT '教师id',
  `cid` int(11) NOT NULL COMMENT '课程id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `tid` (`tid`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `course` (`id`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_course
-- ----------------------------
INSERT INTO `teacher_course` VALUES ('1', '1', '1');
INSERT INTO `teacher_course` VALUES ('2', '2', '2');
INSERT INTO `teacher_course` VALUES ('3', '1', '3');
INSERT INTO `teacher_course` VALUES ('4', '1', '2');
INSERT INTO `teacher_course` VALUES ('6', '3', '1');
INSERT INTO `teacher_course` VALUES ('7', '3', '3');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
 CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `username` varchar(255) NOT NULL COMMENT '姓名',
  `phone` varchar(255) NOT NULL COMMENT '手机',
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '12312', '202cb962ac59075b964b07152d234b70', 'admin', '12312', '219683426645600.png');
INSERT INTO `user` VALUES ('2', '23123', '202cb962ac59075b964b07152d234b70', '张三', '3123', '3123');
