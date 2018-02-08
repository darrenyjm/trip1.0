/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.5.45-log : Database - hotel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hotel` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hotel`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `aid` int(2) NOT NULL AUTO_INCREMENT,
  `aname` varchar(20) DEFAULT NULL,
  `apwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`aid`,`aname`,`apwd`) values (1,'admin','123');

/*Table structure for table `hotel` */

DROP TABLE IF EXISTS `hotel`;

CREATE TABLE `hotel` (
  `hid` int(2) NOT NULL AUTO_INCREMENT,
  `hname` varchar(10) DEFAULT NULL,
  `htype` int(2) DEFAULT '1',
  `hlevel` float DEFAULT NULL,
  `hcount` int(1) DEFAULT '0',
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `hotel` */

insert  into `hotel`(`hid`,`hname`,`htype`,`hlevel`,`hcount`) values (1,'广州大厦',1,4,0),(2,'广州总统大酒店',1,3,0),(3,'东山宾馆',1,4,0),(4,'华威达酒店',1,4,0),(5,'银座酒店',1,3,0),(6,'海军华海大厦',1,4,0),(7,'汉庭酒店(天河店)',1,4,0),(8,'广州卡丽皇家金煦酒店',1,4,0),(9,'金沙大酒店',1,3,0),(10,'凯荣都国际大酒店',1,3,0);

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `oid` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `uinto` date DEFAULT NULL,
  `uout` date DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order` */

/*Table structure for table `room` */

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `rid` int(5) NOT NULL COMMENT '房间号',
  `hid` int(5) DEFAULT NULL COMMENT '酒店id',
  `Id` int(5) DEFAULT NULL COMMENT '主键ID',
  `rtype` int(2) DEFAULT NULL COMMENT '房间类型',
  `rprize` float DEFAULT NULL COMMENT '房间价格',
  `rnet` int(2) DEFAULT '1' COMMENT '宽带',
  `rstate` int(2) DEFAULT '0' COMMENT '状态',
  `rcount` int(2) DEFAULT '0' COMMENT '是否特价',
  PRIMARY KEY (`rid`),
  KEY `hid` (`hid`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`hid`) REFERENCES `hotel` (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `room` */

insert  into `room`(`rid`,`hid`,`Id`,`rtype`,`rprize`,`rnet`,`rstate`,`rcount`) values (101,1,1,1,260,1,0,0),(102,2,4,1,200,1,0,0),(103,3,7,1,270,1,0,0),(104,4,10,1,245,1,0,0),(105,5,13,1,210,1,0,0),(106,6,16,1,300,1,0,0),(107,7,19,1,296,1,0,0),(108,8,22,1,299,1,0,0),(109,9,25,1,199,1,0,0),(110,10,28,1,211,1,0,0),(201,1,2,2,800,1,0,0),(202,2,5,2,650,1,0,0),(203,3,8,2,810,1,0,0),(204,4,11,2,815,1,0,0),(205,5,14,2,660,1,0,0),(206,6,17,2,801,1,0,0),(207,7,20,2,820,1,0,0),(208,8,23,2,819,1,0,0),(209,9,26,2,700,1,0,0),(210,10,29,2,699,1,0,0),(301,1,3,3,2000,1,0,0),(302,2,6,3,1800,1,0,0),(303,3,9,3,1999,1,0,0),(304,4,12,3,2010,1,0,0),(305,5,15,3,1950,1,0,0),(306,6,18,3,2100,1,0,0),(307,7,21,3,2150,1,0,0),(308,8,24,3,2200,1,0,0),(309,9,27,3,1960,1,0,0),(310,10,30,3,2018,1,0,0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) DEFAULT NULL,
  `upwd` varchar(50) DEFAULT NULL,
  `uphone` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
