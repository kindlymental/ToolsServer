-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: tools_db
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `title` varchar(100) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `detail` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `tag` int DEFAULT NULL COMMENT '0: 普通  1：最热   2：置顶',
  `imgUrl` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `wordsId` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES ('开发者眼中的 SwiftUI：它为我和用户带来了什么？',1,'6月份是苹果用户和开发者社群非常活跃的时期，\r\n苹果几大新系统在 WWDC 发布后，果粉们都会纷纷讨论 iOS 13，iPadOS 和 macOS 10.15 等的新亮点，并发表自己的评价。','https://www.jianshu.com/p/ac505e19205d',1,'https://cdn.sspai.com/2021/03/17/86b4030fc62e18473422a9dc558c429a.jpg?imageView2/2/w/1120/q/90/interlace/1/ignore-error/1',2),('javascript 面试的完美指南(开发者视角)',2,'JavaScript（简称“JS”） 是一种具有函数优先的轻量级，解释型或即时编译型的编程语言。虽然它是作为开发Web页面的脚本语言而出名的，但是它也被用到了很多非浏览器环境中。','https://blog.csdn.net/weixin_40802058/article/details/88740083',0,'',1),('Flutter 你都知道些什么？',3,'Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。','https://www.jianshu.com/p/5a0df9b4e817',0,'https://cdnp3.stackassets.com/588d7f047924b22cb7d04197550f5d679e084586/store/opt/596/447/224ac85c2abce067ef7a73da6d3d433cf2f84375bcb2cd38e45714effd0d/product_28668_product_shots1.jpg',3),('npm install安装流程',4,'执行npm install,检查项目的node_modules是否已经存在安装模块，如果存在就不会进行安装(即使已经有了新版本) (npm install -f 不管本地是否已经安装了模块，都会重新安装。)','http://static.kancloud.cn/cyyspring/webpack/2306952',0,'',5),('CSS如何使文本以大写字母开头',5,'使用text-transform:capitalize;属性即可实现','',0,'',6),('Dart 是不是单线程模型？是如何运行的？',6,'Dart 在单线程中是以消息循环机制来运行的，其中包含两个任务队列，一个是“微任务队列” microtask queue，另一个叫做“事件队列” event queue。','https://blog.csdn.net/DevolperFront/article/details/100980662',0,'https://img0.baidu.com/it/u=546698500,87821893&fm=253&app=138&size=w931&n=0&f=PNG&fmt=auto?sec=1681146000&t=c3cdcd9895dfe16a81c9252fa09ca44f',4),('SDWebImage的缓存策略？',7,'sd加载一张图片的时候，会先在内存里面查找是否有这张图片，如果没有会根据图片的md5(url)后的名称去沙盒里面去寻找，是否有这张图片，如果没有会开辟线程去下载，下载完毕后加载到imageview上面，并md(url)为名称缓存到沙盒里面。','https://www.jianshu.com/p/b8517dc833c7',0,'',2),('vue3.0新特性',8,'vue3.0新特性有：1、支持tree-shaking；2、新增setup；3、引入了Composition API；4、新增三个组件（Fragment、Teleport、Suspense）；5、响应式API；6、响应式侦听等。','https://www.36dianping.com/news/11056.html',0,'https://v-static.36krcdn.com/ent/yp_pro/6205ae32-8243-4931-a33d-35d702250317.jpg',7);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_words`
--

DROP TABLE IF EXISTS `news_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_words` (
  `id` int NOT NULL,
  `words` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_words`
--

LOCK TABLES `news_words` WRITE;
/*!40000 ALTER TABLE `news_words` DISABLE KEYS */;
INSERT INTO `news_words` VALUES (1,'JS'),(2,'iOS'),(3,'Dart'),(4,'Flutter'),(5,'node'),(6,'CSS'),(7,'Vue');
/*!40000 ALTER TABLE `news_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'张三');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'tools_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-27 18:43:30
