CREATE TABLE country
(country_id BIGINT,
country_iso_code VARCHAR(1023),
country_name VARCHAR(1023));
INSERT INTO country VALUES(142,'CA','Canada');
INSERT INTO country VALUES(151,'DE','Germany');
INSERT INTO country VALUES(130,'AO','Angola');
INSERT INTO country VALUES(160,'FJ','Fiji');
INSERT INTO country VALUES(204,'RU','Russia');
INSERT INTO country VALUES(199,'PK','Pakistan');
INSERT INTO country VALUES(184,'LT','Lithuania');
INSERT INTO country VALUES(192,'NG','Nigeria');
INSERT INTO country VALUES(182,'KZ','Kazakhstan');
INSERT INTO country VALUES(145,'CM','Cameroon');
INSERT INTO country VALUES(178,'KE','Kenya');
INSERT INTO country VALUES(198,'PH','Philippines');
INSERT INTO country VALUES(167,'HU','Hungary');
INSERT INTO country VALUES(154,'DO','Dominican Republic');
INSERT INTO country VALUES(134,'AW','Aruba');
INSERT INTO country VALUES(144,'CL','Chile');
INSERT INTO country VALUES(135,'BA','Bosnia and Herzegovina');
INSERT INTO country VALUES(205,'SE','Sweden');
INSERT INTO country VALUES(200,'PL','Poland');
INSERT INTO country VALUES(164,'GR','Greece');
INSERT INTO country VALUES(181,'KR','South Korea');
INSERT INTO country VALUES(163,'GP','Guadaloupe');
INSERT INTO country VALUES(140,'BS','Bahamas');
INSERT INTO country VALUES(149,'CY','Cyprus');
INSERT INTO country VALUES(165,'GY','Guyana');
INSERT INTO country VALUES(206,'SG','Singapore');
INSERT INTO country VALUES(185,'LU','Luxembourg');
INSERT INTO country VALUES(212,'TW','Taiwan');
INSERT INTO country VALUES(207,'SI','Slovenia');
CREATE TABLE department
(department_id BIGINT,
department_name VARCHAR(1023));
INSERT INTO department VALUES(2,'Directing');
INSERT INTO department VALUES(3,'Production');
INSERT INTO department VALUES(11,'Lighting');
INSERT INTO department VALUES(8,'Costume & Make-Up');
INSERT INTO department VALUES(12,'Actors');
INSERT INTO department VALUES(5,'Editing');
INSERT INTO department VALUES(4,'Writing');
INSERT INTO department VALUES(6,'Sound');
INSERT INTO department VALUES(9,'Crew');
INSERT INTO department VALUES(1,'Camera');
INSERT INTO department VALUES(10,'Visual Effects');
INSERT INTO department VALUES(7,'Art');
CREATE TABLE gender
(gender_id BIGINT,
gender VARCHAR(1023));
INSERT INTO gender VALUES(2,'Male');
INSERT INTO gender VALUES(0,'Unspecified');
INSERT INTO gender VALUES(1,'Female');
CREATE TABLE genre
(genre_id BIGINT,
genre_name VARCHAR(1023));
INSERT INTO genre VALUES(10770,'TV Movie');
INSERT INTO genre VALUES(28,'Action');
INSERT INTO genre VALUES(9648,'Mystery');
INSERT INTO genre VALUES(878,'Science Fiction');
INSERT INTO genre VALUES(16,'Animation');
INSERT INTO genre VALUES(18,'Drama');
INSERT INTO genre VALUES(99,'Documentary');
INSERT INTO genre VALUES(10402,'Music');
INSERT INTO genre VALUES(53,'Thriller');
INSERT INTO genre VALUES(10751,'Family');
INSERT INTO genre VALUES(10749,'Romance');
INSERT INTO genre VALUES(14,'Fantasy');
INSERT INTO genre VALUES(80,'Crime');
INSERT INTO genre VALUES(12,'Adventure');
INSERT INTO genre VALUES(35,'Comedy');
INSERT INTO genre VALUES(37,'Western');
INSERT INTO genre VALUES(10752,'War');
INSERT INTO genre VALUES(10769,'Foreign');
INSERT INTO genre VALUES(36,'History');
INSERT INTO genre VALUES(27,'Horror');
CREATE TABLE keyword
(keyword_id BIGINT,
keyword_name VARCHAR(1023));
INSERT INTO keyword VALUES(3185,'crocodile');
INSERT INTO keyword VALUES(208394,'logician');
INSERT INTO keyword VALUES(8971,'oktoberfest');
INSERT INTO keyword VALUES(11578,'mobster');
INSERT INTO keyword VALUES(33358,'contraception');
INSERT INTO keyword VALUES(9923,'easter bunny');
INSERT INTO keyword VALUES(15149,'monkey');
INSERT INTO keyword VALUES(165288,'misogynist');
INSERT INTO keyword VALUES(160058,'moonshine');
INSERT INTO keyword VALUES(5485,'november');
INSERT INTO keyword VALUES(4392,'cage');
INSERT INTO keyword VALUES(162994,'expert marksman');
INSERT INTO keyword VALUES(4896,'wish');
INSERT INTO keyword VALUES(1544,'locomotive');
INSERT INTO keyword VALUES(3972,'simulated reality ');
INSERT INTO keyword VALUES(2390,'migraine');
INSERT INTO keyword VALUES(7939,'portal');
INSERT INTO keyword VALUES(168713,'neo-western');
INSERT INTO keyword VALUES(1209,'wales');
INSERT INTO keyword VALUES(161276,'anthropologist');
INSERT INTO keyword VALUES(4290,'toy');
INSERT INTO keyword VALUES(180492,'caste system');
INSERT INTO keyword VALUES(155242,'shogun');
INSERT INTO keyword VALUES(177895,'dark fantasy');
INSERT INTO keyword VALUES(192966,'passage of time');
INSERT INTO keyword VALUES(4108,'protest');
INSERT INTO keyword VALUES(2026,'lawnmower');
INSERT INTO keyword VALUES(190654,'russian spy');
INSERT INTO keyword VALUES(4455,'snail');
CREATE TABLE language
(language_id BIGINT,
language_code VARCHAR(1023),
language_name VARCHAR(1023));
INSERT INTO language VALUES(24615,'ko','ud55cuad6duc5b4/uc870uc120ub9d0');
INSERT INTO language VALUES(24606,'pl','Polski');
INSERT INTO language VALUES(24659,'bm','Bamanankan');
INSERT INTO language VALUES(24657,'te','u0c24u0c46u0c32u0c41u0c17u0c41');
INSERT INTO language VALUES(24701,'nb','Unknown');
INSERT INTO language VALUES(24632,'co','');
INSERT INTO language VALUES(24646,'bn','u09acu09beu0982u09b2u09be');
INSERT INTO language VALUES(24603,'th','u0e20u0e32u0e29u0e32u0e44u0e17u0e22');
INSERT INTO language VALUES(24633,'kw','');
INSERT INTO language VALUES(24649,'dz','');
INSERT INTO language VALUES(24638,'hy','');
INSERT INTO language VALUES(24595,'it','Italiano');
INSERT INTO language VALUES(24637,'iu','');
INSERT INTO language VALUES(24579,'fr','Franu00e7ais');
INSERT INTO language VALUES(24577,'xx','No Language');
INSERT INTO language VALUES(24607,'is','u00cdslenska');
INSERT INTO language VALUES(24594,'si','');
INSERT INTO language VALUES(24578,'ja','u65e5u672cu8a9e');
INSERT INTO language VALUES(24652,'ka','u10e5u10d0u10e0u10d7u10e3u10dau10d8');
INSERT INTO language VALUES(24641,'et','Eesti');
INSERT INTO language VALUES(24592,'he','u05e2u05b4u05d1u05b0u05e8u05b4u05d9u05ea');
INSERT INTO language VALUES(24601,'ur','u0627u0631u062fu0648');
INSERT INTO language VALUES(24610,'hi','u0939u093fu0928u094du0926u0940');
INSERT INTO language VALUES(24576,'de','Deutsch');
INSERT INTO language VALUES(24639,'am','');
INSERT INTO language VALUES(24580,'es','Espau00f1ol');
INSERT INTO language VALUES(24626,'sr','Srpski');
INSERT INTO language VALUES(24658,'ky','??????');
INSERT INTO language VALUES(24648,'st','');
CREATE TABLE language_role
(role_id BIGINT,
language_role VARCHAR(1023));
INSERT INTO language_role VALUES(1,'Original');
INSERT INTO language_role VALUES(2,'Spoken');
CREATE TABLE movie
(movie_id BIGINT,
title VARCHAR(1023),
budget BIGINT,
homepage VARCHAR(1023),
overview VARCHAR(1023),
popularity DOUBLE,
release_date DATE,
revenue BIGINT,
runtime BIGINT,
movie_status VARCHAR(1023),
tagline VARCHAR(1023),
vote_average DOUBLE,
vote_count BIGINT);
INSERT INTO movie VALUES(5854,'Family Plot',2000000,'','Lighthearted suspense film about a phony psychic/con artist and her taxi driver/private investigator boyfriend who encounter a pair of serial kidnappers while trailing a missing heir in California.',3.832857999999999877,'1976-04-09',7900000,121,'Released','There’s no body in the family plot.',6.700000000000000177,86);
INSERT INTO movie VALUES(29996,'Solomon and Sheba',5000000,'','Under the rule of King David, Israel is united and prosperous although surrounded by enemies including Egypt and its allies. The aging King David favors his younger son, Solomon, as his successor, but David''s  elder son Prince Adonijah, a warrior, declare',0.8356170000000000542,'1959-12-25',12200000,139,'Released','Only once in 3000 years...anything like...',5.400000000000000355,8);
INSERT INTO movie VALUES(39939,'Super Troopers',3000000,'http://www.brokenlizard.com/','Five bored, occasionally high and always ineffective Vermont state troopers must prove their worth to the governor or lose their jobs. After stumbling on a drug ring, they plan to make a bust, but a rival police force is out to steal the glory.',16.31280299999999884,'2001-01-18',18492362,100,'Released','',6.599999999999999645,362);
INSERT INTO movie VALUES(11208,'Wicker Park',30000000,'','Matthew, a young advertising executive in Chicago, puts his life and a business trip to China on hold when he thinks he sees Lisa, the love of his life who left him without a word two years earlier, walking out of a restaurant one day.',9.30156200000000055,'2004-09-03',13001257,114,'Released','Passion never dies.',6.700000000000000177,157);
INSERT INTO movie VALUES(1930,'The Amazing Spider-Man',215000000,'http://www.theamazingspiderman.com','Peter Parker is an outcast high schooler abandoned by his parents as a boy, leaving him to be raised by his Uncle Ben and Aunt May. Like most teenagers, Peter is trying to figure out who he is and how he got to be the person he is today. As Peter discover',89.86627599999999916,'2012-06-27',752215857,136,'Released','The untold story begins.',6.5,6586);
INSERT INTO movie VALUES(10218,'Swingers',200000,'','This is a story about Mike, a guy who left his girl in New York when he came to LA to be a star. It''s been six months since his girlfriend left him and he''s not doing so good. So, his pal and some other friends try and get him back in the social scene and',13.97167400000000014,'1996-10-18',4505922,94,'Released','Cocktails first. Questions later.',6.799999999999999823,253);
INSERT INTO movie VALUES(810,'Shrek the Third',160000000,'http://www.shrekthethird.com/flash/index.html','The King of Far Far Away has died and Shrek and Fiona are to become King &amp; Queen. However, Shrek wants to return to his cozy swamp and live in peace and quiet, so when he finds out there is another heir to the throne, they set off to bring him back to',42.98646699999999755,'2007-05-17',798958165,93,'Released','Who''s ready for Thirds?',6.0,2278);
INSERT INTO movie VALUES(577,'To Die For',20000000,'','Susan wants to work in television and will therefore do anything it takes, even if it means killing her husband. A very dark comedy from independent director Gus Van Sant with a brilliant Nicole Kidman in the leading role.',12.30971500000000062,'1995-05-20',21284514,106,'Released','All she wanted was a little attention.',6.700000000000000177,175);
INSERT INTO movie VALUES(85,'Raiders of the Lost Ark',18000000,'http://www.indianajones.com','When Dr. Indiana Jones – the tweed-suited professor who just happens to be a celebrated archaeologist – is hired by the government to locate the legendary Ark of the Covenant, he finds himself up against the entire Nazi regime.',68.1595959999999934,'1981-06-12',389925971,115,'Released','Indiana Jones - the new hero from the creators of JAWS and STAR WARS.',7.700000000000000177,3854);
INSERT INTO movie VALUES(13816,'Idlewild',0,'','A musical set in the Prohibition-era American South, where a speakeasy performer and club manager Rooster must contend with gangsters who have their eyes on the club while his piano player and partner Percival must choose between his love, Angel or his ob',2.711955000000000115,'2006-08-25',0,121,'Released','',5.099999999999999645,17);
INSERT INTO movie VALUES(7870,'Down in the Valley',8000000,'http://www.downinthevalleyfilm.com/main.htm','On a trip to the beach, a teenage girl named Tobe meets a charismatic stranger named Harlan, who dresses like a cowboy and claims to be a former ranch hand. The pair feel an instant attraction and begin a relationship, but her father, a lawman, is suspici',7.433574000000000125,'2005-05-13',852872,112,'Released','Sometimes it''s hard to find your way.',5.900000000000000355,63);
INSERT INTO movie VALUES(440,'Aliens vs Predator: Requiem',40000000,'http://www.avp-r.com/','A sequel to 2004''s Alien vs. Predator, the iconic creatures from two of the scariest film franchises in movie history wage their most brutal battle ever - in our own backyard. The small town of Gunnison, Colorado becomes a war zone between two of the dead',39.38191299999999728,'2007-12-25',41797066,94,'Released','The Last Place On Earth We Want To Be Is In The Middle',4.900000000000000355,740);
INSERT INTO movie VALUES(168259,'Furious 7',190000000,'http://www.furious7.com/','Deckard Shaw seeks revenge against Dominic Toretto and his family for his comatose brother.',102.3222169999999949,'2015-04-01',1506249360,137,'Released','Vengeance Hits Home',7.299999999999999823,4176);
INSERT INTO movie VALUES(841,'Dune',40000000,'','In the year 10,191, the world is at war for control of the desert planet Dune – the only place where the time-travel substance ''Spice'' can be found. But when one leader gives up control, it''s only so he can stage a coup with some unsavory characters.',25.87658199999999909,'1984-12-14',30925690,137,'Released','A world beyond your experience, beyond your imagination.',6.5,562);
INSERT INTO movie VALUES(22597,'The Broken Hearts Club: A Romantic Comedy',1000000,'','A group of friends search for fun, love and ultimately themselves in West Hollywood. This movie is an entertaining, and sometimes cynical look into the lives of six gay men trying to come to terms with what being gay and single (or gay and partnered) mean',3.424157999999999813,'2000-02-01',1744858,94,'Released','',6.299999999999999823,25);
INSERT INTO movie VALUES(72431,'Red Tails',58000000,'http://www.redtails2012.com/','The story of the Tuskegee Airmen, the first African-American pilots to fly in a combat squadron during World War II.',12.29603000000000001,'2012-01-19',50365377,125,'Released','High-Octane Action and Daring Dogfights!',5.900000000000000355,178);
INSERT INTO movie VALUES(9473,'South Park: Bigger, Longer & Uncut',21000000,'','When the four boys see an R-rated movie featuring Canadians Terrance and Philip, they are pronounced "corrupted", and their parents pressure the United States to wage war against Canada.',27.19779899999999984,'1999-06-30',0,81,'Released','UH-OH.',7.099999999999999645,893);
INSERT INTO movie VALUES(52067,'Cedar Rapids',0,'http://www.foxsearchlight.com/cedarrapids/','A naive Midwesterner insurance salesman travels to a big-city convention in an effort to save the jobs of his co-workers.',10.25480699999999957,'2011-02-11',6861102,87,'Released','Today is the first day... of the rest of his weekend.',5.900000000000000355,135);
INSERT INTO movie VALUES(246655,'X-Men: Apocalypse',178000000,'http://www.foxmovies.com/movies/x-men-apocalypse','After the re-emergence of the world''s first mutant, world-destroyer Apocalypse, the X-Men must unite to defeat his extinction level plan.',139.2720419999999991,'2016-05-18',543934787,144,'Released','Only the strong will survive',6.400000000000000355,4721);
INSERT INTO movie VALUES(274167,'Daddy''s Home',50000000,'http://daddyshomemovie.tumblr.com/','The story of a mild-mannered radio executive (Ferrell) who strives to become the best stepdad ever to his wife''s two children, but complications ensue when their freewheeling, freeloading real father arrives, forcing stepdad to compete for the affection o',38.61674399999999707,'2015-12-25',242786137,96,'Released','Choose your Daddy',5.799999999999999823,854);
INSERT INTO movie VALUES(3050,'Doctor Dolittle',71000000,'','A successful physician and devoted family man, John Dolittle (Eddie Murphy) seems to have the world by the tail, until a long suppressed talent he possessed as a child, the ability to communicate with animals is suddenly reawakened with a vengeance! Now e',21.46293500000000166,'1998-06-22',294456605,85,'Released','He doesn''t just talk to the animals!',5.400000000000000355,686);
INSERT INTO movie VALUES(1443,'The Virgin Suicides',6000000,'http://www.paramountvantage.com/virginsuicides/html_3/','A group of male friends become obsessed with five mysterious sisters who are sheltered by their strict, religious parents.',26.21891199999999956,'1999-04-21',10409377,97,'Released','Beautiful, mysterious, haunting, invariably fatal. Just like life.',7.099999999999999645,817);
INSERT INTO movie VALUES(44943,'Battle: Los Angeles',70000000,'http://www.battlela.com','The Earth is attacked by unknown forces. As people everywhere watch the world''s great cities fall, Los Angeles becomes the last stand for mankind in a battle no one expected. It''s up to a Marine staff sergeant and his new platoon to draw a line in the san',49.19923399999999703,'2011-03-08',202466756,116,'Released','It''s not war. It''s survival.',5.5,1448);
INSERT INTO movie VALUES(55831,'Boynton Beach Club',0,'','A handful of men and women of a certain age pick up the pieces of their lives and look for new love after the loss of their mates in this comedy drama from writer-director Susan Seidelman.',0.18887000000000001,'2005-08-05',0,105,'Released','',6.799999999999999823,3);
INSERT INTO movie VALUES(168672,'American Hustle',40000000,'http://www.americanhustle-movie.com/','A con man, Irving Rosenfeld, along with his seductive partner Sydney Prosser, is forced to work for a wild FBI agent, Richie DiMaso, who pushes them into a world of Jersey powerbrokers and mafia.',49.66412799999999806,'2013-12-12',251171807,138,'Released','Everyone Hustles To Survive',6.799999999999999823,2807);
INSERT INTO movie VALUES(27329,'สุริโยไท',0,'','During the 16th century, as Thailand contends with both a civil war and Burmese invasion, a beautiful princess rises up to help protect the glory of the Kingdom of Ayothaya. Based on the life of Queen Suriyothai.',0.8430670000000000108,'2001-08-17',0,185,'Released','',5.099999999999999645,6);
INSERT INTO movie VALUES(49538,'X-Men: First Class',160000000,'http://www.x-menfirstclassmovie.com/','Before Charles Xavier and Erik Lensherr took the names Professor X and Magneto, they were two young men discovering their powers for the first time. Before they were arch-enemies, they were closest of friends, working together with other mutants (some fam',3.19517400000000018,'2011-05-24',353624124,132,'Released','Witness the moment that will change our world.',7.099999999999999645,5181);
INSERT INTO movie VALUES(15699,'Opal Dream',5000000,'','Pobby &amp; Dingan are invisible. They live in an opal town in Australia and are friends with Kellyanne, the 9 year-old daughter of an opal miner. The film tells the story of the bizarre and inexplicable disappearance of Pobby &amp; Dingan, Kellyanne''s im',1.458884000000000069,'2006-11-22',140666,86,'Released','',6.099999999999999645,7);
INSERT INTO movie VALUES(42188,'Never Let Me Go',15000000,'http://www.foxsearchlight.com/neverletmego/','As children, Kathy, Ruth, and Tommy spend their childhood at an idyllic and secluded English boarding school. As they grow into adults, they must come to terms with the complexity and strength of their love for one another while also preparing for the hau',30.98339700000000007,'2010-09-15',9455232,104,'Released','These students have everything they need. Except time.',6.799999999999999823,737);
CREATE TABLE movie_genres
(movie_id BIGINT,
genre_id BIGINT);
INSERT INTO movie_genres VALUES(127918,99);
INSERT INTO movie_genres VALUES(1415,80);
INSERT INTO movie_genres VALUES(152747,12);
INSERT INTO movie_genres VALUES(193,28);
INSERT INTO movie_genres VALUES(109424,18);
INSERT INTO movie_genres VALUES(257344,878);
INSERT INTO movie_genres VALUES(55616,27);
INSERT INTO movie_genres VALUES(22597,18);
INSERT INTO movie_genres VALUES(167,18);
INSERT INTO movie_genres VALUES(10336,53);
INSERT INTO movie_genres VALUES(8699,35);
INSERT INTO movie_genres VALUES(361398,35);
INSERT INTO movie_genres VALUES(319910,18);
INSERT INTO movie_genres VALUES(9361,18);
INSERT INTO movie_genres VALUES(52520,14);
INSERT INTO movie_genres VALUES(60304,28);
INSERT INTO movie_genres VALUES(20504,878);
INSERT INTO movie_genres VALUES(146238,80);
INSERT INTO movie_genres VALUES(11775,10749);
INSERT INTO movie_genres VALUES(11971,35);
INSERT INTO movie_genres VALUES(10117,28);
INSERT INTO movie_genres VALUES(3132,53);
INSERT INTO movie_genres VALUES(5852,53);
INSERT INTO movie_genres VALUES(754,53);
INSERT INTO movie_genres VALUES(1698,53);
INSERT INTO movie_genres VALUES(2057,9648);
INSERT INTO movie_genres VALUES(27551,14);
INSERT INTO movie_genres VALUES(6519,28);
INSERT INTO movie_genres VALUES(137321,9648);
CREATE TABLE movie_languages
(movie_id BIGINT,
language_id BIGINT,
language_role_id BIGINT);
INSERT INTO movie_languages VALUES(174362,24574,1);
INSERT INTO movie_languages VALUES(347548,24574,1);
INSERT INTO movie_languages VALUES(50725,24574,2);
INSERT INTO movie_languages VALUES(32274,24574,2);
INSERT INTO movie_languages VALUES(198184,24574,2);
INSERT INTO movie_languages VALUES(14538,24574,1);
INSERT INTO movie_languages VALUES(44555,24587,1);
INSERT INTO movie_languages VALUES(13403,24574,1);
INSERT INTO movie_languages VALUES(68412,24574,2);
INSERT INTO movie_languages VALUES(810,24579,2);
INSERT INTO movie_languages VALUES(13370,24574,1);
INSERT INTO movie_languages VALUES(16016,24602,2);
INSERT INTO movie_languages VALUES(6961,24574,2);
INSERT INTO movie_languages VALUES(11889,24574,2);
INSERT INTO movie_languages VALUES(73937,24574,1);
INSERT INTO movie_languages VALUES(59968,24574,2);
INSERT INTO movie_languages VALUES(13501,24574,2);
INSERT INTO movie_languages VALUES(19255,24574,1);
INSERT INTO movie_languages VALUES(238615,24574,2);
INSERT INTO movie_languages VALUES(26837,24574,1);
INSERT INTO movie_languages VALUES(19724,24574,1);
INSERT INTO movie_languages VALUES(346,24578,1);
INSERT INTO movie_languages VALUES(9986,24574,1);
INSERT INTO movie_languages VALUES(11679,24574,2);
INSERT INTO movie_languages VALUES(857,24574,1);
INSERT INTO movie_languages VALUES(1544,24574,2);
INSERT INTO movie_languages VALUES(2074,24574,2);
INSERT INTO movie_languages VALUES(10478,24574,1);
INSERT INTO movie_languages VALUES(503,24580,2);
CREATE TABLE person
(person_id BIGINT,
person_name VARCHAR(1023));
INSERT INTO person VALUES(106370,'Jeff Bowser');
INSERT INTO person VALUES(1427380,'Liam Ford');
INSERT INTO person VALUES(1464018,'Javier Bilbao');
INSERT INTO person VALUES(29715,'David Swift');
INSERT INTO person VALUES(979671,'Thanh Nguyen');
INSERT INTO person VALUES(6692,'Caroline Goodall');
INSERT INTO person VALUES(1220107,'Annabel Mullion');
INSERT INTO person VALUES(210815,'Cindy Chiu');
INSERT INTO person VALUES(1184221,'Derrick Hinman');
INSERT INTO person VALUES(76112,'Steve Wiebe');
INSERT INTO person VALUES(1674935,'Kes Kwansa');
INSERT INTO person VALUES(6802,'Karyn Wagner');
INSERT INTO person VALUES(137482,'Morgan Jurgenson');
INSERT INTO person VALUES(1539839,'Georges Pierre');
INSERT INTO person VALUES(1956,'Cherry Jones');
INSERT INTO person VALUES(3977,'Joe Morton');
INSERT INTO person VALUES(1577061,'Jill Allanson');
INSERT INTO person VALUES(1825605,'Sofia Monroe');
INSERT INTO person VALUES(1784609,'Vanessa Ryan');
INSERT INTO person VALUES(1765384,'Jon Cecka');
INSERT INTO person VALUES(1391429,'Christina Yim');
INSERT INTO person VALUES(12427,'Alexander Lockwood');
INSERT INTO person VALUES(1647993,'Albert Cho');
INSERT INTO person VALUES(1291809,'Jean-Marie Paris');
INSERT INTO person VALUES(87056,'Khamani Griffin');
INSERT INTO person VALUES(1398621,'Jalen Testerman');
INSERT INTO person VALUES(213214,'Hugo Becker');
INSERT INTO person VALUES(1320470,'Madison Leisle');
INSERT INTO person VALUES(1407677,'Andrea Dardea Tesdall');
CREATE TABLE movie_crew
(movie_id BIGINT,
person_id BIGINT,
department_id BIGINT,
job VARCHAR(1023));
INSERT INTO movie_crew VALUES(9760,35734,2,'Director');
INSERT INTO movie_crew VALUES(158852,5338,6,'Sound Designer');
INSERT INTO movie_crew VALUES(581,102231,10,'Visual Effects');
INSERT INTO movie_crew VALUES(2290,23617,8,'Makeup Artist');
INSERT INTO movie_crew VALUES(500,1878559,9,'Driver');
INSERT INTO movie_crew VALUES(9441,7231,5,'Editor');
INSERT INTO movie_crew VALUES(64689,20567,3,'Executive Producer');
INSERT INTO movie_crew VALUES(68734,1400531,7,'Leadman');
INSERT INTO movie_crew VALUES(4824,1023593,1,'Still Photographer');
INSERT INTO movie_crew VALUES(68734,958488,8,'Costume Design');
INSERT INTO movie_crew VALUES(189,20490,8,'Costume Design');
INSERT INTO movie_crew VALUES(9532,1425328,5,'First Assistant Editor');
INSERT INTO movie_crew VALUES(256092,78217,4,'Writer');
INSERT INTO movie_crew VALUES(6877,46076,2,'Director');
INSERT INTO movie_crew VALUES(10764,4061,8,'Costume Design');
INSERT INTO movie_crew VALUES(41402,32278,4,'Screenplay');
INSERT INTO movie_crew VALUES(122081,51918,2,'Director');
INSERT INTO movie_crew VALUES(39538,10684,3,'Executive Producer');
INSERT INTO movie_crew VALUES(8698,91775,6,'Music Programmer');
INSERT INTO movie_crew VALUES(110415,69943,4,'Original Story');
INSERT INTO movie_crew VALUES(11866,1734657,10,'3D Artist');
INSERT INTO movie_crew VALUES(9353,70851,3,'Producer');
INSERT INTO movie_crew VALUES(299145,774,2,'Director');
INSERT INTO movie_crew VALUES(11015,1569122,4,'Storyboard');
INSERT INTO movie_crew VALUES(1792,1589,6,'Original Music Composer');
INSERT INTO movie_crew VALUES(29920,1428534,6,'Sound Designer');
INSERT INTO movie_crew VALUES(14161,1327763,3,'Casting');
INSERT INTO movie_crew VALUES(12658,5328,3,'Casting');
INSERT INTO movie_crew VALUES(228066,1574071,9,'CG Supervisor');
CREATE TABLE production_company
(company_id BIGINT,
company_name VARCHAR(1023));
INSERT INTO production_company VALUES(23486,'Sienna Films');
INSERT INTO production_company VALUES(7739,'UW3 Film Productions');
INSERT INTO production_company VALUES(73316,'Vengeance is Mine Productions');
INSERT INTO production_company VALUES(11,'WingNut Films');
INSERT INTO production_company VALUES(12214,'Munich Film Partners New Century & Company (MFP) Core Productions');
INSERT INTO production_company VALUES(1996,'Novo RPI');
INSERT INTO production_company VALUES(11728,'Camelot Pictures');
INSERT INTO production_company VALUES(185,'Pandora Cinema');
INSERT INTO production_company VALUES(37826,'Studio Babelsberg Motion Pictures');
INSERT INTO production_company VALUES(4051,'Warner Brothers/Seven Arts');
INSERT INTO production_company VALUES(57736,'Codi S.p.a.');
INSERT INTO production_company VALUES(7294,'Reliance Entertainment');
INSERT INTO production_company VALUES(7378,'Magical Elves Productions');
INSERT INTO production_company VALUES(1420,'ContentFilm');
INSERT INTO production_company VALUES(85165,'Miracle Entertainment');
INSERT INTO production_company VALUES(26476,'Cubica');
INSERT INTO production_company VALUES(4621,'Gu00e9bu00e9ka Films');
INSERT INTO production_company VALUES(25121,'MVL Incredible Productions');
INSERT INTO production_company VALUES(25876,'Headshot Films');
INSERT INTO production_company VALUES(7480,'Comedy Central Films');
INSERT INTO production_company VALUES(27593,'Lenfilm Studio');
INSERT INTO production_company VALUES(10698,'John Ford Productions');
INSERT INTO production_company VALUES(12138,'Fierce Entertainment');
INSERT INTO production_company VALUES(11261,'M6');
INSERT INTO production_company VALUES(728,'Kalkaska Productions');
INSERT INTO production_company VALUES(23446,'Sofica Sofinergie 5');
INSERT INTO production_company VALUES(11392,'Ebeling Group');
INSERT INTO production_company VALUES(48197,'Multitrade');
INSERT INTO production_company VALUES(73666,'Covert Media');
CREATE TABLE production_country
(movie_id BIGINT,
country_id BIGINT);
INSERT INTO production_country VALUES(603,133);
INSERT INTO production_country VALUES(10468,214);
INSERT INTO production_country VALUES(9787,214);
INSERT INTO production_country VALUES(2786,161);
INSERT INTO production_country VALUES(12088,133);
INSERT INTO production_country VALUES(15067,181);
INSERT INTO production_country VALUES(18925,214);
INSERT INTO production_country VALUES(10385,214);
INSERT INTO production_country VALUES(1913,174);
INSERT INTO production_country VALUES(168705,214);
INSERT INTO production_country VALUES(360339,191);
INSERT INTO production_country VALUES(3635,185);
INSERT INTO production_country VALUES(9350,174);
INSERT INTO production_country VALUES(1985,151);
INSERT INTO production_country VALUES(12779,174);
INSERT INTO production_country VALUES(10133,214);
INSERT INTO production_country VALUES(8195,214);
INSERT INTO production_country VALUES(235,214);
INSERT INTO production_country VALUES(12093,152);
INSERT INTO production_country VALUES(4248,142);
INSERT INTO production_country VALUES(245,162);
INSERT INTO production_country VALUES(300673,214);
INSERT INTO production_country VALUES(14022,214);
INSERT INTO production_country VALUES(9334,151);
INSERT INTO production_country VALUES(68721,214);
INSERT INTO production_country VALUES(215211,136);
INSERT INTO production_country VALUES(9383,151);
INSERT INTO production_country VALUES(134371,214);
INSERT INTO production_country VALUES(42057,162);
CREATE TABLE movie_cast
(movie_id BIGINT,
person_id BIGINT,
character_name VARCHAR(1023),
gender_id BIGINT,
cast_order BIGINT);
INSERT INTO movie_cast VALUES(667,10068,'Aki',1,1);
INSERT INTO movie_cast VALUES(280,1100,'The Terminator',2,0);
INSERT INTO movie_cast VALUES(13908,1215262,'Rex',0,14);
INSERT INTO movie_cast VALUES(2252,43555,'Azim',0,8);
INSERT INTO movie_cast VALUES(2841,1682977,'La prostituu00e9e du cafu00e9',0,36);
INSERT INTO movie_cast VALUES(865,5050,'William Laughlin',0,3);
INSERT INTO movie_cast VALUES(671,11184,'Goblin Bank Teller / Filius Flitwick',2,15);
INSERT INTO movie_cast VALUES(10673,1041787,'Janet',1,50);
INSERT INTO movie_cast VALUES(18239,39391,'Laurent Da Revin',2,10);
INSERT INTO movie_cast VALUES(12120,16165,'Ron Mills',2,2);
INSERT INTO movie_cast VALUES(770,1468840,'Melanie''s Son',0,102);
INSERT INTO movie_cast VALUES(1895,33184,'Captain Antilles',2,29);
INSERT INTO movie_cast VALUES(1497,1356291,'Parlor Owner',0,15);
INSERT INTO movie_cast VALUES(28,9893,'Roxanne Sarrault',1,35);
INSERT INTO movie_cast VALUES(19959,1802037,'Female Newscaster',0,24);
INSERT INTO movie_cast VALUES(9352,20259,'Anna',1,18);
INSERT INTO movie_cast VALUES(745,1455909,'Visitor #3',1,17);
INSERT INTO movie_cast VALUES(2789,118459,'Irgun',2,12);
INSERT INTO movie_cast VALUES(10528,19901,'Captain Tanner',2,12);
INSERT INTO movie_cast VALUES(18785,1265873,'Private School Student (uncredited)',0,71);
INSERT INTO movie_cast VALUES(9839,100650,'Strauss',2,35);
INSERT INTO movie_cast VALUES(24575,12518,'Dirk Pitt',2,1);
INSERT INTO movie_cast VALUES(9895,60096,'Grimaldi',2,19);
INSERT INTO movie_cast VALUES(11692,1039,'Rowland',2,6);
INSERT INTO movie_cast VALUES(10661,17494,'Homeless Guy',2,53);
INSERT INTO movie_cast VALUES(15237,15852,'Linda Porter',1,1);
INSERT INTO movie_cast VALUES(1726,150669,'CAOC Analyst',2,61);
INSERT INTO movie_cast VALUES(23631,122416,'Tristana',0,11);
INSERT INTO movie_cast VALUES(773,5151,'Nancy Jenkins',1,7);
CREATE TABLE movie_keywords
(movie_id BIGINT,
keyword_id BIGINT);
INSERT INTO movie_keywords VALUES(951,853);
INSERT INTO movie_keywords VALUES(225235,6054);
INSERT INTO movie_keywords VALUES(82675,5733);
INSERT INTO movie_keywords VALUES(46146,3593);
INSERT INTO movie_keywords VALUES(5925,1956);
INSERT INTO movie_keywords VALUES(19995,10148);
INSERT INTO movie_keywords VALUES(82703,157894);
INSERT INTO movie_keywords VALUES(693,591);
INSERT INTO movie_keywords VALUES(680,11436);
INSERT INTO movie_keywords VALUES(32856,2382);
INSERT INTO movie_keywords VALUES(9495,11363);
INSERT INTO movie_keywords VALUES(8913,2551);
INSERT INTO movie_keywords VALUES(19901,9855);
INSERT INTO movie_keywords VALUES(41730,166974);
INSERT INTO movie_keywords VALUES(89861,131);
INSERT INTO movie_keywords VALUES(2989,211505);
INSERT INTO movie_keywords VALUES(277,1552);
INSERT INTO movie_keywords VALUES(2907,6464);
INSERT INTO movie_keywords VALUES(1523,7606);
INSERT INTO movie_keywords VALUES(10398,217324);
INSERT INTO movie_keywords VALUES(809,2676);
INSERT INTO movie_keywords VALUES(14425,171703);
INSERT INTO movie_keywords VALUES(9718,161643);
INSERT INTO movie_keywords VALUES(43347,9673);
INSERT INTO movie_keywords VALUES(4912,18107);
INSERT INTO movie_keywords VALUES(12106,10950);
INSERT INTO movie_keywords VALUES(8386,171252);
INSERT INTO movie_keywords VALUES(44945,179431);
INSERT INTO movie_keywords VALUES(10647,170365);
CREATE TABLE movie_company
(movie_id BIGINT,
company_id BIGINT);
INSERT INTO movie_company VALUES(49524,333);
INSERT INTO movie_company VALUES(127585,306);
INSERT INTO movie_company VALUES(990,306);
INSERT INTO movie_company VALUES(14451,23682);
INSERT INTO movie_company VALUES(10069,158);
INSERT INTO movie_company VALUES(72559,6277);
INSERT INTO movie_company VALUES(72105,8789);
INSERT INTO movie_company VALUES(142132,236);
INSERT INTO movie_company VALUES(29461,2923);
INSERT INTO movie_company VALUES(813,4);
INSERT INTO movie_company VALUES(11042,18367);
INSERT INTO movie_company VALUES(25376,6458);
INSERT INTO movie_company VALUES(153158,5517);
INSERT INTO movie_company VALUES(283708,5358);
INSERT INTO movie_company VALUES(189,14);
INSERT INTO movie_company VALUES(10992,1757);
INSERT INTO movie_company VALUES(53256,7025);
INSERT INTO movie_company VALUES(239566,13);
INSERT INTO movie_company VALUES(2310,2265);
INSERT INTO movie_company VALUES(7973,208);
INSERT INTO movie_company VALUES(11954,559);
INSERT INTO movie_company VALUES(1989,839);
INSERT INTO movie_company VALUES(6687,12371);
INSERT INTO movie_company VALUES(14844,2979);
INSERT INTO movie_company VALUES(288980,52859);
INSERT INTO movie_company VALUES(137106,4081);
INSERT INTO movie_company VALUES(1402,7295);
INSERT INTO movie_company VALUES(264644,41077);
INSERT INTO movie_company VALUES(51588,2201);
