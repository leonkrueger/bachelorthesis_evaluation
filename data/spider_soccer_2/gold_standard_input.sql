CREATE TABLE `College`
(`cName` VARCHAR(1023),
`state` VARCHAR(1023),
`enr` DOUBLE);
INSERT INTO `College` VALUES('OU','OK',22000);
INSERT INTO `College` VALUES('ASU','AZ',12000);
INSERT INTO `College` VALUES('LSU','LA',18000);
INSERT INTO `College` VALUES('FSU','FL',19000);
CREATE TABLE `Player`
(`pID` DOUBLE,
`pName` VARCHAR(1023),
`yCard` VARCHAR(1023),
`HS` DOUBLE);
INSERT INTO `Player` VALUES(50005,'Eddie','yes',600);
INSERT INTO `Player` VALUES(40004,'David','yes',1600);
INSERT INTO `Player` VALUES(30003,'Charles','no',300);
INSERT INTO `Player` VALUES(40002,'Drago','yes',1600);
INSERT INTO `Player` VALUES(20002,'Blake','no',1600);
INSERT INTO `Player` VALUES(10001,'Andrew','no',1200);
CREATE TABLE `Tryout`
(`pID` DOUBLE,
`cName` VARCHAR(1023),
`pPos` VARCHAR(1023),
`decision` VARCHAR(1023));
INSERT INTO `Tryout` VALUES(10001,'LSU','goalie','no');
INSERT INTO `Tryout` VALUES(30003,'OU','mid','no');
INSERT INTO `Tryout` VALUES(20002,'FSU','striker','yes');
INSERT INTO `Tryout` VALUES(10001,'ASU','goalie','yes');
INSERT INTO `Tryout` VALUES(50005,'LSU','mid','no');
INSERT INTO `Tryout` VALUES(40004,'ASU','goalie','no');
