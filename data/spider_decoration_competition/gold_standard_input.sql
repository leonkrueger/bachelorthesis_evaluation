CREATE TABLE `college`
(`College_ID` BIGINT,
`Name` VARCHAR(1023),
`Leader_Name` VARCHAR(1023),
`College_Location` VARCHAR(1023));
INSERT INTO `college` VALUES(1,'Saskatchewan School','Ousame Tounkara','Ottawa');
INSERT INTO `college` VALUES(5,'Toronto School','Roger Dunbrack','Western Ontario');
INSERT INTO `college` VALUES(3,'Calgary School','Andre Arlain','St. Francis Xavier');
INSERT INTO `college` VALUES(2,'B.C. School','Ryan Thelwell','Minnesota');
INSERT INTO `college` VALUES(4,'Edmonton School','Samir Chahine','McGill');
CREATE TABLE `member`
(`Member_ID` BIGINT,
`Name` VARCHAR(1023),
`Country` VARCHAR(1023),
`College_ID` BIGINT);
INSERT INTO `member` VALUES(6,'Pat Fitzsimons','Canada',5);
INSERT INTO `member` VALUES(10,'Tom Weiskopf','United States',3);
INSERT INTO `member` VALUES(3,'Arnold Palmer','Canada',4);
INSERT INTO `member` VALUES(5,'Homero Blancas','United States',2);
INSERT INTO `member` VALUES(1,'Jack Nicklaus','United States',1);
INSERT INTO `member` VALUES(4,'Tom Watson','United States',4);
INSERT INTO `member` VALUES(8,'J. C. Snead','Canada',4);
INSERT INTO `member` VALUES(9,'Lee Trevino','United States',3);
INSERT INTO `member` VALUES(2,'Billy Casper','United States',1);
INSERT INTO `member` VALUES(7,'Bobby Nichols','Canada',5);
CREATE TABLE `round`
(`Round_ID` BIGINT,
`Member_ID` BIGINT,
`Decoration_Theme` VARCHAR(1023),
`Rank_in_Round` BIGINT);
INSERT INTO `round` VALUES(2,4,'Sweetie',3);
INSERT INTO `round` VALUES(2,6,'Summer',2);
INSERT INTO `round` VALUES(1,10,'Dark Nights',4);
INSERT INTO `round` VALUES(2,9,'Happiness',1);
INSERT INTO `round` VALUES(1,2,'Soft Dream',2);
INSERT INTO `round` VALUES(1,1,'Walk on the Moon',1);
