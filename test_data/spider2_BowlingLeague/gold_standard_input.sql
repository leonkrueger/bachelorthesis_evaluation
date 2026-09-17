CREATE TABLE `Match_Games`
(`MatchID` BIGINT,
`GameNumber` BIGINT,
`WinningTeamID` BIGINT);
CREATE TABLE `Teams`
(`TeamID` BIGINT,
`TeamName` VARCHAR(1023),
`CaptainID` BIGINT);
CREATE TABLE `Tournaments`
(`TourneyID` BIGINT,
`TourneyDate` DATE,
`TourneyLocation` VARCHAR(1023));
CREATE TABLE `WAZips`
(`ZIP` VARCHAR(1023),
`City` VARCHAR(1023),
`State` VARCHAR(1023));
CREATE TABLE `Bowlers`
(`BowlerID` BIGINT,
`BowlerLastName` VARCHAR(1023),
`BowlerFirstName` VARCHAR(1023),
`BowlerMiddleInit` VARCHAR(1023),
`BowlerAddress` VARCHAR(1023),
`BowlerCity` VARCHAR(1023),
`BowlerState` VARCHAR(1023),
`BowlerZip` VARCHAR(1023),
`BowlerPhoneNumber` VARCHAR(1023),
`TeamID` BIGINT,
`BowlerTotalPins` BIGINT,
`BowlerGamesBowled` BIGINT,
`BowlerCurrentAverage` BIGINT,
`BowlerCurrentHcp` BIGINT);
CREATE TABLE `Tourney_Matches`
(`MatchID` BIGINT,
`TourneyID` BIGINT,
`Lanes` VARCHAR(1023),
`OddLaneTeamID` BIGINT,
`EvenLaneTeamID` BIGINT);
CREATE TABLE `Bowler_Scores`
(`MatchID` BIGINT,
`GameNumber` BIGINT,
`BowlerID` BIGINT,
`RawScore` BIGINT,
`HandiCapScore` BIGINT,
`WonGame` BIGINT);
INSERT INTO match_games VALUES(2,2,4);
INSERT INTO match_games VALUES(5,1,3);
INSERT INTO match_games VALUES(47,3,8);
INSERT INTO match_games VALUES(50,2,7);
INSERT INTO match_games VALUES(51,3,3);
INSERT INTO match_games VALUES(52,3,4);
INSERT INTO match_games VALUES(54,1,4);
INSERT INTO match_games VALUES(54,3,4);
INSERT INTO match_games VALUES(12,3,5);
INSERT INTO match_games VALUES(55,3,6);
INSERT INTO match_games VALUES(56,1,8);
INSERT INTO match_games VALUES(13,3,1);
INSERT INTO match_games VALUES(56,2,7);
INSERT INTO match_games VALUES(16,3,4);
INSERT INTO match_games VALUES(17,2,1);
INSERT INTO match_games VALUES(20,2,4);
INSERT INTO match_games VALUES(25,2,1);
INSERT INTO match_games VALUES(26,1,7);
INSERT INTO match_games VALUES(29,1,1);
INSERT INTO match_games VALUES(29,3,1);
INSERT INTO match_games VALUES(30,1,2);
INSERT INTO match_games VALUES(32,1,6);
INSERT INTO match_games VALUES(32,3,6);
INSERT INTO match_games VALUES(33,1,3);
INSERT INTO match_games VALUES(33,3,3);
INSERT INTO match_games VALUES(34,1,4);
INSERT INTO match_games VALUES(34,2,1);
INSERT INTO match_games VALUES(37,1,5);
INSERT INTO match_games VALUES(41,2,6);
INSERT INTO teams VALUES(1,'Marlins',2);
INSERT INTO teams VALUES(2,'Sharks',5);
INSERT INTO teams VALUES(3,'Terrapins',12);
INSERT INTO teams VALUES(4,'Barracudas',16);
INSERT INTO teams VALUES(5,'Dolphins',20);
INSERT INTO teams VALUES(6,'Orcas',24);
INSERT INTO teams VALUES(7,'Manatees',28);
INSERT INTO teams VALUES(8,'Swordfish',32);
INSERT INTO teams VALUES(9,'Huckleberrys',7);
INSERT INTO teams VALUES(10,'Never Show Ups',22);
INSERT INTO tournaments VALUES(1,'2017-09-04','Red Rooster Lanes');
INSERT INTO tournaments VALUES(2,'2017-09-11','Thunderbird Lanes');
INSERT INTO tournaments VALUES(3,'2017-09-18','Bolero Lanes');
INSERT INTO tournaments VALUES(4,'2017-09-25','Imperial Lanes');
INSERT INTO tournaments VALUES(5,'2017-10-02','Sports World Lanes');
INSERT INTO tournaments VALUES(6,'2017-10-09','Totem Lanes');
INSERT INTO tournaments VALUES(7,'2017-10-16','Acapulco Lanes');
INSERT INTO tournaments VALUES(8,'2017-10-23','Red Rooster Lanes');
INSERT INTO tournaments VALUES(9,'2017-10-30','Thunderbird Lanes');
INSERT INTO tournaments VALUES(10,'2017-11-06','Bolero Lanes');
INSERT INTO tournaments VALUES(11,'2017-11-13','Imperial Lanes');
INSERT INTO tournaments VALUES(12,'2017-11-20','Sports World Lanes');
INSERT INTO tournaments VALUES(13,'2017-11-27','Totem Lanes');
INSERT INTO tournaments VALUES(14,'2017-12-04','Acapulco Lanes');
INSERT INTO tournaments VALUES(15,'2018-07-12','Red Rooster Lanes');
INSERT INTO tournaments VALUES(16,'2018-07-19','Thunderbird Lanes');
INSERT INTO tournaments VALUES(17,'2018-07-26','Bolero Lanes');
INSERT INTO tournaments VALUES(18,'2018-08-02','Sports World Lanes');
INSERT INTO tournaments VALUES(19,'2018-08-09','Imperial Lanes');
INSERT INTO tournaments VALUES(20,'2018-08-16','Totem Lanes');
INSERT INTO wazips VALUES('98947','Tieton','WA');
INSERT INTO wazips VALUES('98277','Oak Harbor','WA');
INSERT INTO wazips VALUES('98010','Black Diamond','WA');
INSERT INTO wazips VALUES('99019','Liberty Lake','WA');
INSERT INTO wazips VALUES('98595','Westport','WA');
INSERT INTO wazips VALUES('98602','Appleton','WA');
INSERT INTO wazips VALUES('98603','Ariel','WA');
INSERT INTO wazips VALUES('98327','Dupont','WA');
INSERT INTO wazips VALUES('98330','Elbe','WA');
INSERT INTO wazips VALUES('99040','Wellpinit','WA');
INSERT INTO wazips VALUES('98045','North Bend','WA');
INSERT INTO wazips VALUES('99103','Almira','WA');
INSERT INTO wazips VALUES('98047','Pacific','WA');
INSERT INTO wazips VALUES('98339','Port Hadlock','WA');
INSERT INTO wazips VALUES('98108','Seattle','WA');
INSERT INTO wazips VALUES('98368','Port Townsend','WA');
INSERT INTO wazips VALUES('98116','Seattle','WA');
INSERT INTO wazips VALUES('99154','Mohler','WA');
INSERT INTO wazips VALUES('99158','Oakesdale','WA');
INSERT INTO wazips VALUES('99167','Rice','WA');
INSERT INTO wazips VALUES('99176','Thornton','WA');
INSERT INTO wazips VALUES('99201','Spokane','WA');
INSERT INTO wazips VALUES('98208','Everett','WA');
INSERT INTO wazips VALUES('98503','Lacey','WA');
INSERT INTO wazips VALUES('98528','Belfair','WA');
INSERT INTO wazips VALUES('98245','Eastsound','WA');
INSERT INTO wazips VALUES('98923','Cowiche','WA');
INSERT INTO wazips VALUES('98258','Lake Stevens','WA');
INSERT INTO wazips VALUES('98936','Moxee','WA');
INSERT INTO bowlers VALUES(1,'Fournier','Barbara',NULL,'67 Willow Drive','Bothell','WA','98014','(206) 555-9876',1,5790,39,148,47);
INSERT INTO bowlers VALUES(2,'Fournier','David',NULL,'67 Willow Drive','Bothell','WA','98014','(206) 555-9876',1,6152,39,158,38);
INSERT INTO bowlers VALUES(3,'Kennedy','John','A','2957 W 33rd','Ballard','WA','98154','(206) 555-7854',1,6435,39,165,32);
INSERT INTO bowlers VALUES(4,'Sheskey','Sara','J','17950 N 59th','Seattle','WA','98011','(206) 555-9893',1,5534,39,142,52);
INSERT INTO bowlers VALUES(5,'Patterson','Ann','K','16 Maple Lane','Auburn','WA','98002','(206) 555-3487',2,5819,39,149,46);
INSERT INTO bowlers VALUES(6,'Patterson','Neil',NULL,'16 Maple Lane','Auburn','WA','98002','(206) 555-3487',2,6150,39,158,38);
INSERT INTO bowlers VALUES(7,'Viescas','David','A','16679 NE 42nd Court','Redmond','WA','98052','(206) 882-8878',2,6607,39,169,28);
INSERT INTO bowlers VALUES(8,'Viescas','Stephanie',NULL,'16679 NE 42nd Court','Redmond','WA','98052','(206) 882-8878',2,5558,39,143,51);
INSERT INTO bowlers VALUES(9,'Black','Alastair',NULL,'4726 - 11th Ave. N.E.','Seattle','WA','98105','(206) 555-1189',3,5874,39,151,44);
INSERT INTO bowlers VALUES(10,'Cunningham','David',NULL,'4110 Old Redmond Rd.','Redmond','WA','98052','(206) 555-8122',3,6184,39,159,37);
INSERT INTO bowlers VALUES(12,'Viescas','Carol','M','16345 NE 32nd Street','Bellevue','WA','98004','(206) 555-7295',3,5560,39,143,51);
INSERT INTO bowlers VALUES(13,'Hallmark','Elizabeth',NULL,'Route 2, Box 203B','Woodinville','WA','98072','(206) 555-8990',4,5928,39,152,43);
INSERT INTO bowlers VALUES(16,'Sheskey','Richard',NULL,'17950 N 59th','Seattle','WA','98011','(206) 555-9893',4,5549,39,142,52);
INSERT INTO bowlers VALUES(17,'Hernandez','Kendra',NULL,'47 Harvard Drive','Kirkland','WA','98033','(206) 889-9191',5,5854,39,150,45);
INSERT INTO bowlers VALUES(18,'Hernandez','Michael',NULL,'47 Harvard Drive','Kirkland','WA','98033','(206) 889-9191',5,6125,39,157,39);
INSERT INTO bowlers VALUES(19,'Viescas','John','L','218 Main Street','Redmond','WA','98052','(206) 881-5596',5,6581,39,169,28);
INSERT INTO bowlers VALUES(20,'Viescas','Suzanne','L','218 Main Street','Redmond','WA','98052','(206) 881-5596',5,5589,39,143,51);
INSERT INTO bowlers VALUES(21,'Ehrlich','Zachary',NULL,'507 - 20th Ave. E.','Seattle','WA','98122','(206) 555-9857',6,5767,39,148,47);
INSERT INTO bowlers VALUES(22,'Hallmark','Alaina',NULL,'Route 2, Box 203B','Woodinville','WA','98072','(206) 555-8990',6,6147,39,158,38);
INSERT INTO bowlers VALUES(23,'Viescas','Caleb',NULL,'16679 NE 42nd Court','Redmond','WA','98052','(206) 882-8878',6,6422,39,165,32);
INSERT INTO bowlers VALUES(25,'Patterson','Megan',NULL,'16 Maple Lane','Auburn','WA','98002','(206) 555-3487',7,5843,39,150,45);
INSERT INTO bowlers VALUES(26,'Thompson','Mary','K','122 Spring Valley Drive','Duvall','WA','98019','(206) 555-8989',7,6137,39,157,39);
INSERT INTO bowlers VALUES(27,'Thompson','William','G','122 Spring Valley Drive','Duvall','WA','98019','(206) 555-8989',7,6532,39,167,30);
INSERT INTO bowlers VALUES(28,'Viescas','Michael','L','218 Main Street','Redmond','WA','98052','(206) 881-5596',7,5575,39,143,51);
INSERT INTO bowlers VALUES(29,'Hallmark','Bailey',NULL,'Route 2, Box 203B','Woodinville','WA','98072','(206) 555-8990',8,5848,39,150,45);
INSERT INTO bowlers VALUES(31,'Clothier','Ben',NULL,'722 Moss Bay Blvd.','Kirkland','WA','98033','(206) 555-3412',8,6387,39,164,32);
INSERT INTO bowlers VALUES(32,'Rosales','Joe',NULL,'908 W. Capital Way','Tacoma','WA','98404','(206) 555-9482',8,5525,39,142,52);
INSERT INTO bowlers VALUES(33,'Patterson','Kerry',NULL,'16 Maple Lane','Auburn','WA','98002','(206) 555-3487',7,0,0,0,0);
INSERT INTO bowlers VALUES(34,'Patterson','Maria',NULL,'16 Maple Lane','Auburn','WA','98002','(206) 555-3487',7,0,0,0,0);
INSERT INTO tourney_matches VALUES(1,1,'01-02',1,2);
INSERT INTO tourney_matches VALUES(3,1,'05-06',5,6);
INSERT INTO tourney_matches VALUES(7,2,'25-26',5,7);
INSERT INTO tourney_matches VALUES(8,2,'27-28',8,6);
INSERT INTO tourney_matches VALUES(9,3,'15-16',2,3);
INSERT INTO tourney_matches VALUES(10,3,'17-18',1,4);
INSERT INTO tourney_matches VALUES(17,5,'11-12',6,1);
INSERT INTO tourney_matches VALUES(18,5,'13-14',5,2);
INSERT INTO tourney_matches VALUES(21,6,'05-06',1,7);
INSERT INTO tourney_matches VALUES(22,6,'07-08',3,5);
INSERT INTO tourney_matches VALUES(23,6,'09-10',2,8);
INSERT INTO tourney_matches VALUES(26,7,'15-16',7,2);
INSERT INTO tourney_matches VALUES(27,7,'17-18',6,3);
INSERT INTO tourney_matches VALUES(33,9,'15-16',3,2);
INSERT INTO tourney_matches VALUES(34,9,'17-18',4,1);
INSERT INTO tourney_matches VALUES(35,9,'19-20',6,7);
INSERT INTO tourney_matches VALUES(36,9,'21-22',8,5);
INSERT INTO tourney_matches VALUES(38,10,'11-12',6,2);
INSERT INTO tourney_matches VALUES(40,10,'15-16',8,4);
INSERT INTO tourney_matches VALUES(41,11,'11-12',1,6);
INSERT INTO tourney_matches VALUES(42,11,'13-14',2,5);
INSERT INTO tourney_matches VALUES(43,11,'15-16',3,8);
INSERT INTO tourney_matches VALUES(45,12,'05-06',7,1);
INSERT INTO tourney_matches VALUES(46,12,'07-08',5,3);
INSERT INTO tourney_matches VALUES(47,12,'09-10',8,2);
INSERT INTO tourney_matches VALUES(48,12,'11-12',6,4);
INSERT INTO tourney_matches VALUES(53,14,'01-02',2,1);
INSERT INTO tourney_matches VALUES(56,14,'07-08',8,7);
INSERT INTO tourney_matches VALUES(57,11,'19-20',10,9);
INSERT INTO bowler_scores VALUES(54,3,9,158,202,1);
INSERT INTO bowler_scores VALUES(17,2,21,147,192,0);
INSERT INTO bowler_scores VALUES(55,3,18,162,201,1);
INSERT INTO bowler_scores VALUES(55,3,19,183,211,1);
INSERT INTO bowler_scores VALUES(55,3,20,138,189,0);
INSERT INTO bowler_scores VALUES(2,2,13,155,198,1);
INSERT INTO bowler_scores VALUES(29,1,2,143,181,0);
INSERT INTO bowler_scores VALUES(29,1,9,158,202,0);
INSERT INTO bowler_scores VALUES(2,2,16,139,191,0);
INSERT INTO bowler_scores VALUES(50,2,28,137,188,0);
INSERT INTO bowler_scores VALUES(34,2,4,137,190,0);
INSERT INTO bowler_scores VALUES(29,1,4,138,191,0);
INSERT INTO bowler_scores VALUES(56,2,29,149,194,0);
INSERT INTO bowler_scores VALUES(30,1,6,152,189,0);
INSERT INTO bowler_scores VALUES(30,1,7,172,200,1);
INSERT INTO bowler_scores VALUES(30,1,13,136,179,0);
INSERT INTO bowler_scores VALUES(30,1,16,148,200,1);
INSERT INTO bowler_scores VALUES(41,2,2,176,215,1);
INSERT INTO bowler_scores VALUES(41,2,3,188,220,1);
INSERT INTO bowler_scores VALUES(25,2,3,179,208,1);
INSERT INTO bowler_scores VALUES(25,2,32,137,189,1);
INSERT INTO bowler_scores VALUES(26,1,7,190,220,1);
INSERT INTO bowler_scores VALUES(52,3,18,138,176,1);
INSERT INTO bowler_scores VALUES(52,3,19,184,213,1);
INSERT INTO bowler_scores VALUES(37,1,2,139,177,1);
INSERT INTO bowler_scores VALUES(5,1,2,148,185,1);
INSERT INTO bowler_scores VALUES(37,1,4,141,194,0);
INSERT INTO bowler_scores VALUES(37,1,18,138,174,0);
INSERT INTO bowler_scores VALUES(37,1,19,155,185,0);
