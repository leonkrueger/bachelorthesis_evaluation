CREATE TABLE `circuits`
(`circuitId` BIGINT,
`circuitRef` VARCHAR(1023),
`name` VARCHAR(1023),
`location` VARCHAR(1023),
`country` VARCHAR(1023),
`lat` DOUBLE,
`lng` DOUBLE,
`alt` BIGINT,
`url` VARCHAR(1023));
INSERT INTO `circuits` VALUES(21,'imola','Autodromo Enzo e Dino Ferrari','Imola','Italy',44.34389999999999788,11.71669999999999945,NULL,'http://en.wikipedia.org/wiki/Autodromo_Enzo_e_Dino_Ferrari');
INSERT INTO `circuits` VALUES(10,'hockenheimring','Hockenheimring','Hockenheim','Germany',49.32780000000000342,8.565830000000000055,NULL,'http://en.wikipedia.org/wiki/Hockenheimring');
INSERT INTO `circuits` VALUES(57,'zeltweg','Zeltweg','Styria','Austria',47.20389999999999731,14.7477999999999998,NULL,'http://en.wikipedia.org/wiki/Zeltweg_Airfield');
INSERT INTO `circuits` VALUES(45,'jarama','Jarama','Madrid','Spain',40.61710000000000064,-3.585580000000000211,NULL,'http://en.wikipedia.org/wiki/Circuito_Permanente_Del_Jarama');
INSERT INTO `circuits` VALUES(72,'port_imperial','Port Imperial Street Circuit','New Jersey','USA',40.77689999999999771,-74.011099999999999,NULL,'http://en.wikipedia.org/wiki/Port_Imperial_Street_Circuit');
INSERT INTO `circuits` VALUES(42,'dallas','Fair Park','Dallas','USA',32.77740000000000009,-96.7587000000000045,NULL,'http://en.wikipedia.org/wiki/Fair_Park');
INSERT INTO `circuits` VALUES(44,'las_vegas','Las Vegas Street Circuit','Nevada','USA',36.1161999999999992,-115.1740000000000066,NULL,'http://en.wikipedia.org/wiki/Las_Vegas,_Nevada');
CREATE TABLE `constructors`
(`constructorId` BIGINT,
`constructorRef` VARCHAR(1023),
`name` VARCHAR(1023),
`nationality` VARCHAR(1023),
`url` VARCHAR(1023));
INSERT INTO `constructors` VALUES(85,'bellasi','Bellasi','Swiss','http://en.wikipedia.org/wiki/Bellasi');
INSERT INTO `constructors` VALUES(74,'maki','Maki','Japanese','http://en.wikipedia.org/wiki/Maki_(cars)');
INSERT INTO `constructors` VALUES(163,'milano','Milano','Italian','http://en.wikipedia.org/wiki/Scuderia_Milano');
INSERT INTO `constructors` VALUES(115,'vhristensen','Christensen','American','http://en.wikipedia.org/wiki/Christensen_(constructor)');
INSERT INTO `constructors` VALUES(111,'trevis','Trevis','American','http://en.wikipedia.org/wiki/Trevis');
INSERT INTO `constructors` VALUES(210,'haas','Haas F1 Team','American','http://en.wikipedia.org/wiki/Haas_F1_Team');
INSERT INTO `constructors` VALUES(83,'politoys','Politoys','British','http://en.wikipedia.org/wiki/Frank_Williams_Racing_Cars');
CREATE TABLE `drivers`
(`driverId` BIGINT,
`driverRef` VARCHAR(1023),
`number` BIGINT,
`code` VARCHAR(1023),
`forename` VARCHAR(1023),
`surname` VARCHAR(1023),
`dob` DATE,
`nationality` VARCHAR(1023),
`url` VARCHAR(1023));
INSERT INTO `drivers` VALUES(825,'kevin_magnussen',20,'MAG','Kevin','Magnussen','1992-10-05','Danish','http://en.wikipedia.org/wiki/Kevin_Magnussen');
INSERT INTO `drivers` VALUES(365,'hahne',NULL,NULL,'Hubert','Hahne','1935-03-28','German','http://en.wikipedia.org/wiki/Hubert_Hahne');
INSERT INTO `drivers` VALUES(620,'maglioli',NULL,NULL,'Umberto','Maglioli','1928-06-05','Italian','http://en.wikipedia.org/wiki/Umberto_Maglioli');
INSERT INTO `drivers` VALUES(503,'chimeri',NULL,NULL,'Ettore','Chimeri','1921-06-04','Venezuelan','http://en.wikipedia.org/wiki/Ettore_Chimeri');
INSERT INTO `drivers` VALUES(163,'arnoux',NULL,NULL,'René','Arnoux','1948-07-04','French','http://en.wikipedia.org/wiki/Ren%C3%A9_Arnoux');
INSERT INTO `drivers` VALUES(599,'bisch',NULL,NULL,'Art','Bisch','1926-11-10','American','http://en.wikipedia.org/wiki/Art_Bisch');
INSERT INTO `drivers` VALUES(32,'klien',NULL,'KLI','Christian','Klien','1983-02-07','Austrian','http://en.wikipedia.org/wiki/Christian_Klien');
CREATE TABLE `seasons`
(`year` BIGINT,
`url` VARCHAR(1023));
INSERT INTO `seasons` VALUES(2013,'http://en.wikipedia.org/wiki/2013_Formula_One_season');
INSERT INTO `seasons` VALUES(1952,'http://en.wikipedia.org/wiki/1952_Formula_One_season');
INSERT INTO `seasons` VALUES(1965,'http://en.wikipedia.org/wiki/1965_Formula_One_season');
INSERT INTO `seasons` VALUES(1966,'http://en.wikipedia.org/wiki/1966_Formula_One_season');
INSERT INTO `seasons` VALUES(1993,'http://en.wikipedia.org/wiki/1993_Formula_One_season');
INSERT INTO `seasons` VALUES(1973,'http://en.wikipedia.org/wiki/1973_Formula_One_season');
INSERT INTO `seasons` VALUES(1990,'http://en.wikipedia.org/wiki/1990_Formula_One_season');
CREATE TABLE `races`
(`raceId` BIGINT,
`year` BIGINT,
`round` BIGINT,
`circuitId` BIGINT,
`name` VARCHAR(1023),
`date` DATE,
`time` VARCHAR(1023),
`url` VARCHAR(1023));
INSERT INTO `races` VALUES(230,1996,7,4,'Spanish Grand Prix','1996-06-02',NULL,'http://en.wikipedia.org/wiki/1996_Spanish_Grand_Prix');
INSERT INTO `races` VALUES(409,1986,6,7,'Canadian Grand Prix','1986-06-15',NULL,'http://en.wikipedia.org/wiki/1986_Canadian_Grand_Prix');
INSERT INTO `races` VALUES(516,1979,5,45,'Spanish Grand Prix','1979-04-29',NULL,'http://en.wikipedia.org/wiki/1979_Spanish_Grand_Prix');
INSERT INTO `races` VALUES(526,1979,15,46,'United States Grand Prix','1979-10-07',NULL,'http://en.wikipedia.org/wiki/1979_United_States_Grand_Prix');
INSERT INTO `races` VALUES(555,1977,13,39,'Dutch Grand Prix','1977-08-28',NULL,'http://en.wikipedia.org/wiki/1977_Dutch_Grand_Prix');
INSERT INTO `races` VALUES(967,2016,20,18,'Brazilian Grand Prix','2016-11-13','16:00:00','https://en.wikipedia.org/wiki/2016_Brazilian_Grand_Prix');
INSERT INTO `races` VALUES(475,1982,9,39,'Dutch Grand Prix','1982-07-03',NULL,'http://en.wikipedia.org/wiki/1982_Dutch_Grand_Prix');
CREATE TABLE `constructorResults`
(`constructorResultsId` BIGINT,
`raceId` BIGINT,
`constructorId` BIGINT,
`points` DOUBLE,
`status` VARCHAR(1023));
INSERT INTO `constructorResults` VALUES(6380,507,4,9.0,NULL);
INSERT INTO `constructorResults` VALUES(13506,533,25,0.0,NULL);
INSERT INTO `constructorResults` VALUES(5680,463,52,0.0,NULL);
INSERT INTO `constructorResults` VALUES(2509,251,18,0.0,NULL);
INSERT INTO `constructorResults` VALUES(13799,520,204,0.0,NULL);
INSERT INTO `constructorResults` VALUES(4748,398,18,0.0,NULL);
INSERT INTO `constructorResults` VALUES(10047,752,117,0.0,NULL);
CREATE TABLE `constructorStandings`
(`constructorStandingsId` BIGINT,
`raceId` BIGINT,
`constructorId` BIGINT,
`points` DOUBLE,
`position` BIGINT,
`positionText` VARCHAR(1023),
`wins` BIGINT);
INSERT INTO `constructorStandings` VALUES(5188,252,1,21.0,4,'4',0);
INSERT INTO `constructorStandings` VALUES(1635,34,3,26.0,8,'8',0);
INSERT INTO `constructorStandings` VALUES(3433,300,35,2.0,10,'10',0);
INSERT INTO `constructorStandings` VALUES(8945,364,34,5.0,9,'9',0);
INSERT INTO `constructorStandings` VALUES(743,89,9,34.0,7,'7',0);
INSERT INTO `constructorStandings` VALUES(23297,553,37,0.0,13,'13',0);
INSERT INTO `constructorStandings` VALUES(22720,583,67,2.0,9,'9',0);
CREATE TABLE `driverStandings`
(`driverStandingsId` BIGINT,
`raceId` BIGINT,
`driverId` BIGINT,
`points` DOUBLE,
`position` BIGINT,
`positionText` VARCHAR(1023),
`wins` BIGINT);
INSERT INTO `driverStandings` VALUES(63996,346,10,0.0,24,'24',0);
INSERT INTO `driverStandings` VALUES(17281,311,55,8.0,8,'8',0);
INSERT INTO `driverStandings` VALUES(56309,586,232,0.0,40,'40',0);
INSERT INTO `driverStandings` VALUES(16423,335,112,0.0,23,'23',0);
INSERT INTO `driverStandings` VALUES(21855,461,105,9.0,10,'10',1);
INSERT INTO `driverStandings` VALUES(9542,282,87,10.0,6,'6',0);
INSERT INTO `driverStandings` VALUES(51432,708,412,0.0,47,'47',0);
CREATE TABLE `lapTimes`
(`raceId` BIGINT,
`driverId` BIGINT,
`lap` BIGINT,
`position` BIGINT,
`time` VARCHAR(1023),
`milliseconds` BIGINT);
INSERT INTO `lapTimes` VALUES(94,15,38,3,'1:18.424',78424);
INSERT INTO `lapTimes` VALUES(913,826,51,15,'1:53.477',113477);
INSERT INTO `lapTimes` VALUES(31,3,9,4,'1:36.759',96759);
INSERT INTO `lapTimes` VALUES(862,808,4,19,'1:45.805',105805);
INSERT INTO `lapTimes` VALUES(906,826,33,16,'1:20.138',80138);
INSERT INTO `lapTimes` VALUES(215,30,7,2,'1:26.062',86062);
INSERT INTO `lapTimes` VALUES(936,13,63,12,'1:27.543',87543);
CREATE TABLE `pitStops`
(`raceId` BIGINT,
`driverId` BIGINT,
`stop` BIGINT,
`lap` BIGINT,
`time` VARCHAR(1023),
`duration` VARCHAR(1023),
`milliseconds` BIGINT);
INSERT INTO `pitStops` VALUES(884,20,1,10,'14:18:51','18.606',18606);
INSERT INTO `pitStops` VALUES(870,813,3,52,'15:23:48','13.206',13206);
INSERT INTO `pitStops` VALUES(873,808,3,30,'21:04:39','30.405',30405);
INSERT INTO `pitStops` VALUES(916,13,1,14,'14:30:44','24.488',24488);
INSERT INTO `pitStops` VALUES(857,30,2,50,'16:19:55','21.482',21482);
INSERT INTO `pitStops` VALUES(888,8,2,24,'14:43:25','20.528',20528);
INSERT INTO `pitStops` VALUES(945,807,2,24,'17:47:36','22.174',22174);
CREATE TABLE `qualifying`
(`qualifyId` BIGINT,
`raceId` BIGINT,
`driverId` BIGINT,
`constructorId` BIGINT,
`number` BIGINT,
`position` BIGINT,
`q1` VARCHAR(1023),
`q2` VARCHAR(1023),
`q3` VARCHAR(1023));
INSERT INTO `qualifying` VALUES(7313,977,826,5,26,14,'1:05.990','1:05.884',NULL);
INSERT INTO `qualifying` VALUES(6857,955,835,4,30,22,'1:46.394',NULL,NULL);
INSERT INTO `qualifying` VALUES(7140,969,1,131,44,1,'1:24.191','1:23.251','1:22.188');
INSERT INTO `qualifying` VALUES(7139,968,828,15,9,22,'1:42.637',NULL,NULL);
INSERT INTO `qualifying` VALUES(5255,872,814,10,11,4,'1:24.875','1:24.345','1:24.304');
INSERT INTO `qualifying` VALUES(5914,902,20,9,1,11,'1:35.549','1:34.985',NULL);
INSERT INTO `qualifying` VALUES(3393,339,1,1,2,20,'1:53.050',NULL,NULL);
CREATE TABLE `status`
(`statusId` BIGINT,
`status` VARCHAR(1023));
INSERT INTO `status` VALUES(96,'Excluded');
INSERT INTO `status` VALUES(61,'Wheel nut');
INSERT INTO `status` VALUES(70,'Oil line');
INSERT INTO `status` VALUES(94,'Oil pump');
INSERT INTO `status` VALUES(55,'+12 Laps');
INSERT INTO `status` VALUES(53,'+13 Laps');
INSERT INTO `status` VALUES(47,'Water leak');
CREATE TABLE `results`
(`resultId` BIGINT,
`raceId` BIGINT,
`driverId` BIGINT,
`constructorId` BIGINT,
`number` BIGINT,
`grid` BIGINT,
`position` BIGINT,
`positionText` VARCHAR(1023),
`positionOrder` BIGINT,
`points` DOUBLE,
`laps` BIGINT,
`time` VARCHAR(1023),
`milliseconds` BIGINT,
`fastestLap` BIGINT,
`rank` BIGINT,
`fastestLapTime` VARCHAR(1023),
`fastestLapSpeed` VARCHAR(1023),
`statusId` BIGINT);
INSERT INTO `results` VALUES(7095,323,129,45,14,22,NULL,'R',14,0.0,52,NULL,NULL,NULL,NULL,NULL,NULL,36);
INSERT INTO `results` VALUES(22532,918,821,15,21,14,15,'15',15,0.0,54,NULL,NULL,43,15,'1:47.698','185.652',11);
INSERT INTO `results` VALUES(3311,175,30,6,3,3,8,'8',8,0.0,56,NULL,NULL,NULL,NULL,NULL,NULL,11);
INSERT INTO `results` VALUES(8539,373,127,37,15,20,15,'15',15,0.0,58,NULL,NULL,NULL,NULL,NULL,NULL,12);
INSERT INTO `results` VALUES(14167,576,182,6,12,4,6,'6',6,1.0,53,'+1:19.65',6045940,NULL,NULL,NULL,NULL,1);
INSERT INTO `results` VALUES(1497,89,23,7,17,9,3,'3',3,6.0,56,'+25.3',6018918,44,5,'1:34.035','208.684',1);
INSERT INTO `results` VALUES(11252,473,202,6,28,4,3,'3',3,4.0,62,'+28.077',7149120,NULL,NULL,NULL,NULL,1);
