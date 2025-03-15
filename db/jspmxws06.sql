-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmxws06
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmxws06/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmxws06/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmxws06/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liuyanfankui`
--

DROP TABLE IF EXISTS `liuyanfankui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liuyanfankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `yiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '医院名称',
  `liuyanneirong` longtext COMMENT '留言内容',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615871501626 DEFAULT CHARSET=utf8 COMMENT='留言反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liuyanfankui`
--

LOCK TABLES `liuyanfankui` WRITE;
/*!40000 ALTER TABLE `liuyanfankui` DISABLE KEYS */;
INSERT INTO `liuyanfankui` VALUES (41,'2021-03-16 03:50:31','用户名1','用户姓名1','手机号码1','医院名称1','留言内容1','2021-03-16','是',''),(42,'2021-03-16 03:50:31','用户名2','用户姓名2','手机号码2','医院名称2','留言内容2','2021-03-16','是',''),(43,'2021-03-16 03:50:31','用户名3','用户姓名3','手机号码3','医院名称3','留言内容3','2021-03-16','是',''),(44,'2021-03-16 03:50:31','用户名4','用户姓名4','手机号码4','医院名称4','留言内容4','2021-03-16','是',''),(45,'2021-03-16 03:50:31','用户名5','用户姓名5','手机号码5','医院名称5','留言内容5','2021-03-16','是',''),(46,'2021-03-16 03:50:31','用户名6','用户姓名6','手机号码6','医院名称6','留言内容6','2021-03-16','是',''),(1615871501625,'2021-03-16 05:11:40','11','杨先生','13823888881','人民医院','sdgsgsgg','2021-03-16','是','sdgsdgsgsg');
/*!40000 ALTER TABLE `liuyanfankui` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','6o2ouvt48hhu27g9n6c9zcfc25bt07kf','2021-03-16 03:51:01','2021-03-16 06:11:52'),(2,1615871427591,'11','yonghu','用户','4iohix80x0ny8ftuxcm45n2k3n8ia0ue','2021-03-16 05:10:36','2021-03-16 06:13:27');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-16 03:50:31');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yiyuanlajifenlei`
--

DROP TABLE IF EXISTS `yiyuanlajifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yiyuanlajifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='医院垃圾分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yiyuanlajifenlei`
--

LOCK TABLES `yiyuanlajifenlei` WRITE;
/*!40000 ALTER TABLE `yiyuanlajifenlei` DISABLE KEYS */;
INSERT INTO `yiyuanlajifenlei` VALUES (21,'2021-03-16 03:50:31','感染性废物'),(22,'2021-03-16 03:50:31','病理性废物'),(23,'2021-03-16 03:50:31','损伤性废物'),(24,'2021-03-16 03:50:31','药物性废物'),(25,'2021-03-16 03:50:31','化学性废物');
/*!40000 ALTER TABLE `yiyuanlajifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yiyuanlajixinxi`
--

DROP TABLE IF EXISTS `yiyuanlajixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yiyuanlajixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lajimingcheng` varchar(200) DEFAULT NULL COMMENT '垃圾名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `xiangxijieshao` longtext COMMENT '详细介绍',
  `xiangqing` varchar(200) DEFAULT NULL COMMENT '详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='医院垃圾信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yiyuanlajixinxi`
--

LOCK TABLES `yiyuanlajixinxi` WRITE;
/*!40000 ALTER TABLE `yiyuanlajixinxi` DISABLE KEYS */;
INSERT INTO `yiyuanlajixinxi` VALUES (31,'2021-03-16 03:50:31','沙布','http://localhost:8080/jspmxws06/upload/1615871070056.jpg','感染性废物','详细介绍1',''),(32,'2021-03-16 03:50:31','棉球','http://localhost:8080/jspmxws06/upload/1615871094449.jpg','感染性废物','详细介绍2',''),(33,'2021-03-16 03:50:31','医用针头','http://localhost:8080/jspmxws06/upload/1615871124554.jpg','损伤性废物','详细介绍3',''),(34,'2021-03-16 03:50:31','过期药品','http://localhost:8080/jspmxws06/upload/1615871155828.jpg','药物性废物','详细介绍4',''),(35,'2021-03-16 03:50:31','影像','http://localhost:8080/jspmxws06/upload/1615871288090.jpg','化学性废物','详细介绍5',''),(36,'2021-03-16 03:50:31','手术刀','http://localhost:8080/jspmxws06/upload/1615871340982.jpg','损伤性废物','详细介绍6','');
/*!40000 ALTER TABLE `yiyuanlajixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `yiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '医院名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615871427592 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-16 03:50:31','用户1','123456','用户姓名1','http://localhost:8080/jspmxws06/upload/yonghu_touxiang1.jpg','男','13823888881','医院名称1'),(12,'2021-03-16 03:50:31','用户2','123456','用户姓名2','http://localhost:8080/jspmxws06/upload/yonghu_touxiang2.jpg','男','13823888882','医院名称2'),(13,'2021-03-16 03:50:31','用户3','123456','用户姓名3','http://localhost:8080/jspmxws06/upload/yonghu_touxiang3.jpg','男','13823888883','医院名称3'),(14,'2021-03-16 03:50:31','用户4','123456','用户姓名4','http://localhost:8080/jspmxws06/upload/yonghu_touxiang4.jpg','男','13823888884','医院名称4'),(15,'2021-03-16 03:50:31','用户5','123456','用户姓名5','http://localhost:8080/jspmxws06/upload/yonghu_touxiang5.jpg','男','13823888885','医院名称5'),(16,'2021-03-16 03:50:31','用户6','123456','用户姓名6','http://localhost:8080/jspmxws06/upload/yonghu_touxiang6.jpg','男','13823888886','医院名称6'),(1615871427591,'2021-03-16 05:10:27','11','123456','杨先生','http://localhost:8080/jspmxws06/upload/1615871449546.jpg','男','13823888881','人民医院');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-20 20:22:56
