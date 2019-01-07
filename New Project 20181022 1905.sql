-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25a


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema mobile
--

CREATE DATABASE IF NOT EXISTS mobile;
USE mobile;

--
-- Definition of table `blandline`
--

DROP TABLE IF EXISTS `blandline`;
CREATE TABLE `blandline` (
  `luanme` varchar(45) NOT NULL,
  `luemal` varchar(45) NOT NULL,
  `landlinename` varchar(45) NOT NULL,
  `landlinenum` varchar(45) NOT NULL,
  `bill` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blandline`
--

/*!40000 ALTER TABLE `blandline` DISABLE KEYS */;
INSERT INTO `blandline` (`luanme`,`luemal`,`landlinename`,`landlinenum`,`bill`) VALUES 
 ('Mani','avmanimaranbca@gmail.com','Airtel Landline','04427259955','300');
/*!40000 ALTER TABLE `blandline` ENABLE KEYS */;


--
-- Definition of table `datacard`
--

DROP TABLE IF EXISTS `datacard`;
CREATE TABLE `datacard` (
  `dname` varchar(45) DEFAULT NULL,
  `demail` varchar(45) DEFAULT NULL,
  `datacardnu` varchar(45) DEFAULT NULL,
  `datacardname` varchar(45) DEFAULT NULL,
  `problem` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datacard`
--

/*!40000 ALTER TABLE `datacard` DISABLE KEYS */;
INSERT INTO `datacard` (`dname`,`demail`,`datacardnu`,`datacardname`,`problem`) VALUES 
 ('Mani','avmanimaranbca@gmail.com','8855248550','Airtel','How May Offer'),
 ('fg','sri@gmail.com','8855248550','Jio','helo'),
 ('Mani','avmanimaranbca@gmail.com','8855248550','BSNL','yuiyuhig'),
 ('Mani','avmanimaranbca@gmail.com','8855248550','BSNL','yuiyuhig'),
 ('Mani','avmanimaranbca@gmail.com','8855248550','BSNL','yuiyuhig');
/*!40000 ALTER TABLE `datacard` ENABLE KEYS */;


--
-- Definition of table `dth`
--

DROP TABLE IF EXISTS `dth`;
CREATE TABLE `dth` (
  `udname` varchar(45) DEFAULT NULL,
  `demail` varchar(45) DEFAULT NULL,
  `dthname` varchar(45) DEFAULT NULL,
  `customer id` varchar(45) DEFAULT NULL,
  `problem` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dth`
--

/*!40000 ALTER TABLE `dth` DISABLE KEYS */;
INSERT INTO `dth` (`udname`,`demail`,`dthname`,`customer id`,`problem`) VALUES 
 ('Mani','avmanimaranbca@gmail.com','Tata Sky','TS1234','How may Offer'),
 ('sk','sri@gmail.com','Airtel Digital','AD1234','hi');
/*!40000 ALTER TABLE `dth` ENABLE KEYS */;


--
-- Definition of table `landline`
--

DROP TABLE IF EXISTS `landline`;
CREATE TABLE `landline` (
  `luname` varchar(45) DEFAULT NULL,
  `luemail` varchar(45) DEFAULT NULL,
  `landlinename` varchar(45) DEFAULT NULL,
  `landlinenum` varchar(45) DEFAULT NULL,
  `problem` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `landline`
--

/*!40000 ALTER TABLE `landline` DISABLE KEYS */;
INSERT INTO `landline` (`luname`,`luemail`,`landlinename`,`landlinenum`,`problem`) VALUES 
 ('Mani','avmanimaranbca@gmail.com','BSNL Landline','044-27259255','Not rowed'),
 ('Mani','sri@gmail.com','BSNL Landline','042882568','hmm,kk'),
 ('Mani','avmanimaranbca@gmail.com','BSNL Landline','044-27259255','Not woring'),
 ('Mani','avmanimaranbca@gmail.com','BSNL Landline','044-27259255','Bill receipt not '),
 ('Mani','avmanimaranbca@gmail.com','Airtel Landline','044-27259255','Bill receipt not'),
 ('Mani','avmanimaranbca@gmail.com','Airtel Landline','044-27259255','Bill receipt not'),
 ('Mani','avmanimaranbca@gmail.com','Airtel Landline','044-27259255','Bill receipt not');
/*!40000 ALTER TABLE `landline` ENABLE KEYS */;


--
-- Definition of table `mobile`
--

DROP TABLE IF EXISTS `mobile`;
CREATE TABLE `mobile` (
  `umname` varchar(45) NOT NULL,
  `umemail` varchar(45) NOT NULL,
  `simtype` varchar(45) NOT NULL,
  `mobilenu` varchar(45) NOT NULL,
  `simname` varchar(45) NOT NULL,
  `circle` varchar(45) NOT NULL,
  `problem` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobile`
--

/*!40000 ALTER TABLE `mobile` DISABLE KEYS */;
INSERT INTO `mobile` (`umname`,`umemail`,`simtype`,`mobilenu`,`simname`,`circle`,`problem`) VALUES 
 ('sai','saikrishna@gmail.com','PREPAID','8526422366','Airtel','TamilNadu','How May Offer'),
 ('sk','avmanimaranbca@gmail.com','PREPAID ','8526422366','Jio','Chennai','mother board problem'),
 ('Mani','avmanimaranbca@gmail.com','PREPAID','8526422366','BSNL','Jammu & Kashmir',';llok;lk;lk;lk'),
 ('sai','saikrishna@gmail.com','PREPAID ','1234567890','Idea','MP & Chattisgarh','sdfasd'),
 ('sai','avmanimaranbca@gmail.com','PREPAID','8526422366','Vodafone','TamilNadu','problem'),
 ('krisna','krishna@gmail.com','PREPAID ','9978254522','BSNL','Haryana','My balance is debited'),
 ('Mani','krishna@gmail.com','PREPAID ','9978254522','Telenor','Orissa','hello'),
 ('Hari','haritoday@gmail.com','PREPAID','9956727024','Airtel','TamilNadu','Can\'t recharge the amount');
/*!40000 ALTER TABLE `mobile` ENABLE KEYS */;


--
-- Definition of table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `namecard` varchar(45) NOT NULL DEFAULT '',
  `cardnum` varchar(45) NOT NULL,
  `cvv` varchar(45) NOT NULL,
  `expdate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` (`namecard`,`cardnum`,`cvv`,`expdate`) VALUES 
 ('Arun','Arun','582','02/22'),
 ('hari','hari','985','12/22'),
 ('Krishna','Krishna','321','11/22'),
 ('Mani','Mani','123','12/22'),
 ('Manimaran','Manimaran','123','12/27'),
 ('Muruga','Muruga','123','02/25'),
 ('ram','ram','985','11/29'),
 ('sai','sai','321','01/25'),
 ('SaiKrishna.S','SaiKrishna.S','123','12/20'),
 ('sam','sam','282','04/22'),
 ('santhosh','santhosh','123','12/22'),
 ('Hari','Hari','652','11/26');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;


--
-- Definition of table `rdatacard`
--

DROP TABLE IF EXISTS `rdatacard`;
CREATE TABLE `rdatacard` (
  `dname` varchar(45) NOT NULL,
  `demail` varchar(45) NOT NULL,
  `datacardnu` varchar(45) NOT NULL,
  `datacaredname` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rdatacard`
--

/*!40000 ALTER TABLE `rdatacard` DISABLE KEYS */;
INSERT INTO `rdatacard` (`dname`,`demail`,`datacardnu`,`datacaredname`,`amount`) VALUES 
 ('Mani','avmanimaranbca@gmail.com','BSNL','63958547552','300');
/*!40000 ALTER TABLE `rdatacard` ENABLE KEYS */;


--
-- Definition of table `rdth`
--

DROP TABLE IF EXISTS `rdth`;
CREATE TABLE `rdth` (
  `udname` varchar(45) NOT NULL,
  `demail` varchar(45) NOT NULL,
  `dthname` varchar(45) NOT NULL,
  `customerid` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rdth`
--

/*!40000 ALTER TABLE `rdth` DISABLE KEYS */;
INSERT INTO `rdth` (`udname`,`demail`,`dthname`,`customerid`,`amount`) VALUES 
 ('Mani','avmanimaranbca@gmail.com','Tata Sky','TS1234','300'),
 ('Mani','avmanimaranbca@gmail.com','Sun Direct','TS1234','300');
/*!40000 ALTER TABLE `rdth` ENABLE KEYS */;


--
-- Definition of table `rmobile`
--

DROP TABLE IF EXISTS `rmobile`;
CREATE TABLE `rmobile` (
  `umname` varchar(45) NOT NULL,
  `umemail` varchar(45) NOT NULL,
  `simtype` varchar(45) NOT NULL,
  `mobilenu` varchar(45) NOT NULL,
  `simname` varchar(45) NOT NULL,
  `circle` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rmobile`
--

/*!40000 ALTER TABLE `rmobile` DISABLE KEYS */;
INSERT INTO `rmobile` (`umname`,`umemail`,`simtype`,`mobilenu`,`simname`,`circle`,`amount`) VALUES 
 ('Mani','avmanimaranbca@gmail.com','PREPAID ','Airtel','9965727024','Chennai','100'),
 ('Hari','haritoday@gmail.com','PREPAID','Airtel','9965727024','TamilNadu','399');
/*!40000 ALTER TABLE `rmobile` ENABLE KEYS */;


--
-- Definition of table `showdatacard`
--

DROP TABLE IF EXISTS `showdatacard`;
CREATE TABLE `showdatacard` (
  `dname` varchar(45) NOT NULL,
  `demail` varchar(45) NOT NULL,
  `datacardnu` varchar(45) NOT NULL,
  `datacardname` varchar(45) NOT NULL,
  `problem` varchar(45) NOT NULL,
  `comment` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showdatacard`
--

/*!40000 ALTER TABLE `showdatacard` DISABLE KEYS */;
INSERT INTO `showdatacard` (`dname`,`demail`,`datacardnu`,`datacardname`,`problem`,`comment`) VALUES 
 ('Mani','avmanimaranbca@gmail.com','8855248550','Airtel','How May Offer','Number of offer you can show');
/*!40000 ALTER TABLE `showdatacard` ENABLE KEYS */;


--
-- Definition of table `showdth`
--

DROP TABLE IF EXISTS `showdth`;
CREATE TABLE `showdth` (
  `udname` varchar(45) NOT NULL,
  `demail` varchar(45) NOT NULL,
  `dthname` varchar(45) NOT NULL,
  `customer id` varchar(45) NOT NULL,
  `problem` varchar(45) NOT NULL,
  `comment` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showdth`
--

/*!40000 ALTER TABLE `showdth` DISABLE KEYS */;
INSERT INTO `showdth` (`udname`,`demail`,`dthname`,`customer id`,`problem`,`comment`) VALUES 
 ('Mani','avmanimaranbca@gmail.com','Tata Sky','TS1234','How may Offer','always show how may offer');
/*!40000 ALTER TABLE `showdth` ENABLE KEYS */;


--
-- Definition of table `showlandline`
--

DROP TABLE IF EXISTS `showlandline`;
CREATE TABLE `showlandline` (
  `luname` varchar(45) NOT NULL,
  `luemail` varchar(45) NOT NULL,
  `landlinename` varchar(45) NOT NULL,
  `landlinenum` varchar(45) NOT NULL,
  `problem` varchar(45) NOT NULL,
  `comment` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showlandline`
--

/*!40000 ALTER TABLE `showlandline` DISABLE KEYS */;
INSERT INTO `showlandline` (`luname`,`luemail`,`landlinename`,`landlinenum`,`problem`,`comment`) VALUES 
 ('Mani','avmanimaranbca@gmail.com','Airtel','8855248550','How May Offer','Bill receipt not');
/*!40000 ALTER TABLE `showlandline` ENABLE KEYS */;


--
-- Definition of table `showmobile`
--

DROP TABLE IF EXISTS `showmobile`;
CREATE TABLE `showmobile` (
  `umname` varchar(45) NOT NULL,
  `umemail` varchar(45) NOT NULL,
  `simtype` varchar(45) NOT NULL,
  `mobilenu` varchar(45) NOT NULL,
  `simname` varchar(45) NOT NULL,
  `cicle` varchar(45) NOT NULL,
  `problem` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showmobile`
--

/*!40000 ALTER TABLE `showmobile` DISABLE KEYS */;
INSERT INTO `showmobile` (`umname`,`umemail`,`simtype`,`mobilenu`,`simname`,`cicle`,`problem`,`comment`) VALUES 
 ('sai','saikrishna@gmail.com','PREPAID','8526422366','Airtel','TamilNadu','How May Offer','your mobile number is used ringtone'),
 ('sk','avmanimaranbca@gmail.com','PREPAID ','8526422366','Jio','Chennai','mother board problem','Hi '),
 ('sai','avmanimaranbca@gmail.com','PREPAID','8526422366','Vodafone','TamilNadu','problem','iuoiu'),
 ('krisna','krishna@gmail.com','PREPAID ','9978254522','BSNL','Haryana','My balance is debited','Your mobile number used remotes'),
 ('krisna','krishna@gmail.com','PREPAID ','9978254522','BSNL','Haryana','My balance is debited','Your mobile number used remotes'),
 ('krisna','krishna@gmail.com','PREPAID ','9978254522','BSNL','Haryana','My balance is debited','Your mobile number used remotes'),
 ('sai','saikrishna@gmail.com','PREPAID','8526422366','Airtel','TamilNadu','How May Offer','jkjj'),
 ('Mani','krishna@gmail.com','PREPAID ','9978254522','Telenor','Orissa','hello','wel com'),
 ('Hari','haritoday@gmail.com','PREPAID','9956727024','Airtel','TamilNadu','Can\'t recharge the amount','Sorry Refund amount');
/*!40000 ALTER TABLE `showmobile` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`name`,`email`,`password`,`mobile`) VALUES 
 (1,'Mani','avmanimaranbca@gmail.com','123','8526422366'),
 (2,'maran','maran@gmail.com','321','9884852186'),
 (3,'sri','sri@gmail.com','1234','1234567890'),
 (4,'Mani','avmanimaranbca@gmail.com','123123','8526422366'),
 (5,'Sai','saikrishna@gmail.com','123456','8526422366'),
 (6,'Krishna','krishna@gmail.com','123321','9978254522'),
 (7,'Hari','haritoday@gmail.com','123456','9965727024');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
