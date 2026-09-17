CREATE TABLE `player`
(`player_id` VARCHAR(1023),
`birth_year` DOUBLE,
`birth_month` DOUBLE,
`birth_day` DOUBLE,
`birth_country` VARCHAR(1023),
`birth_state` VARCHAR(1023),
`birth_city` VARCHAR(1023),
`death_year` DOUBLE,
`death_month` DOUBLE,
`death_day` DOUBLE,
`death_country` VARCHAR(1023),
`death_state` VARCHAR(1023),
`death_city` VARCHAR(1023),
`name_first` VARCHAR(1023),
`name_last` VARCHAR(1023),
`name_given` VARCHAR(1023),
`weight` DOUBLE,
`height` DOUBLE,
`bats` VARCHAR(1023),
`throws` VARCHAR(1023),
`debut` VARCHAR(1023),
`final_game` VARCHAR(1023),
`retro_id` VARCHAR(1023),
`bbref_id` VARCHAR(1023));
CREATE TABLE `park`
(`park_id` VARCHAR(1023),
`park_name` VARCHAR(1023),
`park_alias` VARCHAR(1023),
`city` VARCHAR(1023),
`state` VARCHAR(1023),
`country` VARCHAR(1023));
CREATE TABLE `college`
(`college_id` VARCHAR(1023),
`name_full` VARCHAR(1023),
`city` VARCHAR(1023),
`state` VARCHAR(1023),
`country` VARCHAR(1023));
CREATE TABLE `postseason`
(`year` BIGINT,
`round` VARCHAR(1023),
`team_id_winner` VARCHAR(1023),
`league_id_winner` VARCHAR(1023),
`team_id_loser` VARCHAR(1023),
`league_id_loser` VARCHAR(1023),
`wins` BIGINT,
`losses` BIGINT,
`ties` BIGINT);
CREATE TABLE `team_franchise`
(`franchise_id` VARCHAR(1023),
`franchise_name` VARCHAR(1023),
`active` VARCHAR(1023),
`na_assoc` VARCHAR(1023));
CREATE TABLE `manager_award`
(`player_id` VARCHAR(1023),
`award_id` VARCHAR(1023),
`year` BIGINT,
`league_id` VARCHAR(1023),
`tie` VARCHAR(1023),
`notes` DOUBLE);
CREATE TABLE `player_award`
(`player_id` VARCHAR(1023),
`award_id` VARCHAR(1023),
`year` BIGINT,
`league_id` VARCHAR(1023),
`tie` VARCHAR(1023),
`notes` VARCHAR(1023));
CREATE TABLE `manager_award_vote`
(`award_id` VARCHAR(1023),
`year` BIGINT,
`league_id` VARCHAR(1023),
`player_id` VARCHAR(1023),
`points_won` BIGINT,
`points_max` BIGINT,
`votes_first` BIGINT);
CREATE TABLE `player_award_vote`
(`award_id` VARCHAR(1023),
`year` BIGINT,
`league_id` VARCHAR(1023),
`player_id` VARCHAR(1023),
`points_won` DOUBLE,
`points_max` BIGINT,
`votes_first` DOUBLE);
CREATE TABLE `player_college`
(`player_id` VARCHAR(1023),
`college_id` VARCHAR(1023),
`year` BIGINT);
CREATE TABLE `hall_of_fame`
(`player_id` VARCHAR(1023),
`yearid` BIGINT,
`votedby` VARCHAR(1023),
`ballots` DOUBLE,
`needed` DOUBLE,
`votes` DOUBLE,
`inducted` VARCHAR(1023),
`category` VARCHAR(1023),
`needed_note` VARCHAR(1023));
CREATE TABLE `team`
(`year` BIGINT,
`league_id` VARCHAR(1023),
`team_id` VARCHAR(1023),
`franchise_id` VARCHAR(1023),
`div_id` VARCHAR(1023),
`rank` BIGINT,
`g` BIGINT,
`ghome` DOUBLE,
`w` BIGINT,
`l` BIGINT,
`div_win` VARCHAR(1023),
`wc_win` VARCHAR(1023),
`lg_win` VARCHAR(1023),
`ws_win` VARCHAR(1023),
`r` BIGINT,
`ab` BIGINT,
`h` BIGINT,
`double` BIGINT,
`triple` BIGINT,
`hr` BIGINT,
`bb` BIGINT,
`so` DOUBLE,
`sb` DOUBLE,
`cs` DOUBLE,
`hbp` DOUBLE,
`sf` DOUBLE,
`ra` BIGINT,
`er` BIGINT,
`era` DOUBLE,
`cg` BIGINT,
`sho` BIGINT,
`sv` BIGINT,
`ipouts` BIGINT,
`ha` BIGINT,
`hra` BIGINT,
`bba` BIGINT,
`soa` BIGINT,
`e` BIGINT,
`dp` DOUBLE,
`fp` DOUBLE,
`name` VARCHAR(1023),
`park` VARCHAR(1023),
`attendance` DOUBLE,
`bpf` BIGINT,
`ppf` BIGINT,
`team_id_br` VARCHAR(1023),
`team_id_lahman45` VARCHAR(1023),
`team_id_retro` VARCHAR(1023));
CREATE TABLE `all_star`
(`player_id` VARCHAR(1023),
`year` BIGINT,
`game_num` BIGINT,
`game_id` VARCHAR(1023),
`team_id` VARCHAR(1023),
`league_id` VARCHAR(1023),
`gp` DOUBLE,
`starting_pos` DOUBLE);
CREATE TABLE `appearances`
(`year` BIGINT,
`team_id` VARCHAR(1023),
`league_id` VARCHAR(1023),
`player_id` VARCHAR(1023),
`g_all` DOUBLE,
`gs` DOUBLE,
`g_batting` BIGINT,
`g_defense` DOUBLE,
`g_p` BIGINT,
`g_c` BIGINT,
`g_1b` BIGINT,
`g_2b` BIGINT,
`g_3b` BIGINT,
`g_ss` BIGINT,
`g_lf` BIGINT,
`g_cf` BIGINT,
`g_rf` BIGINT,
`g_of` BIGINT,
`g_dh` DOUBLE,
`g_ph` DOUBLE,
`g_pr` DOUBLE);
CREATE TABLE `batting`
(`player_id` VARCHAR(1023),
`year` BIGINT,
`stint` BIGINT,
`team_id` VARCHAR(1023),
`league_id` VARCHAR(1023),
`g` BIGINT,
`ab` DOUBLE,
`r` DOUBLE,
`h` DOUBLE,
`double` DOUBLE,
`triple` DOUBLE,
`hr` DOUBLE,
`rbi` DOUBLE,
`sb` DOUBLE,
`cs` DOUBLE,
`bb` DOUBLE,
`so` DOUBLE,
`ibb` DOUBLE,
`hbp` DOUBLE,
`sh` DOUBLE,
`sf` DOUBLE,
`g_idp` DOUBLE);
CREATE TABLE `batting_postseason`
(`year` BIGINT,
`round` VARCHAR(1023),
`player_id` VARCHAR(1023),
`team_id` VARCHAR(1023),
`league_id` VARCHAR(1023),
`g` BIGINT,
`ab` BIGINT,
`r` BIGINT,
`h` BIGINT,
`double` BIGINT,
`triple` BIGINT,
`hr` BIGINT,
`rbi` BIGINT,
`sb` BIGINT,
`cs` DOUBLE,
`bb` BIGINT,
`so` BIGINT,
`ibb` DOUBLE,
`hbp` DOUBLE,
`sh` DOUBLE,
`sf` DOUBLE,
`g_idp` DOUBLE);
CREATE TABLE `fielding`
(`player_id` VARCHAR(1023),
`year` BIGINT,
`stint` BIGINT,
`team_id` VARCHAR(1023),
`league_id` VARCHAR(1023),
`pos` VARCHAR(1023),
`g` BIGINT,
`gs` DOUBLE,
`inn_outs` DOUBLE,
`po` DOUBLE,
`a` DOUBLE,
`e` DOUBLE,
`dp` DOUBLE,
`pb` DOUBLE,
`wp` DOUBLE,
`sb` DOUBLE,
`cs` DOUBLE,
`zr` DOUBLE);
CREATE TABLE `fielding_postseason`
(`player_id` VARCHAR(1023),
`year` BIGINT,
`team_id` VARCHAR(1023),
`league_id` VARCHAR(1023),
`round` VARCHAR(1023),
`pos` VARCHAR(1023),
`g` BIGINT,
`gs` DOUBLE,
`inn_outs` DOUBLE,
`po` BIGINT,
`a` BIGINT,
`e` BIGINT,
`dp` BIGINT,
`tp` BIGINT,
`pb` DOUBLE,
`sb` DOUBLE,
`cs` DOUBLE);
CREATE TABLE `home_game`
(`year` BIGINT,
`league_id` VARCHAR(1023),
`team_id` VARCHAR(1023),
`park_id` VARCHAR(1023),
`span_first` VARCHAR(1023),
`span_last` VARCHAR(1023),
`games` BIGINT,
`openings` BIGINT,
`attendance` BIGINT);
CREATE TABLE `manager`
(`player_id` VARCHAR(1023),
`year` BIGINT,
`team_id` VARCHAR(1023),
`league_id` VARCHAR(1023),
`inseason` BIGINT,
`g` BIGINT,
`w` BIGINT,
`l` BIGINT,
`rank` DOUBLE,
`plyr_mgr` VARCHAR(1023));
CREATE TABLE `manager_half`
(`player_id` VARCHAR(1023),
`year` BIGINT,
`team_id` VARCHAR(1023),
`league_id` VARCHAR(1023),
`inseason` BIGINT,
`half` BIGINT,
`g` BIGINT,
`w` BIGINT,
`l` BIGINT,
`rank` BIGINT);
CREATE TABLE `pitching`
(`player_id` VARCHAR(1023),
`year` BIGINT,
`stint` BIGINT,
`team_id` VARCHAR(1023),
`league_id` VARCHAR(1023),
`w` BIGINT,
`l` BIGINT,
`g` BIGINT,
`gs` BIGINT,
`cg` BIGINT,
`sho` BIGINT,
`sv` BIGINT,
`ipouts` DOUBLE,
`h` BIGINT,
`er` BIGINT,
`hr` BIGINT,
`bb` BIGINT,
`so` BIGINT,
`baopp` DOUBLE,
`era` DOUBLE,
`ibb` DOUBLE,
`wp` DOUBLE,
`hbp` DOUBLE,
`bk` BIGINT,
`bfp` DOUBLE,
`gf` DOUBLE,
`r` BIGINT,
`sh` DOUBLE,
`sf` DOUBLE,
`g_idp` DOUBLE);
CREATE TABLE `pitching_postseason`
(`player_id` VARCHAR(1023),
`year` BIGINT,
`round` VARCHAR(1023),
`team_id` VARCHAR(1023),
`league_id` VARCHAR(1023),
`w` BIGINT,
`l` BIGINT,
`g` BIGINT,
`gs` BIGINT,
`cg` BIGINT,
`sho` BIGINT,
`sv` BIGINT,
`ipouts` BIGINT,
`h` BIGINT,
`er` BIGINT,
`hr` BIGINT,
`bb` BIGINT,
`so` BIGINT,
`baopp` VARCHAR(1023),
`era` DOUBLE,
`ibb` DOUBLE,
`wp` DOUBLE,
`hbp` DOUBLE,
`bk` DOUBLE,
`bfp` DOUBLE,
`gf` BIGINT,
`r` BIGINT,
`sh` DOUBLE,
`sf` DOUBLE,
`g_idp` DOUBLE);
CREATE TABLE `salary`
(`year` BIGINT,
`team_id` VARCHAR(1023),
`league_id` VARCHAR(1023),
`player_id` VARCHAR(1023),
`salary` BIGINT);
CREATE TABLE `team_half`
(`year` BIGINT,
`league_id` VARCHAR(1023),
`team_id` VARCHAR(1023),
`half` BIGINT,
`div_id` VARCHAR(1023),
`div_win` VARCHAR(1023),
`rank` BIGINT,
`g` BIGINT,
`w` BIGINT,
`l` BIGINT);
INSERT INTO player VALUES('maddojo99',1954,2,8,'USA','PA','Hazleton','','','','','','','Joe','Maddon','Joseph John',190,71,'R','R','','','maddj801','maddojo99');
INSERT INTO player VALUES('johnske05',1982,2,22,'USA','TX','Austin','','','','','','','Kelly','Johnson','Kelly Andrew',195,73,'L','R','2005-05-29','2015-10-03','johnk003','johnske05');
INSERT INTO player VALUES('joycema01',1984,8,3,'USA','FL','Tampa','','','','','','','Matthew','Joyce','Matthew Ryan',200,74,'L','R','2008-05-05','2015-09-21','joycm001','joycema01');
INSERT INTO player VALUES('bagwebi01',1895,2,24,'USA','LA','Choudrant',1976,10,5,'USA','LA','Choudrant','Bill','Bagwell','William Mallory',175,73,'L','L','1923-04-17','1925-09-26','bagwb101','bagwebi01');
INSERT INTO player VALUES('oakesre01',1883,12,17,'USA','LA','Lisbon',1948,3,1,'USA','LA','Lisbon','Rebel','Oakes','Ennis Telfair',170,71,'L','R','1909-04-14','1915-10-03','oaker101','oakesre01');
INSERT INTO player VALUES('irwinar01',1858,2,14,'CAN','ON','Toronto',1921,7,16,'At Sea','Atlantic Ocean','','Arthur','Irwin','Arthur Albert',158,68,'L','R','1880-05-01','1894-06-22','irwia101','irwinar01');
INSERT INTO player VALUES('zimmedo01',1931,1,17,'USA','OH','Cincinnati',2014,6,4,'USA','FL','Dunedin','Don','Zimmer','Donald William',165,69,'R','R','1954-07-02','1965-10-02','zimmd101','zimmedo01');
INSERT INTO player VALUES('priceda01',1985,8,26,'USA','TN','Murfreesboro','','','','','','','David','Price','David Taylor',210,78,'L','L','2008-09-14','2015-09-26','pricd001','priceda01');
INSERT INTO player VALUES('soriara01',1979,12,19,'D.R.','San Pedro de Macoris','San Jose','','','','','','','Rafael','Soriano','Rafael',230,76,'R','R','2002-05-10','2015-07-30','sorir001','soriara01');
INSERT INTO player VALUES('mattibo01',1915,12,5,'USA','IA','Sioux City',2004,12,16,'USA','AZ','Scottsdale','Bobby','Mattick','Robert James',178,71,'R','R','1938-05-05','1942-08-18','mattb101','mattibo01');
INSERT INTO player VALUES('showabu99',1956,5,23,'USA','FL','DeFuniak Springs','','','','','','','Buck','Showalter','William Nathaniel',195,69,'L','L','','','showb801','showabu99');
INSERT INTO player VALUES('moorema02',1989,6,18,'USA','FL','Fort Walton Beach','','','','','','','Matt','Moore','Matthew Cody',210,75,'L','L','2011-09-14','2015-10-04','moorm003','moorema02');
INSERT INTO player VALUES('raineti01',1959,9,16,'USA','FL','Sanford','','','','','','','Tim','Raines','Timothy',160,68,'B','R','1979-09-11','2002-09-29','raint001','raineti01');
INSERT INTO player VALUES('youngde03',1985,9,14,'USA','AL','Birmingham','','','','','','','Delmon','Young','Delmon Damarcus',240,75,'R','R','2006-08-29','2015-06-29','yound003','youngde03');
INSERT INTO player VALUES('richada01',1863,1,25,'USA','NY','Elmira',1926,9,15,'USA','NY','New York','Danny','Richardson','Daniel',165,68,'R','R','1884-05-22','1894-09-24','richd101','richada01');
INSERT INTO park VALUES('COV01','Star Baseball Park','','Covington','KY','US');
INSERT INTO park VALUES('STL07','Sportsman''s Park III','Busch Stadium I','St. Louis','MO','US');
INSERT INTO park VALUES('NYC08','Washington Park II','','Brooklyn','NY','US');
INSERT INTO park VALUES('STP01','Tropicana Field','','St. Petersburg','FL','US');
INSERT INTO park VALUES('WOR02','Agricultural County Fair Grounds II','','Worcester','MA','US');
INSERT INTO park VALUES('ROC02','Culver Field II','','Rochester','NY','US');
INSERT INTO college VALUES('whittierca','Whittier College','Whittier','CA','USA');
INSERT INTO college VALUES('latech','Louisiana Tech University','Ruston','LA','USA');
INSERT INTO college VALUES('seattle','Seattle University','Seattle','WA','USA');
INSERT INTO college VALUES('vandy','Vanderbilt University','Nashville','TN','USA');
INSERT INTO college VALUES('morolla','Missouri University of Science and Technology','Rolla','MO','USA');
INSERT INTO college VALUES('pittsburgh','University of Pittsburgh','Pittsburgh','PA','USA');
INSERT INTO postseason VALUES(1928,'WS','NYA','AL','SLN','NL',4,0,0);
INSERT INTO postseason VALUES(2010,'NLCS','SFN','NL','PHI','NL',4,2,0);
INSERT INTO postseason VALUES(2010,'NLDS2','SFN','NL','ATL','NL',3,1,0);
INSERT INTO postseason VALUES(2012,'ALDS2','DET','AL','OAK','AL',3,2,0);
INSERT INTO postseason VALUES(1998,'WS','NYA','AL','SDN','NL',4,0,0);
INSERT INTO postseason VALUES(2009,'ALCS','NYA','AL','LAA','AL',4,2,0);
INSERT INTO team_franchise VALUES('BAL','Baltimore Orioles','Y','');
INSERT INTO team_franchise VALUES('NNA','New York Mutuals','','NYU');
INSERT INTO team_franchise VALUES('TBD','Tampa Bay Rays','Y','');
INSERT INTO team_franchise VALUES('TEX','Texas Rangers','Y','');
INSERT INTO team_franchise VALUES('TOR','Toronto Blue Jays','Y','');
INSERT INTO team_franchise VALUES('WAS','Washington Senators','N','');
INSERT INTO manager_award VALUES('showabu99','TSN Manager of the Year',1994,'AL','','');
INSERT INTO manager_award VALUES('maddojo99','TSN Manager of the Year',2011,'AL','','');
INSERT INTO manager_award VALUES('showabu99','TSN Manager of the Year',2012,'AL','','');
INSERT INTO manager_award VALUES('showabu99','BBWAA Manager of the year',2004,'AL','','');
INSERT INTO manager_award VALUES('zimmedo01','BBWAA Manager of the year',1989,'NL','','');
INSERT INTO manager_award VALUES('maddojo99','BBWAA Manager of the year',2008,'AL','','');
INSERT INTO manager_award VALUES('maddojo99','TSN Manager of the Year',2008,'AL','','');
INSERT INTO player_award VALUES('youngde03','ALCS MVP',2012,'AL','','');
INSERT INTO player_award VALUES('raineti01','TSN All-Star',1986,'NL','','OF');
INSERT INTO player_award VALUES('priceda01','Cy Young Award',2012,'AL','','');
INSERT INTO player_award VALUES('raineti01','Silver Slugger',1986,'NL','','OF');
INSERT INTO player_award VALUES('raineti01','All-Star Game MVP',1987,'ML','','');
INSERT INTO player_award VALUES('raineti01','TSN All-Star',1983,'NL','','OF');
INSERT INTO player_award VALUES('priceda01','TSN Pitcher of the Year',2012,'AL','Y','');
INSERT INTO manager_award_vote VALUES('Mgr of the Year',2014,'AL','showabu99',132,150,25);
INSERT INTO manager_award_vote VALUES('Mgr of the year',2004,'AL','showabu99',101,140,14);
INSERT INTO manager_award_vote VALUES('Mgr of the year',2012,'AL','showabu99',108,140,12);
INSERT INTO manager_award_vote VALUES('Mgr of the year',1995,'AL','showabu99',8,140,0);
INSERT INTO manager_award_vote VALUES('Mgr of the year',2010,'AL','maddojo99',44,140,1);
INSERT INTO manager_award_vote VALUES('Mgr of the Year',2015,'NL','maddojo99',124,150,18);
INSERT INTO manager_award_vote VALUES('Mgr of the Year',2013,'AL','showabu99',1,150,0);
INSERT INTO player_award_vote VALUES('MVP',1985,'NL','raineti01',15,336,0);
INSERT INTO player_award_vote VALUES('Cy Young',2012,'AL','priceda01',153,196,14);
INSERT INTO player_award_vote VALUES('MVP',1981,'NL','raineti01',15,336,0);
INSERT INTO player_award_vote VALUES('MVP',1984,'NL','raineti01',41,336,0);
INSERT INTO player_award_vote VALUES('MVP',2015,'AL','priceda01',62,420,0);
INSERT INTO player_award_vote VALUES('MVP',1987,'NL','raineti01',80,336,0);
INSERT INTO player_award_vote VALUES('Cy Young',2013,'AL','moorema02',4,210,0);
INSERT INTO player_college VALUES('priceda01','vandy',2005);
INSERT INTO player_college VALUES('priceda01','vandy',2006);
INSERT INTO player_college VALUES('priceda01','vandy',2007);
INSERT INTO player_college VALUES('oakesre01','latech',1907);
INSERT INTO player_college VALUES('oakesre01','latech',1908);
INSERT INTO player_college VALUES('bagwebi01','latech',1920);
INSERT INTO player_college VALUES('bagwebi01','latech',1921);
INSERT INTO hall_of_fame VALUES('raineti01',2012,'BBWAA',573,430,279,'N','Player','');
INSERT INTO hall_of_fame VALUES('raineti01',2011,'BBWAA',581,436,218,'N','Player','');
INSERT INTO hall_of_fame VALUES('raineti01',2014,'BBWAA',571,429,263,'N','Player','');
INSERT INTO hall_of_fame VALUES('raineti01',2016,'BBWAA',440,330,307,'N','Player','');
INSERT INTO hall_of_fame VALUES('raineti01',2009,'BBWAA',539,405,122,'N','Player','');
INSERT INTO hall_of_fame VALUES('raineti01',2013,'BBWAA',569,427,297,'N','Player','');
INSERT INTO team VALUES(1892,'NL','WAS','WAS','',10,153,'',58,93,'','','N','',731,5204,1245,149,78,37,529,553,276,'','','',869,506,3.459999999999999965,129,5,3,3945,1293,40,556,479,547,'',0.910000000000000031,'Washington Senators','Boundary Field',128279,97,99,'WHS','WSN','WSN');
INSERT INTO team VALUES(2010,'AL','BAL','BAL','E',5,162,81,66,96,'N','N','N','N',613,5554,1440,264,21,133,424,1056,76,34,54,45,785,733,4.589999999999999858,3,7,35,4309,1508,186,520,1007,105,141,0.981999999999999985,'Baltimore Orioles','Oriole Park at Camden Yards',1733018,101,102,'BAL','BAL','BAL');
INSERT INTO team VALUES(1981,'AL','TEX','TEX','W',2,105,56,57,48,'N','','N','N',452,3581,968,178,15,49,295,396,46,41,'','',389,355,3.399999999999999912,23,8,18,2820,891,67,322,488,69,102,0.979999999999999983,'Texas Rangers','Arlington Stadium',850076,94,94,'TEX','TEX','TEX');
INSERT INTO team VALUES(1981,'AL','TOR','TOR','E',7,106,53,37,69,'N','','N','N',329,3521,797,137,23,61,284,556,66,57,'','',466,404,3.819999999999999841,20,4,18,2859,908,72,377,451,105,102,0.969999999999999974,'Toronto Blue Jays','Exhibition Stadium',755083,106,108,'TOR','TOR','TOR');
INSERT INTO team VALUES(2001,'AL','TBA','TBD','E',5,162,81,62,100,'N','N','N','N',672,5524,1426,311,21,121,456,1116,115,52,54,25,887,781,4.94000000000000039,1,6,30,4271,1513,207,569,1030,139,144,0.97699999999999998,'Tampa Bay Devil Rays','Tropicana Field',1298365,98,100,'TBD','TBA','TBA');
INSERT INTO team VALUES(2014,'AL','TBA','TBD','E',4,162,81,77,85,'N','N','N','N',612,5516,1361,263,24,117,527,1124,63,27,66,53,625,579,3.560000000000000053,3,22,37,4391,1292,145,482,1437,88,96,0.984999999999999987,'Tampa Bay Rays','Tropicana Field',1446464,97,97,'TBR','TBA','TBA');
INSERT INTO team VALUES(2013,'AL','TBA','TBD','E',2,163,81,92,71,'N','Y','N','N',700,5538,1421,296,23,165,589,1171,73,38,36,55,646,608,3.740000000000000213,9,17,42,4392,1315,153,482,1310,59,147,0.989999999999999992,'Tampa Bay Rays','Tropicana Field',1510300,96,95,'TBR','TBA','TBA');
INSERT INTO team VALUES(1981,'AL','BAL','BAL','E',2,105,55,59,46,'N','','N','N',429,3516,883,165,11,88,404,454,41,34,'','',437,386,3.700000000000000177,25,10,23,2820,923,83,347,489,68,114,0.979999999999999983,'Baltimore Orioles','Memorial Stadium',1024247,100,99,'BAL','BAL','BAL');
INSERT INTO team VALUES(2012,'AL','TBA','TBD','E',3,162,81,90,72,'N','N','N','N',697,5398,1293,250,30,175,571,1323,134,44,58,42,577,518,3.189999999999999947,7,15,50,4379,1233,139,469,1383,114,155,0.980999999999999984,'Tampa Bay Rays','Tropicana Field',1559681,94,93,'TBR','TBA','TBA');
INSERT INTO team VALUES(2011,'AL','TBA','TBD','E',2,162,81,91,71,'N','Y','N','N',707,5436,1324,273,37,172,571,1193,155,62,73,35,614,577,3.580000000000000071,15,13,32,4347,1263,161,504,1143,73,138,0.98799999999999999,'Tampa Bay Rays','Tropicana Field',1529188,92,92,'TBR','TBA','TBA');
INSERT INTO team VALUES(2010,'AL','TBA','TBD','E',1,162,81,96,66,'Y','N','N','N',802,5439,1343,295,37,160,672,1292,172,47,57,57,649,611,3.779999999999999805,6,12,51,4361,1347,175,478,1189,85,134,0.985999999999999988,'Tampa Bay Rays','Tropicana Field',1843445,96,95,'TBR','TBA','TBA');
INSERT INTO team VALUES(2008,'AL','TBA','TBD','E',1,162,81,97,65,'Y','N','Y','N',774,5541,1443,284,37,180,626,1224,142,50,68,52,671,618,3.819999999999999841,7,12,52,4373,1349,166,526,1143,90,153,0.984999999999999987,'Tampa Bay Rays','Tropicana Field',1811986,101,101,'TBR','TBA','TBA');
INSERT INTO all_star VALUES('priceda01',2014,0,'ALS201407150','TBA','AL',0,'');
INSERT INTO all_star VALUES('priceda01',2010,0,'ALS201007130','TBA','AL',1,1);
INSERT INTO all_star VALUES('priceda01',2012,0,'ALS201207100','TBA','AL',1,'');
INSERT INTO all_star VALUES('soriara01',2010,0,'ALS201007130','TBA','AL',1,'');
INSERT INTO all_star VALUES('joycema01',2011,0,'NLS201107120','TBA','AL',1,'');
INSERT INTO all_star VALUES('moorema02',2013,0,'NLS201307160','TBA','AL',1,'');
INSERT INTO all_star VALUES('priceda01',2011,0,'NLS201107120','TBA','AL',0,'');
INSERT INTO appearances VALUES(2010,'TBA','AL','priceda01',32,31,4,32,32,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO appearances VALUES(2013,'TBA','AL','joycema01',140,109,140,110,0,0,0,0,0,0,58,0,58,110,22,31,0);
INSERT INTO appearances VALUES(2011,'TBA','AL','moorema02',3,1,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO appearances VALUES(2014,'TBA','AL','priceda01',34,34,1,34,34,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO appearances VALUES(2011,'TBA','AL','priceda01',34,34,2,34,34,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO appearances VALUES(2012,'TBA','AL','priceda01',31,31,2,31,31,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO appearances VALUES(2013,'TBA','AL','moorema02',27,27,1,27,27,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO batting VALUES('moorema02',2014,1,'TBA','AL',2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO batting VALUES('priceda01',2013,1,'TBA','AL',27,6,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0);
INSERT INTO batting VALUES('moorema02',2013,1,'TBA','AL',27,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO batting VALUES('priceda01',2014,1,'TBA','AL',23,4,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0);
INSERT INTO batting VALUES('youngde03',2013,2,'TBA','AL',23,62,8,16,3,0,3,7,0,0,6,9,0,1,0,1,1);
INSERT INTO batting VALUES('joycema01',2010,1,'TBA','AL',77,216,30,52,15,3,10,40,2,2,40,55,2,2,0,3,2);
INSERT INTO batting VALUES('priceda01',2010,1,'TBA','AL',32,7,0,1,0,0,0,0,0,0,0,5,0,0,0,0,0);
INSERT INTO batting_postseason VALUES(2013,'ALDS1','youngde03','TBA','AL',4,8,0,2,0,0,0,2,0,0,0,0,'','','',1,'');
INSERT INTO batting_postseason VALUES(2013,'ALDS1','johnske05','TBA','AL',2,3,0,1,0,1,0,0,0,0,0,2,'','','','','');
INSERT INTO batting_postseason VALUES(2008,'WS','priceda01','TBA','AL',1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO batting_postseason VALUES(2013,'ALWC','youngde03','TBA','AL',1,3,1,1,0,0,1,1,0,0,1,1,1,'','','','');
INSERT INTO batting_postseason VALUES(2013,'ALDS1','moorema02','TBA','AL',2,0,0,0,0,0,0,0,0,0,0,0,'','','','','');
INSERT INTO batting_postseason VALUES(2010,'ALDS1','joycema01','TBA','AL',4,9,0,2,0,0,0,0,1,0,0,4,0,0,0,0,0);
INSERT INTO batting_postseason VALUES(2013,'ALDS1','priceda01','TBA','AL',1,0,0,0,0,0,0,0,0,0,0,0,'','','','','');
INSERT INTO fielding VALUES('joycema01',2014,1,'TBA','AL','OF',94,'',2187,156,5,3,1,'','','','','');
INSERT INTO fielding VALUES('priceda01',2014,1,'TBA','AL','P',23,'',513,3,15,1,1,'','','','','');
INSERT INTO fielding VALUES('priceda01',2013,1,'TBA','AL','P',27,'',561,7,25,0,0,'','','','','');
INSERT INTO fielding VALUES('moorema02',2012,1,'TBA','AL','P',31,'',531,6,20,2,3,'','','','','');
INSERT INTO fielding VALUES('johnske05',2013,1,'TBA','AL','3B',16,'',354,13,31,1,3,'','','','','');
INSERT INTO fielding VALUES('johnske05',2013,1,'TBA','AL','LF',53,'','','','','','','','','','','');
INSERT INTO fielding VALUES('moorema02',2014,1,'TBA','AL','P',2,'',30,0,1,0,0,'','','','','');
INSERT INTO fielding_postseason VALUES('johnske05',2013,'TBA','AL','ALDS1','LF',1,0,0,0,0,0,0,0,'','','');
INSERT INTO fielding_postseason VALUES('priceda01',2010,'TBA','AL','ALDS1','P',2,2,38,1,1,0,0,0,'',4,1);
INSERT INTO fielding_postseason VALUES('priceda01',2011,'TBA','AL','ALDS2','P',1,1,'',2,1,0,0,0,'','','');
INSERT INTO fielding_postseason VALUES('priceda01',2013,'TBA','AL','ALDS1','P',1,1,21,0,0,0,0,0,'','','');
INSERT INTO fielding_postseason VALUES('youngde03',2013,'TBA','AL','ALDS1','DH',2,0,0,0,0,0,0,0,'','','');
INSERT INTO fielding_postseason VALUES('youngde03',2013,'TBA','AL','ALWC','DH',1,0,0,0,0,0,0,0,'','','');
INSERT INTO home_game VALUES(2014,'AL','TBA','STP01','2014-03-31','2014-09-21',81,81,1446464);
INSERT INTO home_game VALUES(2013,'AL','TBA','STP01','2013-04-02','2013-09-23',81,81,1510300);
INSERT INTO home_game VALUES(2012,'AL','TBA','STP01','2012-04-06','2012-10-03',81,81,1559681);
INSERT INTO home_game VALUES(2010,'AL','TBA','STP01','2010-04-06','2010-09-29',81,81,1865002);
INSERT INTO home_game VALUES(2011,'AL','TBA','STP01','2011-04-01','2011-09-28',81,81,1529188);
INSERT INTO home_game VALUES(2001,'AL','TBA','STP01','2001-04-03','2001-10-07',81,81,1298075);
INSERT INTO manager VALUES('maddojo99',2010,'TBA','AL',1,162,96,66,1,'N');
INSERT INTO manager VALUES('maddojo99',2011,'TBA','AL',1,162,91,71,2,'N');
INSERT INTO manager VALUES('maddojo99',2013,'TBA','AL',1,163,92,71,2,'N');
INSERT INTO manager VALUES('maddojo99',2012,'TBA','AL',1,162,90,72,3,'N');
INSERT INTO manager VALUES('showabu99',2010,'BAL','AL',3,57,34,23,5,'N');
INSERT INTO manager VALUES('maddojo99',2014,'TBA','AL',1,162,77,85,4,'N');
INSERT INTO manager_half VALUES('irwinar01',1892,'WAS','NL',2,1,74,35,39,7);
INSERT INTO manager_half VALUES('irwinar01',1892,'WAS','NL',2,2,34,11,21,12);
INSERT INTO manager_half VALUES('richada01',1892,'WAS','NL',3,2,43,12,31,12);
INSERT INTO manager_half VALUES('zimmedo01',1981,'TEX','AL',1,1,55,33,22,2);
INSERT INTO manager_half VALUES('zimmedo01',1981,'TEX','AL',1,2,50,24,26,3);
INSERT INTO manager_half VALUES('mattibo01',1981,'TOR','AL',1,2,48,21,27,7);
INSERT INTO pitching VALUES('moorema02',2013,1,'TBA','AL',17,4,27,27,1,1,0,451,119,55,14,76,143,0.2160000000000000254,3.290000000000000035,1,17,4,1,642,0,58,5,6,'');
INSERT INTO pitching VALUES('priceda01',2010,1,'TBA','AL',19,6,32,31,2,1,0,626,170,63,15,79,188,0.2210000000000000019,2.720000000000000195,1,5,5,3,861,0,71,4,3,'');
INSERT INTO pitching VALUES('moorema02',2012,1,'TBA','AL',11,11,31,31,0,0,0,532,158,75,18,81,175,0.238000000000000017,3.810000000000000053,5,8,7,1,759,0,85,3,4,'');
INSERT INTO pitching VALUES('priceda01',2013,1,'TBA','AL',10,8,27,27,4,0,0,560,178,69,16,27,151,0.2520000000000000017,3.330000000000000071,0,6,3,0,740,0,78,1,2,'');
INSERT INTO pitching VALUES('priceda01',2014,1,'TBA','AL',11,8,23,23,2,0,0,512,156,59,20,23,189,0.238000000000000017,3.109999999999999876,1,2,5,0,689,0,68,3,3,9);
INSERT INTO pitching VALUES('priceda01',2012,1,'TBA','AL',20,5,31,31,2,1,0,633,173,60,16,59,205,0.2260000000000000064,2.560000000000000053,2,8,5,1,836,0,63,2,3,'');
INSERT INTO pitching_postseason VALUES('priceda01',2008,'WS','TBA','AL',0,0,2,0,0,0,0,10,2,1,1,2,4,'0.15',2.700000000000000177,0,0,0,0,15,2,2,0,0,0);
INSERT INTO pitching_postseason VALUES('moorema02',2013,'ALDS1','TBA','AL',0,1,2,1,0,0,0,19,9,7,0,3,7,'0.321',9.94999999999999928,1,1,1,0,32,0,8,'','',1);
INSERT INTO pitching_postseason VALUES('priceda01',2013,'ALDS1','TBA','AL',0,1,1,1,0,0,0,21,9,7,2,2,5,'0.321',9,0,0,0,0,31,0,7,'','',1);
INSERT INTO pitching_postseason VALUES('moorema02',2011,'ALDS2','TBA','AL',1,0,2,1,0,0,0,30,3,1,1,3,8,'0.091',0.9000000000000000222,0,1,1,0,37,0,1,'','',0);
INSERT INTO pitching_postseason VALUES('priceda01',2010,'ALDS1','TBA','AL',0,2,2,2,0,0,0,38,17,7,2,0,14,'0.3',4.969999999999999752,0,0,0,0,55,0,8,0,0,1);
INSERT INTO pitching_postseason VALUES('priceda01',2011,'ALDS2','TBA','AL',0,1,1,1,0,0,0,20,7,3,1,1,3,'0.269',4.049999999999999823,0,1,0,0,27,0,3,'','',0);
INSERT INTO salary VALUES(2012,'TBA','AL','priceda01',4350000);
INSERT INTO salary VALUES(2010,'TBA','AL','priceda01',1834671);
INSERT INTO salary VALUES(2011,'TBA','AL','priceda01',2084671);
INSERT INTO salary VALUES(2013,'TBA','AL','priceda01',9831954);
INSERT INTO salary VALUES(2014,'TBA','AL','priceda01',14000000);
INSERT INTO salary VALUES(2010,'TBA','AL','joycema01',406000);
INSERT INTO team_half VALUES(1981,'AL','BAL',1,'E','N',2,54,31,23);
INSERT INTO team_half VALUES(1981,'AL','BAL',2,'E','N',4,51,28,23);
INSERT INTO team_half VALUES(1981,'AL','TEX',1,'W','N',2,55,33,22);
INSERT INTO team_half VALUES(1981,'AL','TEX',2,'W','N',3,50,24,26);
INSERT INTO team_half VALUES(1981,'AL','TOR',1,'E','N',7,58,16,42);
INSERT INTO team_half VALUES(1981,'AL','TOR',2,'E','N',6,48,21,27);
