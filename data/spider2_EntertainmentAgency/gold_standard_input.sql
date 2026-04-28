CREATE TABLE `Agents`
(`AgentID` BIGINT,
`AgtFirstName` VARCHAR(1023),
`AgtLastName` VARCHAR(1023),
`AgtStreetAddress` VARCHAR(1023),
`AgtCity` VARCHAR(1023),
`AgtState` VARCHAR(1023),
`AgtZipCode` VARCHAR(1023),
`AgtPhoneNumber` VARCHAR(1023),
`DateHired` DATE,
`Salary` DOUBLE,
`CommissionRate` DOUBLE);
INSERT INTO `Agents` VALUES(1,'William','Thompson','122 Spring River Drive','Redmond','WA','98053','555-2681','1997-05-15',35000,0.04000000000000000083);
INSERT INTO `Agents` VALUES(7,'Caleb','Viescas','4501 Wetland Road','Redmond','WA','98052','555-0037','1998-02-16',22100,0.03500000000000000334);
INSERT INTO `Agents` VALUES(4,'Karen','Smith','30301 - 166th Ave. N.E.','Seattle','WA','98125','555-2551','1998-03-05',22000,0.05500000000000000027);
INSERT INTO `Agents` VALUES(5,'Marianne','Wier','908 W. Capital Way','Tacoma','WA','98413','555-2606','1998-02-02',24500,0.04499999999999999834);
INSERT INTO `Agents` VALUES(8,'Maria','Patterson','3445 Cheyenne Road','Bellevue','WA','98006','555-2291','1997-09-03',30000,0.04000000000000000083);
INSERT INTO `Agents` VALUES(2,'Scott','Bishop','66 Spring Valley Drive','Seattle','WA','98125','555-2666','1998-02-05',27000,0.04000000000000000083);
INSERT INTO `Agents` VALUES(9,'Daffy','Dumbwit','1234 Main Street','Kirkland','WA','98033','555-1234','2000-02-05',50,0.0100000000000000002);
CREATE TABLE `Customers`
(`CustomerID` BIGINT,
`CustFirstName` VARCHAR(1023),
`CustLastName` VARCHAR(1023),
`CustStreetAddress` VARCHAR(1023),
`CustCity` VARCHAR(1023),
`CustState` VARCHAR(1023),
`CustZipCode` VARCHAR(1023),
`CustPhoneNumber` VARCHAR(1023));
INSERT INTO `Customers` VALUES(10012,'Kerry','Patterson','777 Fenexet Blvd','Redmond','WA','98052','555-0399');
INSERT INTO `Customers` VALUES(10001,'Doris','Hartwig','4726 - 11th Ave. N.E.','Seattle','WA','98105','555-2671');
INSERT INTO `Customers` VALUES(10011,'Joyce','Bonnicksen','2424 Thames Drive','Bellevue','WA','98006','555-2726');
INSERT INTO `Customers` VALUES(10006,'Matt','Berg','908 W. Capital Way','Tacoma','WA','98413','555-2581');
INSERT INTO `Customers` VALUES(10002,'Deb','Waldal','908 W. Capital Way','Tacoma','WA','98413','555-2496');
INSERT INTO `Customers` VALUES(10007,'Liz','Keyser','13920 S.E. 40th Street','Bellevue','WA','98006','555-2556');
INSERT INTO `Customers` VALUES(10004,'Dean','McCrae','4110 Old Redmond Rd.','Redmond','WA','98052','555-2506');
CREATE TABLE `Engagements`
(`EngagementNumber` BIGINT,
`StartDate` DATE,
`EndDate` DATE,
`StartTime` TIME,
`StopTime` TIME,
`ContractPrice` DOUBLE,
`CustomerID` BIGINT,
`AgentID` BIGINT,
`EntertainerID` BIGINT);
INSERT INTO `Engagements` VALUES(22,'2017-10-01','2017-10-06','12:00:00','15:00:00',590,10004,5,1002);
INSERT INTO `Engagements` VALUES(87,'2018-01-05','2018-01-07','16:00:00','19:00:00',275,10007,6,1008);
INSERT INTO `Engagements` VALUES(78,'2018-01-02','2018-01-04','16:00:00','20:00:00',770,10010,4,1010);
INSERT INTO `Engagements` VALUES(62,'2017-12-10','2017-12-11','20:00:00','01:00:00',500,10003,2,1005);
INSERT INTO `Engagements` VALUES(88,'2018-01-08','2018-01-18','12:00:00','14:00:00',1370,10004,8,1013);
INSERT INTO `Engagements` VALUES(24,'2017-10-02','2017-10-08','12:00:00','18:00:00',1940,10001,4,1001);
INSERT INTO `Engagements` VALUES(48,'2017-11-06','2017-11-07','16:00:00','22:00:00',950,10002,1,1007);
CREATE TABLE `Entertainer_Members`
(`EntertainerID` BIGINT,
`MemberID` BIGINT,
`Status` BIGINT);
INSERT INTO `Entertainer_Members` VALUES(1010,123,1);
INSERT INTO `Entertainer_Members` VALUES(1008,115,1);
INSERT INTO `Entertainer_Members` VALUES(1001,106,1);
INSERT INTO `Entertainer_Members` VALUES(1007,102,1);
INSERT INTO `Entertainer_Members` VALUES(1003,103,1);
INSERT INTO `Entertainer_Members` VALUES(1003,109,1);
INSERT INTO `Entertainer_Members` VALUES(1007,101,1);
CREATE TABLE `Entertainer_Styles`
(`EntertainerID` BIGINT,
`StyleID` BIGINT,
`StyleStrength` BIGINT);
INSERT INTO `Entertainer_Styles` VALUES(1005,24,2);
INSERT INTO `Entertainer_Styles` VALUES(1002,17,2);
INSERT INTO `Entertainer_Styles` VALUES(1010,22,1);
INSERT INTO `Entertainer_Styles` VALUES(1001,21,3);
INSERT INTO `Entertainer_Styles` VALUES(1010,4,2);
INSERT INTO `Entertainer_Styles` VALUES(1011,20,3);
INSERT INTO `Entertainer_Styles` VALUES(1002,19,1);
CREATE TABLE `Entertainers`
(`EntertainerID` BIGINT,
`EntStageName` VARCHAR(1023),
`EntSSN` VARCHAR(1023),
`EntStreetAddress` VARCHAR(1023),
`EntCity` VARCHAR(1023),
`EntState` VARCHAR(1023),
`EntZipCode` VARCHAR(1023),
`EntPhoneNumber` VARCHAR(1023),
`EntWebPage` VARCHAR(1023),
`EntEMailAddress` VARCHAR(1023),
`DateEntered` DATE);
INSERT INTO `Entertainers` VALUES(1007,'Coldwater Cattle Company','888-38-1043','4726 - 11th Ave. N.E.','Seattle','WA','98105','555-2561','www.coldwatercows.com',NULL,'1995-11-30');
INSERT INTO `Entertainers` VALUES(1008,'Country Feeling','888-98-1133','PO Box 223311','Seattle','WA','98125','555-2711',NULL,NULL,'1996-02-28');
INSERT INTO `Entertainers` VALUES(1006,'Modern Dance','888-66-1085','Route 2, Box 203B','Woodinville','WA','98072','555-2631','www.moderndance.com','mikeh@moderndance.com','1995-05-16');
INSERT INTO `Entertainers` VALUES(1001,'Carol Peacock Trio','888-90-1121','4110 Old Redmond Rd.','Redmond','WA','98052','555-2691','www.cptrio.com','carolp@cptrio.com','1997-05-24');
INSERT INTO `Entertainers` VALUES(1003,'JV & the Deep Six','888-18-1013','15127 NE 24th, #383','Redmond','WA','98052','555-2511','www.jvd6.com','jv@myspring.com','1998-03-18');
INSERT INTO `Entertainers` VALUES(1010,'Saturday Revue','888-64-1109','3887 Easy Street','Seattle','WA','98125','555-0039','www.satrevue.com','edz@coolness.com','1995-01-20');
INSERT INTO `Entertainers` VALUES(1004,'Jim Glynn','888-26-1025','13920 S.E. 40th Street','Bellevue','WA','98009','555-2531',NULL,NULL,'1996-04-01');
CREATE TABLE `Members`
(`MemberID` BIGINT,
`MbrFirstName` VARCHAR(1023),
`MbrLastName` VARCHAR(1023),
`MbrPhoneNumber` VARCHAR(1023),
`Gender` VARCHAR(1023));
INSERT INTO `Members` VALUES(105,'Robert','Brown','555-2491','M');
INSERT INTO `Members` VALUES(118,'Janice','Galvin','555-2691','F');
INSERT INTO `Members` VALUES(121,'Katherine','Ehrlich','555-0399','F');
INSERT INTO `Members` VALUES(107,'Sara','Sheskey','555-2566','F');
INSERT INTO `Members` VALUES(117,'Luke','Patterson','555-2316','M');
INSERT INTO `Members` VALUES(115,'Joe','Rosales III','555-2281','M');
INSERT INTO `Members` VALUES(101,'David','Hamilton','555-2701','M');
CREATE TABLE `Musical_Preferences`
(`CustomerID` BIGINT,
`StyleID` BIGINT,
`PreferenceSeq` BIGINT);
INSERT INTO `Musical_Preferences` VALUES(10009,18,3);
INSERT INTO `Musical_Preferences` VALUES(10006,23,1);
INSERT INTO `Musical_Preferences` VALUES(10005,14,1);
INSERT INTO `Musical_Preferences` VALUES(10012,20,1);
INSERT INTO `Musical_Preferences` VALUES(10012,10,2);
INSERT INTO `Musical_Preferences` VALUES(10005,7,2);
INSERT INTO `Musical_Preferences` VALUES(10003,19,1);
CREATE TABLE `Musical_Styles`
(`StyleID` BIGINT,
`StyleName` VARCHAR(1023));
INSERT INTO `Musical_Styles` VALUES(15,'Jazz');
INSERT INTO `Musical_Styles` VALUES(8,'Classic Rock & Roll');
INSERT INTO `Musical_Styles` VALUES(13,'Folk');
INSERT INTO `Musical_Styles` VALUES(17,'Motown');
INSERT INTO `Musical_Styles` VALUES(23,'Variety');
INSERT INTO `Musical_Styles` VALUES(11,'Country Rock');
INSERT INTO `Musical_Styles` VALUES(16,'Karaoke');
CREATE TABLE `ztblDays`
(`DateField` DATE);
INSERT INTO `ztblDays` VALUES('2017-07-07');
INSERT INTO `ztblDays` VALUES('2018-11-09');
INSERT INTO `ztblDays` VALUES('2018-09-19');
INSERT INTO `ztblDays` VALUES('2018-08-01');
INSERT INTO `ztblDays` VALUES('2018-11-21');
INSERT INTO `ztblDays` VALUES('2019-08-01');
INSERT INTO `ztblDays` VALUES('2019-11-05');
CREATE TABLE `ztblMonths`
(`MonthYear` VARCHAR(1023),
`YearNumber` BIGINT,
`MonthNumber` BIGINT,
`MonthStart` DATE,
`MonthEnd` DATE,
`January` BIGINT,
`February` BIGINT,
`March` BIGINT,
`April` BIGINT,
`May` BIGINT,
`June` BIGINT,
`July` BIGINT,
`August` BIGINT,
`September` BIGINT,
`October` BIGINT,
`November` BIGINT,
`December` BIGINT);
INSERT INTO `ztblMonths` VALUES('September 2017',2017,9,'2017-09-01','2017-09-30',0,0,0,0,0,0,0,0,1,0,0,0);
INSERT INTO `ztblMonths` VALUES('July 2018',2018,7,'2018-07-01','2018-07-31',0,0,0,0,0,0,1,0,0,0,0,0);
INSERT INTO `ztblMonths` VALUES('November 2018',2018,11,'2018-11-01','2018-11-30',0,0,0,0,0,0,0,0,0,0,1,0);
INSERT INTO `ztblMonths` VALUES('January 2018',2018,1,'2018-01-01','2018-01-31',1,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `ztblMonths` VALUES('February 2018',2018,2,'2018-02-01','2018-02-28',0,1,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `ztblMonths` VALUES('October 2017',2017,10,'2017-10-01','2017-10-31',0,0,0,0,0,0,0,0,0,1,0,0);
INSERT INTO `ztblMonths` VALUES('December 2017',2017,12,'2017-12-01','2017-12-31',0,0,0,0,0,0,0,0,0,0,0,1);
CREATE TABLE `ztblSkipLabels`
(`LabelCount` BIGINT);
INSERT INTO `ztblSkipLabels` VALUES(46);
INSERT INTO `ztblSkipLabels` VALUES(1);
INSERT INTO `ztblSkipLabels` VALUES(17);
INSERT INTO `ztblSkipLabels` VALUES(2);
INSERT INTO `ztblSkipLabels` VALUES(4);
INSERT INTO `ztblSkipLabels` VALUES(24);
INSERT INTO `ztblSkipLabels` VALUES(36);
CREATE TABLE `ztblWeeks`
(`WeekStart` DATE,
`WeekEnd` DATE);
INSERT INTO `ztblWeeks` VALUES('2017-09-10','2017-09-16');
INSERT INTO `ztblWeeks` VALUES('2017-01-15','2017-01-21');
INSERT INTO `ztblWeeks` VALUES('2019-03-31','2019-04-06');
INSERT INTO `ztblWeeks` VALUES('2017-06-18','2017-06-24');
INSERT INTO `ztblWeeks` VALUES('2017-10-15','2017-10-21');
INSERT INTO `ztblWeeks` VALUES('2018-05-27','2018-06-02');
INSERT INTO `ztblWeeks` VALUES('2019-10-06','2019-10-12');
