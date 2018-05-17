# MySQL-Front 5.1  (Build 4.13)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: hibernate
# ------------------------------------------------------
# Server version 5.0.18-nt

USE `user`;

#
# Source for table index_c
#

DROP TABLE IF EXISTS `index_c`;
CREATE TABLE `index_c` (
  `iid` int(11) NOT NULL auto_increment,
  `iname` varchar(255) default NULL,
  `pid` int(11) NOT NULL,
  `weight` varchar(255) default NULL,
  PRIMARY KEY  (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table index_c
#

LOCK TABLES `index_c` WRITE;
/*!40000 ALTER TABLE `index_c` DISABLE KEYS */;
INSERT INTO `index_c` VALUES (1,'概念的讲解 ',1,'0.15');
INSERT INTO `index_c` VALUES (2,'重点和难点 ',1,'0.15');
INSERT INTO `index_c` VALUES (3,'逻辑性和条理性 ',1,'0.10');
INSERT INTO `index_c` VALUES (4,'趣味性和生动性 ',1,'0.10');
INSERT INTO `index_c` VALUES (5,'板书 ',1,'0.05');
INSERT INTO `index_c` VALUES (6,'辅导（阅读指导） ',1,'0.08');
INSERT INTO `index_c` VALUES (7,'作业与批改 ',1,'0.10');
INSERT INTO `index_c` VALUES (8,'能力培养 ',1,'0.10');
INSERT INTO `index_c` VALUES (9,'教书育人 ',1,'0.10');
INSERT INTO `index_c` VALUES (10,'为人师表',1,'0.07');
INSERT INTO `index_c` VALUES (11,'教学工作量 ',4,'0.75');
INSERT INTO `index_c` VALUES (12,'社会工作量 ',4,'0.15');
INSERT INTO `index_c` VALUES (13,'任课班级',4,'0.10');
INSERT INTO `index_c` VALUES (14,'接受任务态度',4,'0.10');
INSERT INTO `index_c` VALUES (15,'授课计划的制定 ',4,'0.10');
INSERT INTO `index_c` VALUES (16,'教案首页 ',4,'0.20');
INSERT INTO `index_c` VALUES (17,'备课余量 ',4,'0.10');
INSERT INTO `index_c` VALUES (18,'教学日志手册的填写 ',4,'0.10');
INSERT INTO `index_c` VALUES (19,'教学表格的填写 ',4,'0.10');
INSERT INTO `index_c` VALUES (20,'辅导 ',4,'0.20');
INSERT INTO `index_c` VALUES (21,'教学秩序的掌握',4,'0.20');
INSERT INTO `index_c` VALUES (22,'职称 ',4,'0.10');
INSERT INTO `index_c` VALUES (23,'运用新知识、新技术能力 ',4,'0.40');
INSERT INTO `index_c` VALUES (24,'论文撰写、教材编写能力',4,'0.50');
INSERT INTO `index_c` VALUES (25,'完成任务情况 ',4,'0.05');
INSERT INTO `index_c` VALUES (26,'教学水平变化 ',4,'0.05');
INSERT INTO `index_c` VALUES (27,'教学反映 ',4,'0.15');
INSERT INTO `index_c` VALUES (28,'能力培养 ',4,'0.10');
INSERT INTO `index_c` VALUES (29,'汲取新信息新技术 ',4,'0.05');
INSERT INTO `index_c` VALUES (30,'考试命题',4,'0.05');
INSERT INTO `index_c` VALUES (31,'组织教学 ',2,'0.15');
INSERT INTO `index_c` VALUES (32,'教学内容与教学要求 ',2,'0.15');
INSERT INTO `index_c` VALUES (33,'概念讲解 ',2,'0.10');
INSERT INTO `index_c` VALUES (34,'重点和难点 ',2,'0.10');
INSERT INTO `index_c` VALUES (35,'趣味性与生动性',2,'0.08');
INSERT INTO `index_c` VALUES (36,'直观教学与板书 ',2,'0.07');
INSERT INTO `index_c` VALUES (37,'智力能力的培养 ',2,'0.10');
INSERT INTO `index_c` VALUES (38,'理论联系实际 ',2,'0.10');
INSERT INTO `index_c` VALUES (39,'教材处理',2,'0.15');
INSERT INTO `index_c` VALUES (40,'自我评价 ',3,'7');
INSERT INTO `index_c` VALUES (41,'自我评价的工作\t',3,'3');
/*!40000 ALTER TABLE `index_c` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table index_p
#

DROP TABLE IF EXISTS `index_p`;
CREATE TABLE `index_p` (
  `pid` int(11) NOT NULL auto_increment,
  `pname` varchar(255) default NULL,
  `weight` varchar(255) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table index_p
#

LOCK TABLES `index_p` WRITE;
/*!40000 ALTER TABLE `index_p` DISABLE KEYS */;
INSERT INTO `index_p` VALUES (1,'学生方面','1');
INSERT INTO `index_p` VALUES (2,'同行方面','1');
INSERT INTO `index_p` VALUES (3,'自我方面','1');
INSERT INTO `index_p` VALUES (4,'系部（领导）方面','1');
/*!40000 ALTER TABLE `index_p` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table questionnaire
#

DROP TABLE IF EXISTS `questionnaire`;
CREATE TABLE `questionnaire` (
  `qid` int(11) NOT NULL auto_increment,
  `end_time` datetime default NULL,
  `pid` int(11) NOT NULL,
  `qname` varchar(255) default NULL,
  `star_time` datetime default NULL,
  PRIMARY KEY  (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table questionnaire
#

LOCK TABLES `questionnaire` WRITE;
/*!40000 ALTER TABLE `questionnaire` DISABLE KEYS */;
INSERT INTO `questionnaire` VALUES (1,'2017-06-24',0,'学生问卷','2017-06-09');
INSERT INTO `questionnaire` VALUES (2,'2017-06-22',0,'同行问卷','2017-06-08');
INSERT INTO `questionnaire` VALUES (3,'2017-06-30',0,'自我评价','2017-06-16');
INSERT INTO `questionnaire` VALUES (4,'2017-06-17',0,'领导方面','2017-06-01');
/*!40000 ALTER TABLE `questionnaire` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table role
#

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rid` int(11) NOT NULL auto_increment,
  `function` tinyblob,
  `name` varchar(255) default NULL,
  `rstate` varchar(255) default NULL,
  PRIMARY KEY  (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table role
#

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,X'ACED0005757200135B4C6A6176612E6C616E672E537472696E673BADD256E7E91D7B4702000078700000000274000220307400022031','学生','1');
INSERT INTO `role` VALUES (2,X'ACED0005757200135B4C6A6176612E6C616E672E537472696E673BADD256E7E91D7B47020000787000000003740002203074000220327400022033','老师','1');
INSERT INTO `role` VALUES (3,X'ACED0005757200135B4C6A6176612E6C616E672E537472696E673BADD256E7E91D7B47020000787000000003740002203074000220347400022035','领导','1');
INSERT INTO `role` VALUES (4,X'ACED0005757200135B4C6A6176612E6C616E672E537472696E673BADD256E7E91D7B470200007870000000047400022036740002203774000220387400022039','管理员','1');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table student
#

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` int(11) NOT NULL auto_increment,
  `classid` int(11) NOT NULL,
  `course` varchar(255) default NULL,
  `rid` int(11) NOT NULL,
  `sname` varchar(255) default NULL,
  `spass` varchar(255) default NULL,
  `sstate` int(11) NOT NULL,
  `suser` varchar(255) default NULL,
  `tid` tinyblob,
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table student
#

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,123,'123321',1,'123123','321321',1,'张三',X'ACED0005757200025B494DBA602676EAB2A50200007870000000020000000400000005');
INSERT INTO `student` VALUES (2,123,NULL,1,'222222','123123',1,'123',X'ACED0005757200025B494DBA602676EAB2A50200007870000000020000000400000005');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table student_evaluation_results
#

DROP TABLE IF EXISTS `student_evaluation_results`;
CREATE TABLE `student_evaluation_results` (
  `serid` int(11) NOT NULL auto_increment,
  `classid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `score` double(10,2) NOT NULL default '0.00',
  `sid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  PRIMARY KEY  (`serid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table student_evaluation_results
#

LOCK TABLES `student_evaluation_results` WRITE;
/*!40000 ALTER TABLE `student_evaluation_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_evaluation_results` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table student_teacher
#

DROP TABLE IF EXISTS `student_teacher`;
CREATE TABLE `student_teacher` (
  `students_sid` int(11) NOT NULL,
  `teacheres_tid` int(11) NOT NULL,
  PRIMARY KEY  (`students_sid`,`teacheres_tid`),
  KEY `FKFCAED99EF046020A` (`students_sid`),
  KEY `FKFCAED99E830FF5EA` (`teacheres_tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table student_teacher
#

LOCK TABLES `student_teacher` WRITE;
/*!40000 ALTER TABLE `student_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_teacher` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table teacher
#

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL auto_increment,
  `jobid` varchar(255) default NULL,
  `rid` int(11) NOT NULL,
  `tname` varchar(255) default NULL,
  `tpass` varchar(255) default NULL,
  `tstate` int(11) NOT NULL,
  PRIMARY KEY  (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table teacher
#

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'123123',4,'2','321321',1);
INSERT INTO `teacher` VALUES (2,'321321',3,'去','123123',1);
INSERT INTO `teacher` VALUES (4,'111111',2,'32','123123',1);
INSERT INTO `teacher` VALUES (5,'123321',2,'23','123321',1);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table teacher_evaluation_results
#

DROP TABLE IF EXISTS `teacher_evaluation_results`;
CREATE TABLE `teacher_evaluation_results` (
  `terid` int(11) NOT NULL auto_increment,
  `jobid` varchar(255) NOT NULL default '0',
  `qid` int(11) NOT NULL,
  `score` double(11,1) NOT NULL default '0.0',
  `tertype` varchar(255) default NULL,
  PRIMARY KEY  (`terid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table teacher_evaluation_results
#

LOCK TABLES `teacher_evaluation_results` WRITE;
/*!40000 ALTER TABLE `teacher_evaluation_results` DISABLE KEYS */;
INSERT INTO `teacher_evaluation_results` VALUES (1,'123321',2,3.6,'同行问卷');
INSERT INTO `teacher_evaluation_results` VALUES (2,'111111',3,100,'自我评价问卷');
INSERT INTO `teacher_evaluation_results` VALUES (3,'111111',3,100,'自我评价问卷');
INSERT INTO `teacher_evaluation_results` VALUES (4,'111111',4,0,'领导问卷');
/*!40000 ALTER TABLE `teacher_evaluation_results` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table userinfo
#

DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `Id` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `day` varchar(255) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table userinfo
#

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (1,'sze','123','2017-03-07 11:54:21');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table xuanxiang
#

DROP TABLE IF EXISTS `xuanxiang`;
CREATE TABLE `xuanxiang` (
  `oid` int(11) NOT NULL auto_increment,
  `a` varchar(255) default NULL,
  `b` varchar(255) default NULL,
  `c` varchar(255) default NULL,
  `d` varchar(255) default NULL,
  `iid` int(11) NOT NULL,
  PRIMARY KEY  (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table xuanxiang
#

LOCK TABLES `xuanxiang` WRITE;
/*!40000 ALTER TABLE `xuanxiang` DISABLE KEYS */;
INSERT INTO `xuanxiang` VALUES (1,'语言精练，深入浅出，讲解准确 ','讲解清晰，容易接受','讲解基本准确，但不易接受','概念紊乱，时有差错',1);
INSERT INTO `xuanxiang` VALUES (2,'重点突出，讲清难点，举一反三','能把握重点、难点，但讲解不够明确','重点不明显，难点讲不透','重点一言而过，难点草率了事',2);
INSERT INTO `xuanxiang` VALUES (3,'层次分明，融会贯通','条目较清楚，有分析归纳','平淡叙述，缺乏连贯性','杂乱无章，前后矛盾',3);
INSERT INTO `xuanxiang` VALUES (4,'讲解方法新颖，举例生动，有吸引力','讲解较熟练，语言通俗','讲解平淡，语言单调','讲解生疏，远离课题，语言枯燥',4);
INSERT INTO `xuanxiang` VALUES (5,'简繁适度，清楚醒目','条目明白，书写整洁','布局较差，详略失当','次序凌乱，书写潦草',5);
INSERT INTO `xuanxiang` VALUES (6,'辅导及时、并指导课外阅读','定期辅导，并布置课外阅读','辅导较少','没有辅导',6);
INSERT INTO `xuanxiang` VALUES (7,'选题得当，批改及时，注意讲评','作业适量，批改及时','作业量时轻时重，批改不够及时','选题随便，批改马虎',7);
INSERT INTO `xuanxiang` VALUES (8,'思路开阔，鼓励创新，注意能力培养、效果明显','注意学生能力培养，并在教学中有所体现','能提出能力培养的要求，但缺乏具体的办法','忽视能力培养，单纯灌输书本知识',8);
INSERT INTO `xuanxiang` VALUES (9,'全面关心学生，经常接触学生，亲切、严格','关心学生的学业，引导学生学好本门课程','单纯完成上课任务，与同学接触较少','对学生漠不关心，放任自流',9);
INSERT INTO `xuanxiang` VALUES (10,'教学组织安排得当，气氛活跃，纪律良好','注意学生动态，教学有条不紊 ','忽视教学步骤，师生双边活动较差 ','只顾自己讲，不管学生情况',31);
INSERT INTO `xuanxiang` VALUES (11,'切合教学大纲要求与实际，内容组织科学严密 ','符合教学大纲要求，内容正确 ','基本达到教学大纲要求，内容偶有差错 ','降低教学标准，内容时有差错',32);
INSERT INTO `xuanxiang` VALUES (12,'语言精练，深入浅出，讲解准确 ','讲解清晰，容易接受','讲解基本准确，但不易接受','概念紊乱，时有差错',33);
INSERT INTO `xuanxiang` VALUES (13,'重点突出，讲清难点，举一反三','能把握重点、难点，但讲解不够明确','重点不明显，难点讲不透','重点一言而过，难点草率了事',34);
INSERT INTO `xuanxiang` VALUES (14,'讲解方法新颖，举例生动，有吸引力','讲解较熟练，语言通俗','讲解平淡，语言单调','讲解生疏，远离课题，语言枯燥',35);
INSERT INTO `xuanxiang` VALUES (15,'教具使用合理，板书清晰，示教形象、直观 ','注意直观教学，板书条目明白、整洁 ','教具使用失当，板书布局较差 ','忽视直观教学，板书凌乱',36);
INSERT INTO `xuanxiang` VALUES (16,'运用各种方法，调动学生积极思维，注重能力培养 ','注意调动学生思维和能力培养，方法和效果欠佳 ','缺乏启发式方法和能力培养手段 ','照本宣科，不搞启发式教学',37);
INSERT INTO `xuanxiang` VALUES (17,'理论与实例、实验、实际密切结合 ','理论能结合实际进行教学 ','理论与实际结合不理想 ','理论与实际严重脱节',38);
INSERT INTO `xuanxiang` VALUES (18,'科学的处理教材，繁简增删适当，收事半功倍之效','对教材的处理，有助于学生理解和掌握内在联系','基本按照教材讲课，没有给学生什么新东西','对教材毫无处理，完全重复课本内容',39);
INSERT INTO `xuanxiang` VALUES (19,'超工作量 ','满工作量 ','接近完成（70%） ','差距较大',11);
INSERT INTO `xuanxiang` VALUES (20,'担任教研室主任 ','担任办公室、工作室主任 ','担任专业班主任（辅导员）等其他工作','未承担',12);
INSERT INTO `xuanxiang` VALUES (21,'任4个班级以上，或双进度','任3个班级','任2个班级','任1个班级',13);
INSERT INTO `xuanxiang` VALUES (22,'勇挑重担','主动承担','一般','较差',14);
INSERT INTO `xuanxiang` VALUES (23,'清晰','完整','一般','潦草',15);
INSERT INTO `xuanxiang` VALUES (24,'完整','缺一项','缺二项','缺二项以上',16);
INSERT INTO `xuanxiang` VALUES (25,'一周以上 ','一周 ','接近一周 ','没有余量',17);
INSERT INTO `xuanxiang` VALUES (26,'清楚、准确  ','正确、及时  ','填写缺项 ','填写马虎',18);
INSERT INTO `xuanxiang` VALUES (27,'认真且有见解  ','详尽、整洁  ','正确  ','潦草、拖拉',19);
INSERT INTO `xuanxiang` VALUES (28,'每周有辅导 ','辅导较经常','辅导较少','不辅导 ',20);
INSERT INTO `xuanxiang` VALUES (29,'严格 ','较严格 ','一般','出现教学事故',21);
INSERT INTO `xuanxiang` VALUES (30,'副教授 ','讲师 ','助教 ','未评职称',22);
INSERT INTO `xuanxiang` VALUES (31,'开出有一定水平的选修课、讲座、院级公开课或指导兴趣小组有成效 ','开出选修课、讲座、科内公开课或指导兴趣小组活动','承担室内研究课、协助开出讲座或配合指导学生课外活动','无',23);
INSERT INTO `xuanxiang` VALUES (32,'在核心刊物上发表、教材正式出版（三年内） ','在公开刊物上发表，教材兄弟院校使用（二年内） ','在内部刊上发表，教材在校内使用（一年内） ','无',24);
INSERT INTO `xuanxiang` VALUES (33,'高质量完成 ','及时完成 ','基本完成 ','完不成',25);
INSERT INTO `xuanxiang` VALUES (34,'显著提高 ','有所提高 ','变化很小 ','下降',26);
INSERT INTO `xuanxiang` VALUES (35,'优秀','良好','一般','较差',27);
INSERT INTO `xuanxiang` VALUES (36,'思路开阔，鼓励创新，注意能力培养、效果明显','注意学生能力培养，并在教学中有所体现','能提出能力培养的要求，但缺乏具体的办法','忽视能力培养，单纯灌输书本知识',28);
INSERT INTO `xuanxiang` VALUES (37,'及时在教学中体现','教学中注意联系新信息新技术','教学中联系新信息新技术不够 ','教学中根本不联系新信息新技术',29);
INSERT INTO `xuanxiang` VALUES (38,'试题的水平、题型、题量、分布、覆盖面符合教学目标的要求；难度适中，区分度适当；表述准确、严密、简洁。','有2项不符合要求','有3项不符合要求 ','有3项以上（不含3项）不符合要求',30);
INSERT INTO `xuanxiang` VALUES (39,'能正确、有效地工作，取得较好的工作结果 ','重要工作事项完成率 ','工作表现能赢得本部门及其他部门领导及员工的表扬和尊重 ','有部门对该员工的工作及行为方面有投诉 ',40);
INSERT INTO `xuanxiang` VALUES (40,'熟练掌握工作，并独立有效地进行','热心于本职工作','熟悉并贯彻执行各项规章制度','工作中富有激情，敬业，善于付出',41);
/*!40000 ALTER TABLE `xuanxiang` ENABLE KEYS */;
UNLOCK TABLES;

#
#  Foreign keys for table student_teacher
#

ALTER TABLE `student_teacher`
ADD CONSTRAINT `FKFCAED99E830FF5EA` FOREIGN KEY (`teacheres_tid`) REFERENCES `teacher` (`tid`),
ADD CONSTRAINT `FKFCAED99EF046020A` FOREIGN KEY (`students_sid`) REFERENCES `student` (`sid`);


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
