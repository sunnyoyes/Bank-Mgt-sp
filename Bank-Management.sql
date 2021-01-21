/*
SQLyog Community v9.30 
MySQL - 5.6.25-log : Database - bank-mgt-sp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bank-mgt-sp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bank-mgt-sp`;

/*Table structure for table `b_account_balance` */

DROP TABLE IF EXISTS `b_account_balance`;

CREATE TABLE `b_account_balance` (
  `ID` bigint(20) NOT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE_TIME` datetime DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATE_TIME` datetime DEFAULT NULL,
  `account_No` bigint(20) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `b_account_balance` */

insert  into `b_account_balance`(`ID`,`CREATED_BY`,`CREATED_DATE_TIME`,`MODIFIED_BY`,`MODIFIED_DATE_TIME`,`account_No`,`amount`) values (1,NULL,NULL,NULL,NULL,10101202,1800),(2,NULL,NULL,NULL,NULL,10101203,200);

/*Table structure for table `b_bank` */

DROP TABLE IF EXISTS `b_bank`;

CREATE TABLE `b_bank` (
  `ID` bigint(20) NOT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE_TIME` datetime DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATE_TIME` datetime DEFAULT NULL,
  `IFSE_Code` varchar(225) DEFAULT NULL,
  `Description` varchar(225) DEFAULT NULL,
  `Name` varchar(225) DEFAULT NULL,
  `Short_Code` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `b_bank` */

insert  into `b_bank`(`ID`,`CREATED_BY`,`CREATED_DATE_TIME`,`MODIFIED_BY`,`MODIFIED_DATE_TIME`,`IFSE_Code`,`Description`,`Name`,`Short_Code`) values (1,NULL,NULL,NULL,NULL,'BKID0008810','fvfdsvfv,sdbvisfvbi','Bank Of India','BOI');

/*Table structure for table `b_fundtransfer` */

DROP TABLE IF EXISTS `b_fundtransfer`;

CREATE TABLE `b_fundtransfer` (
  `ID` bigint(20) NOT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE_TIME` datetime DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATE_TIME` datetime DEFAULT NULL,
  `Bank_Name` varchar(225) DEFAULT NULL,
  `Ben_Acc_Holder_Name` varchar(225) DEFAULT NULL,
  `Ben_account_No` bigint(20) DEFAULT NULL,
  `by_acc_holder_Name` varchar(225) DEFAULT NULL,
  `by_AccountNo` bigint(20) DEFAULT NULL,
  `routing` varchar(225) DEFAULT NULL,
  `Status` varchar(225) DEFAULT NULL,
  `Tra_Amount` bigint(20) DEFAULT NULL,
  `transfer_Date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `b_fundtransfer` */

insert  into `b_fundtransfer`(`ID`,`CREATED_BY`,`CREATED_DATE_TIME`,`MODIFIED_BY`,`MODIFIED_DATE_TIME`,`Bank_Name`,`Ben_Acc_Holder_Name`,`Ben_account_No`,`by_acc_holder_Name`,`by_AccountNo`,`routing`,`Status`,`Tra_Amount`,`transfer_Date`) values (1,NULL,NULL,NULL,NULL,'Bank Of India','Raj Patidar',10101203,'Hari Om',10101202,'752758','Completed',200,'2020-10-26 11:07:54');

/*Table structure for table `b_role` */

DROP TABLE IF EXISTS `b_role`;

CREATE TABLE `b_role` (
  `ID` bigint(20) NOT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE_TIME` datetime DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATE_TIME` datetime DEFAULT NULL,
  `Description` varchar(225) DEFAULT NULL,
  `Name` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `b_role` */

insert  into `b_role`(`ID`,`CREATED_BY`,`CREATED_DATE_TIME`,`MODIFIED_BY`,`MODIFIED_DATE_TIME`,`Description`,`Name`) values (1,'root','2020-10-25 23:55:46','root','2020-10-25 23:55:53','Administration','Admin'),(2,'root','2020-10-25 23:56:14','root','2020-10-25 23:56:24','User','User');

/*Table structure for table `b_user` */

DROP TABLE IF EXISTS `b_user`;

CREATE TABLE `b_user` (
  `ID` bigint(20) NOT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE_TIME` datetime DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATE_TIME` datetime DEFAULT NULL,
  `Account_Name` varchar(225) DEFAULT NULL,
  `account_No` bigint(20) DEFAULT NULL,
  `bank_Id` bigint(20) DEFAULT NULL,
  `bank_Name` varchar(225) DEFAULT NULL,
  `confirmPassword` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `email_Id` varchar(225) DEFAULT NULL,
  `Fax` varchar(225) DEFAULT NULL,
  `first_Name` varchar(225) DEFAULT NULL,
  `Gender` varchar(225) DEFAULT NULL,
  `last_Name` varchar(225) DEFAULT NULL,
  `Login` varchar(225) DEFAULT NULL,
  `Mobile_No` varchar(225) DEFAULT NULL,
  `Nationality` varchar(225) DEFAULT NULL,
  `Password` varchar(225) DEFAULT NULL,
  `role_Id` bigint(20) DEFAULT NULL,
  `Title` varchar(225) DEFAULT NULL,
  `Type_Of_Account` varchar(255) DEFAULT NULL,
  `User_Image` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `b_user` */

insert  into `b_user`(`ID`,`CREATED_BY`,`CREATED_DATE_TIME`,`MODIFIED_BY`,`MODIFIED_DATE_TIME`,`Account_Name`,`account_No`,`bank_Id`,`bank_Name`,`confirmPassword`,`dob`,`email_Id`,`Fax`,`first_Name`,`Gender`,`last_Name`,`Login`,`Mobile_No`,`Nationality`,`Password`,`role_Id`,`Title`,`Type_Of_Account`,`User_Image`) values (1,'root','2020-10-26 07:27:00','root','2020-10-26 07:27:05','Cureent',10101201,1,'Bank of India','Admin@123','2020-10-26 07:27:46','Admin@gmail.com','1351','Admin','Male','Admin','Admin123','9685456585','Indian','Admin@123',1,'Hari','Saving',NULL),(2,NULL,NULL,NULL,NULL,'My Account',10101202,1,'Bank Of India',NULL,'1997-06-10 00:00:00','Hari@gmail.com','15155','Hari','Male','Om','Hari@gmail.com','9685456585','Indian','Hari@123',2,'My Title','Current',NULL),(3,NULL,NULL,NULL,NULL,'Raj Account',10101203,1,'Bank Of India',NULL,'1998-10-10 00:00:00','Raj@gmail.com','55151','Raj','Male','Patidar','Raj@gmail.com','9685456585','Indian','Raj@123',2,'MorAccout','Saving',NULL);

/*Table structure for table `book_transaction` */

DROP TABLE IF EXISTS `book_transaction`;

CREATE TABLE `book_transaction` (
  `ID` bigint(20) NOT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATED_DATE_TIME` datetime DEFAULT NULL,
  `MODIFIED_BY` varchar(50) DEFAULT NULL,
  `MODIFIED_DATE_TIME` datetime DEFAULT NULL,
  `Acc_Holder_Name` varchar(225) DEFAULT NULL,
  `Account_No` bigint(20) DEFAULT NULL,
  `bank_Id` bigint(20) DEFAULT NULL,
  `Bank_Name` varchar(225) DEFAULT NULL,
  `rounting_No` varchar(225) DEFAULT NULL,
  `transaction_Amount` bigint(20) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `transaction_Description` varchar(225) DEFAULT NULL,
  `Transaction_type` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `book_transaction` */

insert  into `book_transaction`(`ID`,`CREATED_BY`,`CREATED_DATE_TIME`,`MODIFIED_BY`,`MODIFIED_DATE_TIME`,`Acc_Holder_Name`,`Account_No`,`bank_Id`,`Bank_Name`,`rounting_No`,`transaction_Amount`,`transaction_date`,`transaction_Description`,`Transaction_type`) values (1,NULL,NULL,NULL,NULL,'Hari Om',10101202,1,'Bank Of India','12546',2000,'2020-10-26 00:00:00','dcsdjvcsdigwfwviwf,fbwevfwue','Credit'),(2,NULL,NULL,NULL,NULL,'Hari Om',10101202,1,'Bank Of India','752758',200,'2020-10-26 11:12:52','Fund Transfer','Debit'),(3,NULL,NULL,NULL,NULL,'Raj Patidar',10101203,1,'Bank Of India','752758',200,'2020-10-26 11:12:52','Fund Transfer','Credit');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
