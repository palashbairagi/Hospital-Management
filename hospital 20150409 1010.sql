-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema hospitalmanagement
--

CREATE DATABASE IF NOT EXISTS hospitalmanagement;
USE hospitalmanagement;

--
-- Definition of table `appointment_info`
--

DROP TABLE IF EXISTS `appointment_info`;
CREATE TABLE `appointment_info` (
  `doctor_id` int(10) default NULL,
  `patient_id` int(10) default NULL,
  `date_of_appointment` date default NULL,
  `time_of_appointment` time default NULL,
  `prescription` tinyblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment_info`
--

/*!40000 ALTER TABLE `appointment_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_info` ENABLE KEYS */;


--
-- Definition of table `bank_info`
--

DROP TABLE IF EXISTS `bank_info`;
CREATE TABLE `bank_info` (
  `id` int(10) NOT NULL auto_increment,
  `blood_bank_name` char(21) default NULL,
  `notifier_name` char(21) default NULL,
  `contact_number1` int(10) default NULL,
  `contact_number2` int(10) default NULL,
  `fax_number` int(10) default NULL,
  `email_id` char(21) default NULL,
  `blood_type` char(3) default NULL,
  `house_number` int(10) default NULL,
  `street` char(21) default NULL,
  `city` char(21) default NULL,
  `state` char(21) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_info`
--

/*!40000 ALTER TABLE `bank_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_info` ENABLE KEYS */;


--
-- Definition of table `birth_info`
--

DROP TABLE IF EXISTS `birth_info`;
CREATE TABLE `birth_info` (
  `id` int(10) NOT NULL auto_increment,
  `child_name` char(21) default NULL,
  `gender` char(2) default NULL,
  `father_name` char(21) default NULL,
  `mother_name` char(21) default NULL,
  `date_of_birth` date default NULL,
  `birth_place` char(30) default NULL,
  `time_of_birth` int(10) default NULL,
  `contact_number1` int(10) default NULL,
  `contact_number2` int(10) default NULL,
  `house_number` char(20) default NULL,
  `street` char(20) default NULL,
  `city` char(20) default NULL,
  `state` char(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `birth_info`
--

/*!40000 ALTER TABLE `birth_info` DISABLE KEYS */;
INSERT INTO `birth_info` (`id`,`child_name`,`gender`,`father_name`,`mother_name`,`date_of_birth`,`birth_place`,`time_of_birth`,`contact_number1`,`contact_number2`,`house_number`,`street`,`city`,`state`) VALUES 
 (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `birth_info` ENABLE KEYS */;


--
-- Definition of table `death_info`
--

DROP TABLE IF EXISTS `death_info`;
CREATE TABLE `death_info` (
  `id` int(10) NOT NULL auto_increment,
  `first_name` char(21) default NULL,
  `last_name` char(21) default NULL,
  `gender` char(2) default NULL,
  `son_of` char(21) default NULL,
  `age` int(10) default NULL,
  `date_of_death` date default NULL,
  `death_place` char(30) default NULL,
  `time_of_death` int(10) default NULL,
  `contact_number1` int(10) default NULL,
  `contact_number2` int(10) default NULL,
  `house_number` char(20) default NULL,
  `street` char(20) default NULL,
  `city` char(20) default NULL,
  `state` char(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `death_info`
--

/*!40000 ALTER TABLE `death_info` DISABLE KEYS */;
INSERT INTO `death_info` (`id`,`first_name`,`last_name`,`gender`,`son_of`,`age`,`date_of_death`,`death_place`,`time_of_death`,`contact_number1`,`contact_number2`,`house_number`,`street`,`city`,`state`) VALUES 
 (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (2,'mohan','yadav','m','mr.punit yadav',30,NULL,NULL,NULL,689987979,54643535,'48','hhjkj','mumbai','maharastra'),
 (3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `death_info` ENABLE KEYS */;


--
-- Definition of table `doctor_info`
--

DROP TABLE IF EXISTS `doctor_info`;
CREATE TABLE `doctor_info` (
  `id` int(11) NOT NULL auto_increment,
  `first_name` char(21) default NULL,
  `last_name` char(21) default NULL,
  `gender` char(1) default NULL,
  `date_of_birth` date default NULL,
  `age` int(3) default NULL,
  `contact_number1` int(10) default NULL,
  `contact_number2` int(10) default NULL,
  `email_id` char(21) default NULL,
  `house_number` int(10) default NULL,
  `street_name` char(21) default NULL,
  `city_name` char(21) default NULL,
  `state_name` char(21) default NULL,
  `designation` char(20) default NULL,
  `specialization` char(20) default NULL,
  `experience` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_info`
--

/*!40000 ALTER TABLE `doctor_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor_info` ENABLE KEYS */;


--
-- Definition of table `donar_info`
--

DROP TABLE IF EXISTS `donar_info`;
CREATE TABLE `donar_info` (
  `id` int(10) NOT NULL auto_increment,
  `donar_name` char(21) default NULL,
  `gender` char(1) default NULL,
  `date_of_birth` date default NULL,
  `age` int(100) default NULL,
  `address` char(30) default NULL,
  `blood_group` char(3) default NULL,
  `contact_number1` int(10) default NULL,
  `contact_number2` int(10) default NULL,
  `email_id` char(21) default NULL,
  `house_number` int(10) default NULL,
  `street` char(21) default NULL,
  `city` char(21) default NULL,
  `state` char(21) default NULL,
  `number_of_donations` int(10) default NULL,
  `donation_camp` char(21) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donar_info`
--

/*!40000 ALTER TABLE `donar_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `donar_info` ENABLE KEYS */;


--
-- Definition of table `donor_info`
--

DROP TABLE IF EXISTS `donor_info`;
CREATE TABLE `donor_info` (
  `id` int(11) NOT NULL auto_increment,
  `first_name` char(21) default NULL,
  `last_name` char(21) default NULL,
  `gender` char(6) default NULL,
  `date_of_birth` date default NULL,
  `age` int(11) default NULL,
  `blood_group` char(3) default NULL,
  `bag_number` char(30) default NULL,
  `number_of_donations` int(10) default NULL,
  `contact_number1` int(10) default NULL,
  `contact_number2` int(10) default NULL,
  `email_id` char(21) default NULL,
  `house_number` char(21) default NULL,
  `street` char(21) default NULL,
  `city` char(21) default NULL,
  `state` char(35) default NULL,
  `donation_camp` char(70) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor_info`
--

/*!40000 ALTER TABLE `donor_info` DISABLE KEYS */;
INSERT INTO `donor_info` (`id`,`first_name`,`last_name`,`gender`,`date_of_birth`,`age`,`blood_group`,`bag_number`,`number_of_donations`,`contact_number1`,`contact_number2`,`email_id`,`house_number`,`street`,`city`,`state`,`donation_camp`) VALUES 
 (1,'Ritu','Tiwari','female',NULL,21,'o+','rr203',1,90767675,578789,'ritutiwari@gmail.com','75','sethi nagar','ujjain','mp',NULL);
/*!40000 ALTER TABLE `donor_info` ENABLE KEYS */;


--
-- Definition of table `patient_info`
--

DROP TABLE IF EXISTS `patient_info`;
CREATE TABLE `patient_info` (
  `id` int(11) NOT NULL auto_increment,
  `first_name` char(21) default NULL,
  `last_name` char(21) default NULL,
  `father_name` char(30) default NULL,
  `gender` char(1) default NULL,
  `date_of_birth` date default NULL,
  `age` int(3) default NULL,
  `contact_number1` int(10) default NULL,
  `contact_number2` int(10) default NULL,
  `email_id` char(21) default NULL,
  `house_number` int(10) default NULL,
  `street` char(21) default NULL,
  `city` char(21) default NULL,
  `state` char(21) default NULL,
  `occupation` char(20) default NULL,
  `blood_group` char(3) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_info`
--

/*!40000 ALTER TABLE `patient_info` DISABLE KEYS */;
INSERT INTO `patient_info` (`id`,`first_name`,`last_name`,`father_name`,`gender`,`date_of_birth`,`age`,`contact_number1`,`contact_number2`,`email_id`,`house_number`,`street`,`city`,`state`,`occupation`,`blood_group`) VALUES 
 (1,NULL,NULL,NULL,'m',NULL,20,NULL,NULL,NULL,NULL,'fnkn','hjhdks','hkjk','nkjk',NULL),
 (2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
 (3,'ritu','ti','ji','f',NULL,21,9876,65799,'ritu@',7,'sethi','ujjian','mp','nothing','o+'),
 (4,'palash','bairagi','pawan bairagi','m',NULL,21,9898,67575,'sdhjks',1,'dfff','jdsgj','jgjg','udsgu','b+'),
 (5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `patient_info` ENABLE KEYS */;


--
-- Definition of table `staff_info`
--

DROP TABLE IF EXISTS `staff_info`;
CREATE TABLE `staff_info` (
  `id` int(10) NOT NULL auto_increment,
  `first_name` char(21) default NULL,
  `last_name` char(21) default NULL,
  `gender` char(2) default NULL,
  `date_of_birth` date default NULL,
  `age` int(10) default NULL,
  `hire_date` date default NULL,
  `title` char(21) default NULL,
  `status_detail` char(21) default NULL,
  `contact_number1` int(10) default NULL,
  `contact_number2` int(10) default NULL,
  `house_number` char(21) default NULL,
  `street` char(21) default NULL,
  `city` char(20) default NULL,
  `state` char(21) default NULL,
  `salary` int(20) default NULL,
  `shift_time` time default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_info`
--

/*!40000 ALTER TABLE `staff_info` DISABLE KEYS */;
INSERT INTO `staff_info` (`id`,`first_name`,`last_name`,`gender`,`date_of_birth`,`age`,`hire_date`,`title`,`status_detail`,`contact_number1`,`contact_number2`,`house_number`,`street`,`city`,`state`,`salary`,`shift_time`) VALUES 
 (1,'neha','shrivastav','F',NULL,21,NULL,'nurse','Active',5756,8997755,'34','gandhi nagar','bhopal','m.p',1222,NULL);
/*!40000 ALTER TABLE `staff_info` ENABLE KEYS */;


--
-- Definition of table `treatment_info`
--

DROP TABLE IF EXISTS `treatment_info`;
CREATE TABLE `treatment_info` (
  `docotr_id` int(10) default NULL,
  `patient_id` int(10) default NULL,
  `date` date default NULL,
  `time` time default NULL,
  `prescription` blob,
  `fee` int(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_info`
--

/*!40000 ALTER TABLE `treatment_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `treatment_info` ENABLE KEYS */;


--
-- Definition of table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_name` char(21) default NULL,
  `password` char(20) default NULL,
  `type` char(10) default NULL,
  `id` int(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` (`user_name`,`password`,`type`,`id`) VALUES 
 ('neha','12345','nurse',NULL);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;


--
-- Definition of table `ward_info`
--

DROP TABLE IF EXISTS `ward_info`;
CREATE TABLE `ward_info` (
  `id` int(10) NOT NULL auto_increment,
  `ward_number` int(10) default NULL,
  `ward_type` char(10) default NULL,
  `allotment` char(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward_info`
--

/*!40000 ALTER TABLE `ward_info` DISABLE KEYS */;
INSERT INTO `ward_info` (`id`,`ward_number`,`ward_type`,`allotment`) VALUES 
 (1,NULL,NULL,'0'),
 (2,NULL,NULL,'0'),
 (3,NULL,NULL,'0'),
 (4,NULL,NULL,'0'),
 (5,1,'emer','0'),
 (6,3,'gen','0'),
 (7,102,'general','4'),
 (8,4,'nota','0');
/*!40000 ALTER TABLE `ward_info` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
