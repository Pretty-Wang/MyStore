/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.5.40 : Database - goods
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`goods` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `goods`;

/*Table structure for table `t_admin` */

DROP TABLE IF EXISTS `t_admin`;

CREATE TABLE `t_admin` (
  `adminId` char(32) NOT NULL,
  `adminname` varchar(50) DEFAULT NULL,
  `adminpwd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_admin` */

insert  into `t_admin`(`adminId`,`adminname`,`adminpwd`) values ('a1','wangyy','123'),('a2','tiantian','123'),('a3','shijian','123');

/*Table structure for table `t_cartitem` */

DROP TABLE IF EXISTS `t_cartitem`;

CREATE TABLE `t_cartitem` (
  `cartItemId` char(32) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `bid` char(32) DEFAULT NULL,
  `uid` char(32) DEFAULT NULL,
  `orderBy` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cartItemId`),
  KEY `orderBy` (`orderBy`),
  KEY `FK_t_cartitem_t_user` (`uid`),
  KEY `FK_t_cartitem_t_book` (`bid`),
  CONSTRAINT `FK_t_cartitem_t_pet` FOREIGN KEY (`bid`) REFERENCES `t_pet` (`bid`),
  CONSTRAINT `FK_t_cartitem_t_user` FOREIGN KEY (`uid`) REFERENCES `t_user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `t_cartitem` */

insert  into `t_cartitem`(`cartItemId`,`quantity`,`bid`,`uid`,`orderBy`) values ('0B4415C7E7D6476EA2D00BAFCBC0D449',1,'6DD3333F981048F090C75B88F69DDB8D','B7C59347B18447F895B32D96D2D3DD9D',12),('18D09FF6E30446F78903F2F4B1856CB7',1,'CE8C7B19C8A84509ADA215CDB9E984B9','B7C59347B18447F895B32D96D2D3DD9D',13),('208146D317C047E8A076304EF76AB55D',1,'0568E9BFF7BE4317A515D8235A0D4AB5','B7C59347B18447F895B32D96D2D3DD9D',9),('3368753706064AAD8FA9769196BF7861',3,'64CA80D86534410BBAC5412DA32D6D02','B7C59347B18447F895B32D96D2D3DD9D',3),('7416F08B989547A1A800502C20F6FF41',1,'24998B18CECB4538ABCDD733AD2D270F','B7C59347B18447F895B32D96D2D3DD9D',2),('9762C6F56ED04A87A634E04891AC4B12',1,'5557B86E7BD949219AF447B6891B8F9B','B7C59347B18447F895B32D96D2D3DD9D',8),('97DF3B19BED24C2896BD4D5DCBCF6DB6',1,'F13648DF02CE4BACBDCACED1FF6D0207','B7C59347B18447F895B32D96D2D3DD9D',10),('AF36CF2656B4456C95125F87CB688015',1,'8D0AF884247C4D988636D4980510B547','B7C59347B18447F895B32D96D2D3DD9D',11),('F6D3E95A69084B929937BEC8768FF9E9',1,'FD6EC55E3B8F496195E0BAFE98896D3E','B7C59347B18447F895B32D96D2D3DD9D',7);

/*Table structure for table `t_category` */

DROP TABLE IF EXISTS `t_category`;

CREATE TABLE `t_category` (
  `cid` char(32) NOT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `pid` char(32) DEFAULT NULL,
  `desc` varchar(100) DEFAULT NULL,
  `orderBy` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `cname` (`cname`),
  KEY `FK_t_category_t_category` (`pid`),
  KEY `orderBy` (`orderBy`),
  CONSTRAINT `FK_t_category_t_category` FOREIGN KEY (`pid`) REFERENCES `t_category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

/*Data for the table `t_category` */

insert  into `t_category`(`cid`,`cname`,`pid`,`desc`,`orderBy`) values ('0088D733832A4113AAB74726CFFDCD4F','狸花猫','2','宠物猫',50),('0754089C6EA540B8B1257ABFF807F997','短毛猫','2','猫猫',51),('1','汪星人',NULL,'狗狗',1),('157188C14E3447CEA756470C4F8014CD','花巨兔','4','宠物兔',48),('2','喵星人',NULL,'猫猫',2),('200A7A71D5E64213809AD6F09B020B99','龙猫','3','宠物鼠',42),('3','鼠星人',NULL,'宠物鼠',3),('386AE98A3DC5430AA617B692F74D1082','海棠兔','4','宠物兔',47),('3BF910976A9745FE97406B5E7BAFAF1D','波斯','2','猫猫',38),('4','兔星人',NULL,'宠物兔',4),('443EDB0B650D40DAB3A3851764F754EA','布偶','2','猫猫',40),('5ECDA50FF24C4AD7B5BFBD4E6FB465A7','豚鼠','3','宠物鼠',49),('6FD2283C583B40E0A4BD514AD34B435B','金毛','1','狗狗',33),('70D965211C5D4E5AA8CF7058A5BD897F','比熊','1','狗狗',35),('A76A42D3C31E44D4AB091BB615722691','缅因','2','猫猫',41),('A78B6578E2F24CE7ACD07411D34EDB97','巨型安哥拉','4','宠物兔',46),('AB5F43D98C1B4AB0B181D5F60C96FF8C','仓鼠','3','宠物鼠',31),('B2C349469FC04D7F901C1C50CD86D642','博美','1','狗狗',29),('BA34B184BB5340F7A5BE826220D89CAC','迷你垂耳兔','4','宠物兔',44),('D5FC5FEC5B63496985B37E6DCFB8CF95','折耳','2','猫猫',30),('E718F0A47C7C4F128BCAC370890CB534','柯基','1','狗狗',34),('F46B191ADAE24183ADD01053519CCFC2','牧羊犬','1','狗狗',37),('F71CC6F29EBB4592B1B5947A1D9FF1C2','埃及','2','猫猫',39),('FC9554F34C8D4B32997DEDC1672C98FC','荷兰兔','4','宠物兔',45);

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `oid` char(32) NOT NULL,
  `ordertime` char(19) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `uid` char(32) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `FK_t_order_t_user` (`uid`),
  CONSTRAINT `FK_t_order_t_user` FOREIGN KEY (`uid`) REFERENCES `t_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_order` */

insert  into `t_order`(`oid`,`ordertime`,`total`,`status`,`address`,`uid`) values ('256838E05B2646F6A919CA9BD2778B9B','2020-04-02 17:41:50','345.00',3,'江苏省南京市XXXxxxxxxxx','B7C59347B18447F895B32D96D2D3DD9D'),('518DF1FCEBDB4D08904A036101C2E520','2020-04-02 20:32:27','499.00',1,'江苏省南京市仙林大学城','B7C59347B18447F895B32D96D2D3DD9D'),('742D28ED026E4292AEE7C273205217A1','2020-04-02 17:43:13','399.00',1,'安徽省合肥市xxxxxxxxxxxx','B7C59347B18447F895B32D96D2D3DD9D'),('EAEED771C54346D7B2DC5DA84F5112AE','2020-04-02 20:34:10','1199.00',1,'江苏省南京市仙林街道。。。','B7C59347B18447F895B32D96D2D3DD9D');

/*Table structure for table `t_orderitem` */

DROP TABLE IF EXISTS `t_orderitem`;

CREATE TABLE `t_orderitem` (
  `orderItemId` char(32) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `bid` char(32) DEFAULT NULL,
  `bname` varchar(200) DEFAULT NULL,
  `currPrice` decimal(8,2) DEFAULT NULL,
  `image_b` varchar(100) DEFAULT NULL,
  `oid` char(32) DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `FK_t_orderitem_t_order` (`oid`),
  CONSTRAINT `FK_t_orderitem_t_order` FOREIGN KEY (`oid`) REFERENCES `t_order` (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_orderitem` */

insert  into `t_orderitem`(`orderItemId`,`quantity`,`subtotal`,`bid`,`bname`,`currPrice`,`image_b`,`oid`) values ('33E2C77BF6364EBC8B7DDFD5D34878D3',1,'1199.00','61CF822207C34C75B2F6BACC57EBCD03','布偶猫——猫中贵族','1199.00','pet_img/buou_2.jpg','EAEED771C54346D7B2DC5DA84F5112AE'),('44AC352180F04ACD879BB8C56C795F74',1,'345.00','5E7C0D1D8213442E9E172964C9156DF4','博美狗狗','345.00','pet_img/bomei_2.jpg','256838E05B2646F6A919CA9BD2778B9B'),('981EBCCAED6345B08A9D8F4265ECE482',1,'499.00','75849703911140178EB5C89F2CC56AB2','波斯猫幼崽','499.00','pet_img/bosi_2.jpg','518DF1FCEBDB4D08904A036101C2E520'),('FD7CD1B9BB574EDCA5EA11D202970208',1,'399.00','626ACB5E595B45E5A208795F6F4D3827','可爱比熊','399.00','pet_img/bixiong_2.jpg','742D28ED026E4292AEE7C273205217A1');

/*Table structure for table `t_pet` */

DROP TABLE IF EXISTS `t_pet`;

CREATE TABLE `t_pet` (
  `bid` char(32) NOT NULL,
  `bname` varchar(200) DEFAULT NULL,
  `currPrice` decimal(8,2) DEFAULT NULL,
  `discount` decimal(3,1) DEFAULT NULL,
  `cid` char(32) DEFAULT NULL,
  `image_w` varchar(100) DEFAULT NULL,
  `image_b` varchar(100) DEFAULT NULL,
  `orderBy` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`bid`),
  KEY `orderBy` (`orderBy`),
  KEY `FK_t_book_t_category` (`cid`),
  CONSTRAINT `FK_t_pet_t_category` FOREIGN KEY (`cid`) REFERENCES `t_category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

/*Data for the table `t_pet` */

insert  into `t_pet`(`bid`,`bname`,`currPrice`,`discount`,`cid`,`image_w`,`image_b`,`orderBy`) values ('0568E9BFF7BE4317A515D8235A0D4AB5','英国短毛猫','399.00','9.9','0754089C6EA540B8B1257ABFF807F997','pet_img/yingguoduanmaomao_1.jpg','pet_img/yingguoduanmaomao_2.jpg',122),('0DE6EA9FECC64338AEA273B4520406D2','埃及猫','359.00','9.9','F71CC6F29EBB4592B1B5947A1D9FF1C2','pet_img/aiji1_1.jpg','pet_img/aiji1_2.jpg',98),('1E6A9992380340CD9B31BFB4C2E71FB1','小金毛','299.00','9.9','6FD2283C583B40E0A4BD514AD34B435B','pet_img/jinmao_1.jpg','pet_img/jinmao_2.jpg',115),('205136BF1411408EA0896BE0049D0957','布偶猫——可可爱爱','1199.00','9.9','443EDB0B650D40DAB3A3851764F754EA','pet_img/buoumao_1.jpg','pet_img/buoumao_2.jpg',106),('24998B18CECB4538ABCDD733AD2D270F','金毛狗狗','399.00','9.9','6FD2283C583B40E0A4BD514AD34B435B','pet_img/jinmao1_1.jpg','pet_img/jinmao1_2.jpg',116),('346A429D11E04BA4A2B93FBCDDB8C6B8','荷兰侏儒兔','299.00','9.9','FC9554F34C8D4B32997DEDC1672C98FC','pet_img/helanzhurutu_1.jpg','pet_img/helanzhurutu_2.jpg',113),('54C0586189CA49BE8738ABCFB1A5F1BA','仓鼠小精灵','19.00','9.9','AB5F43D98C1B4AB0B181D5F60C96FF8C','pet_img/cangshu2_1.jpg','pet_img/cangshu2_2.jpg',109),('5557B86E7BD949219AF447B6891B8F9B','狸花猫幼崽','399.00','9.9','0088D733832A4113AAB74726CFFDCD4F','pet_img/lihua_1.jpg','pet_img/lihua_2.jpg',118),('5C47505A26F64A0E91C1803546BD884F','柯基——可可爱爱','399.00','9.9','E718F0A47C7C4F128BCAC370890CB534','pet_img/keji_1.jpg','pet_img/keji_2.jpg',117),('5E7C0D1D8213442E9E172964C9156DF4','博美狗狗','345.00','9.9','B2C349469FC04D7F901C1C50CD86D642','pet_img/bomei_1.jpg','pet_img/bomei_2.jpg',95),('61CF822207C34C75B2F6BACC57EBCD03','布偶猫——猫中贵族','1199.00','9.9','443EDB0B650D40DAB3A3851764F754EA','pet_img/buou_1.jpg','pet_img/buou_2.jpg',105),('626ACB5E595B45E5A208795F6F4D3827','可爱比熊','399.00','9.9','70D965211C5D4E5AA8CF7058A5BD897F','pet_img/bixiong_1.jpg','pet_img/bixiong_2.jpg',102),('64CA80D86534410BBAC5412DA32D6D02','柯基','299.00','9.9','E718F0A47C7C4F128BCAC370890CB534','pet_img/keji_1.jpg','pet_img/keji_2.jpg',96),('6DD3333F981048F090C75B88F69DDB8D','海棠兔','199.00','9.9','386AE98A3DC5430AA617B692F74D1082','pet_img/haitang_1.jpg','pet_img/haitang_2.jpg',111),('7010C9E065A5458E9F3EE562E4769B78','苏格兰牧羊犬','599.00','9.9','F46B191ADAE24183ADD01053519CCFC2','pet_img/sugelanmuyangquan_1.jpg','pet_img/sugelanmuyangquan_2.jpg',99),('75849703911140178EB5C89F2CC56AB2','波斯猫幼崽','499.00','9.9','3BF910976A9745FE97406B5E7BAFAF1D','pet_img/bosi_1.jpg','pet_img/bosi_2.jpg',103),('7CDF92B2D3C64A6581838711E188E49A','边境牧羊犬','499.00','9.9','F46B191ADAE24183ADD01053519CCFC2','pet_img/bianjingmuyangquan_1.jpg','pet_img/bianijngmuyangquan_2.jpg',101),('8824C3006133442580D3306CF9BA7392','龙猫','29.00','9.9','200A7A71D5E64213809AD6F09B020B99','pet_img/longmao_1.jpg','pet_img/longmao_2.jpg',119),('8BC571D5D1F94FA68C8299698ABFFDD5','东方短毛猫','399.00','9.9','0754089C6EA540B8B1257ABFF807F997','pet_img/dongfangduanmaom_1.jpg','pet_img/dongfangduanmaom_2.jpg',110),('8D0AF884247C4D988636D4980510B547','豚鼠','29.00','9.9','5ECDA50FF24C4AD7B5BFBD4E6FB465A7','pet_img/tunshu2_1.jpg','pet_img/tunshu2_2.jpg',120),('8EB9EBE01A734C85A407A2C337003ABF','迷你垂耳兔','399.00','9.9','BA34B184BB5340F7A5BE826220D89CAC','pet_img/minichuiertu_1.jpg','pet_img/minichuiertu_2.jpg',123),('9D9D4905FBB14F928433A7E0CFBDAE5A','埃及猫','359.00','9.9','F71CC6F29EBB4592B1B5947A1D9FF1C2','pet_img/aijimao_1.jpg','pet_img/aijimao_2.jpg',100),('CE8C7B19C8A84509ADA215CDB9E984B9','埃及猫','359.00','9.9','F71CC6F29EBB4592B1B5947A1D9FF1C2','pet_img/aiji_1.jpg','pet_img/aiji_2.jpg',97),('DDDBFF61DB404354BAFA6777339C4ADF','可爱的小仓鼠','19.00','9.9','AB5F43D98C1B4AB0B181D5F60C96FF8C','pet_img/cangshu_1.jpg','pet_img/cangshu_2.jpg',107),('E628840BA002463184C3D3B0305970EA','仓鼠宝宝','19.00','9.9','AB5F43D98C1B4AB0B181D5F60C96FF8C','pet_img/cangshu1_1.jpg','pet_img/cangshu1_2.jpg',108),('F07970738D6B42D1B906FD3FC2893DED','荷兰垂耳兔','299.00','9.9','FC9554F34C8D4B32997DEDC1672C98FC','pet_img/helanchuier_1.jpg','pet_img/helanchuier_2.jpg',112),('F13648DF02CE4BACBDCACED1FF6D0207','折耳猫','399.00','9.9','D5FC5FEC5B63496985B37E6DCFB8CF95','pet_img/zheer_1.jpg','pet_img/zheer_2.jpg',121),('FD6EC55E3B8F496195E0BAFE98896D3E','波斯猫——喵之高贵','599.00','9.9','3BF910976A9745FE97406B5E7BAFAF1D','pet_img/bosim_1.jpg','pet_img/bosim_2.jpg',104);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `uid` char(32) NOT NULL,
  `loginname` varchar(50) DEFAULT NULL,
  `loginpass` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `activationCode` char(64) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `loginname` (`loginname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`uid`,`loginname`,`loginpass`,`email`,`status`,`activationCode`) values ('32DB3700D2564254982BC58B0E4D95BC','liSi','123','itcast_cxf@126.com',1,'15682E9C4D2849E2AB5D8AFF55D2F7BA87126B0EF55A45C6A136E3CAA90D60F2'),('531D8A16D524478D86F8A115FE95D93F','zhangSan','123','itcast_cxf@163.com',1,'FCF142D04C4A420992FF4E7BAC92C1E58AF905F1A46B4818BB455BD925E52DDD'),('B7C59347B18447F895B32D96D2D3DD9D','yuanfang','123456','wn225@foxmail.com',1,'EBB665E2B9554B76A3AD8D928D1EA832CDD4EC9269CD4C6684211177AAB5F24E');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
