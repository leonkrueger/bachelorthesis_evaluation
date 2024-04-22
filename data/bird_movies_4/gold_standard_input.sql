CREATE TABLE `country`
(`country_id` BIGINT,
`country_iso_code` VARCHAR(1023),
`country_name` VARCHAR(1023));
INSERT INTO `country` VALUES(139,'BR','Brazil');
INSERT INTO `country` VALUES(173,'IS','Iceland');
INSERT INTO `country` VALUES(211,'TR','Turkey');
INSERT INTO `country` VALUES(134,'AW','Aruba');
INSERT INTO `country` VALUES(182,'KZ','Kazakhstan');
INSERT INTO `country` VALUES(213,'UA','Ukraine');
INSERT INTO `country` VALUES(176,'JO','Jordan');
INSERT INTO `country` VALUES(162,'GB','United Kingdom');
INSERT INTO `country` VALUES(146,'CN','China');
INSERT INTO `country` VALUES(201,'PT','Portugal');
INSERT INTO `country` VALUES(175,'JM','Jamaica');
INSERT INTO `country` VALUES(132,'AT','Austria');
INSERT INTO `country` VALUES(129,'AF','Afghanistan');
INSERT INTO `country` VALUES(160,'FJ','Fiji');
CREATE TABLE `department`
(`department_id` BIGINT,
`department_name` VARCHAR(1023));
INSERT INTO `department` VALUES(4,'Writing');
INSERT INTO `department` VALUES(12,'Actors');
INSERT INTO `department` VALUES(2,'Directing');
INSERT INTO `department` VALUES(10,'Visual Effects');
INSERT INTO `department` VALUES(9,'Crew');
INSERT INTO `department` VALUES(8,'Costume & Make-Up');
INSERT INTO `department` VALUES(1,'Camera');
INSERT INTO `department` VALUES(5,'Editing');
INSERT INTO `department` VALUES(3,'Production');
INSERT INTO `department` VALUES(6,'Sound');
INSERT INTO `department` VALUES(11,'Lighting');
INSERT INTO `department` VALUES(7,'Art');
CREATE TABLE `gender`
(`gender_id` BIGINT,
`gender` VARCHAR(1023));
INSERT INTO `gender` VALUES(0,'Unspecified');
INSERT INTO `gender` VALUES(1,'Female');
INSERT INTO `gender` VALUES(2,'Male');
CREATE TABLE `genre`
(`genre_id` BIGINT,
`genre_name` VARCHAR(1023));
INSERT INTO `genre` VALUES(80,'Crime');
INSERT INTO `genre` VALUES(10752,'War');
INSERT INTO `genre` VALUES(27,'Horror');
INSERT INTO `genre` VALUES(10402,'Music');
INSERT INTO `genre` VALUES(10770,'TV Movie');
INSERT INTO `genre` VALUES(12,'Adventure');
INSERT INTO `genre` VALUES(14,'Fantasy');
INSERT INTO `genre` VALUES(9648,'Mystery');
INSERT INTO `genre` VALUES(16,'Animation');
INSERT INTO `genre` VALUES(53,'Thriller');
INSERT INTO `genre` VALUES(10749,'Romance');
INSERT INTO `genre` VALUES(37,'Western');
INSERT INTO `genre` VALUES(10769,'Foreign');
INSERT INTO `genre` VALUES(10751,'Family');
CREATE TABLE `keyword`
(`keyword_id` BIGINT,
`keyword_name` VARCHAR(1023));
INSERT INTO `keyword` VALUES(14988,'asian');
INSERT INTO `keyword` VALUES(227860,'turbo intercepter');
INSERT INTO `keyword` VALUES(168763,'suv');
INSERT INTO `keyword` VALUES(7947,'war of independence');
INSERT INTO `keyword` VALUES(6100,'tools');
INSERT INTO `keyword` VALUES(18514,'death of family');
INSERT INTO `keyword` VALUES(14658,'drug trade');
INSERT INTO `keyword` VALUES(2326,'alibi');
INSERT INTO `keyword` VALUES(2381,'wedding planer');
INSERT INTO `keyword` VALUES(9229,'grandparents');
INSERT INTO `keyword` VALUES(10617,'disaster');
INSERT INTO `keyword` VALUES(171329,'silent man');
INSERT INTO `keyword` VALUES(6476,'toy shop');
INSERT INTO `keyword` VALUES(2295,'eastern block');
CREATE TABLE `language`
(`language_id` BIGINT,
`language_code` VARCHAR(1023),
`language_name` VARCHAR(1023));
INSERT INTO `language` VALUES(24590,'cn','u5e7fu5ddeu8bdd / u5ee3u5ddeu8a71');
INSERT INTO `language` VALUES(24646,'bn','u09acu09beu0982u09b2u09be');
INSERT INTO `language` VALUES(24580,'es','Espau00f1ol');
INSERT INTO `language` VALUES(24600,'fa','u0641u0627u0631u0633u06cc');
INSERT INTO `language` VALUES(24609,'pa','u0a2au0a70u0a1cu0a3eu0a2cu0a40');
INSERT INTO `language` VALUES(24629,'hr','Hrvatski');
INSERT INTO `language` VALUES(24581,'ar','u0627u0644u0639u0631u0628u064au0629');
INSERT INTO `language` VALUES(24586,'el','u03b5u03bbu03bbu03b7u03bdu03b9u03bau03ac');
INSERT INTO `language` VALUES(24621,'af','Afrikaans');
INSERT INTO `language` VALUES(24589,'ga','Gaeilge');
INSERT INTO `language` VALUES(24647,'ny','');
INSERT INTO `language` VALUES(24605,'sq','shqip');
INSERT INTO `language` VALUES(24625,'ca','Catalu00e0');
INSERT INTO `language` VALUES(24603,'th','u0e20u0e32u0e29u0e32u0e44u0e17u0e22');
CREATE TABLE `language_role`
(`role_id` BIGINT,
`language_role` VARCHAR(1023));
INSERT INTO `language_role` VALUES(2,'Spoken');
INSERT INTO `language_role` VALUES(1,'Original');
CREATE TABLE `movie`
(`movie_id` BIGINT,
`title` VARCHAR(1023),
`budget` BIGINT,
`homepage` VARCHAR(1023),
`overview` VARCHAR(1023),
`popularity` DOUBLE,
`release_date` DATE,
`revenue` BIGINT,
`runtime` BIGINT,
`movie_status` VARCHAR(1023),
`tagline` VARCHAR(1023),
`vote_average` DOUBLE,
`vote_count` BIGINT);
INSERT INTO `movie` VALUES(584,'2 Fast 2 Furious',76000000,'','It''s a major double-cross when former police officer Brian O''Conner teams up with his ex-con buddy Roman Pearce to transport a shipment of "dirty" money for shady Miami-based import-export dealer Carter Verone. But the guys are actually working with under',10.52096099999999979,'2003-06-05',236350661,107,'Released','How Fast Do You Want It?',6.200000000000000177,2028);
INSERT INTO `movie` VALUES(951,'Kindergarten Cop',15000000,'','Hard-edged cop John Kimble gets more than he bargained for when he goes undercover as a kindergarten teacher to get the goods on a brutal drug lord while at the same time protecting the man''s young son. Pitted against a class of boisterous moppets whose a',5.411153999999999798,'1990-12-21',201957688,111,'Released','Go ahead, you tell him you didn''t do your homework.',5.799999999999999823,628);
INSERT INTO `movie` VALUES(7913,'Rang De Basanti',2200000,'','A young idealistic English filmmaker, Sue, arrives in India to make a film on Indian revolutionaries Bhagat Singh, Chandrashekhar Azad and their contemporaries and their fight for freedom from the British Raj. Owing to a lack of funds, she recruits studen',5.20696699999999968,'2006-01-26',11502151,157,'Released','A Generation Awakens',7.200000000000000177,97);
INSERT INTO `movie` VALUES(16205,'Jack Brooks: Monster Slayer',0,'','As a child Jack Brooks witnessed the brutal murder of his family. Now a young man he struggles with a pestering girlfriend, therapy sessions that resolve nothing, and night classes that barely hold his interest. After unleashing an ancient curse, Jack''s P',2.659803999999999836,'2007-10-09',0,85,'Released','...I used to be a plumber',5.700000000000000177,59);
INSERT INTO `movie` VALUES(2757,'Adaptation.',19000000,'http://www.sonypictures.com/homevideo/adaptation/index.html','A love-lorn script writer grows increasingly desperate in his quest to adapt the book ''The Orchid Thief''.',26.44166900000000097,'2002-12-06',32801173,114,'Released','From the creator of Being John Malkovich, comes the story about the creator of Being John Malkovich.',7.299999999999999823,638);
INSERT INTO `movie` VALUES(13539,'Here On Earth',0,'','A rich college kid is taught a lesson after a joy ride ends up destroying a country restaurant.',3.313257000000000118,'2000-03-23',0,96,'Released','',5.400000000000000355,48);
INSERT INTO `movie` VALUES(114150,'Pitch Perfect',17000000,'http://www.pitchperfectmovie.com/','College student Beca knows she does not want to be part of a clique, but that''s exactly where she finds herself after arriving at her new school. Thrust in among mean gals, nice gals and just plain weird gals, Beca finds that the only thing they have in c',32.74648599999999731,'2012-09-28',115350426,112,'Released','Get pitch slapped.',7.299999999999999823,2247);
INSERT INTO `movie` VALUES(72387,'Safe',30000000,'http://www.safethefilm.com/','After a former elite agent rescues a 12-year-old Chinese girl who''s been abducted, they find themselves in the middle of a standoff between Triads, the Russian Mafia and high-level corrupt New York City politicians and police.',31.92695000000000149,'2012-04-16',40346186,94,'Released','She has the code. He is the key.',6.299999999999999823,799);
INSERT INTO `movie` VALUES(11130,'The Princess Diaries 2: Royal Engagement',40000000,'','Mia Thermopolis is now a college graduate and on her way to Genovia to take up her duties as princess. Her best friend Lilly also joins her for the summer. Mia continues her ''princess lessons''- riding horses side-saddle, archery, and other royal. But her ',30.00290700000000043,'2004-08-06',95149435,113,'Released','It can take a lifetime to find true love; she''s got 30 days!',6.0,697);
INSERT INTO `movie` VALUES(9433,'The Edge',0,'','The plane carrying wealthy Charles Morse crashes down in the Alaskan wilderness. Together with the two other passengers, photographer Robert and assistant Stephen, Charles devises a plan to help them reach civilization. However, his biggest obstacle might',20.63267300000000048,'1997-09-06',43312294,117,'Released','They were fighting over a woman when the plane went down. Now, their only chance for survival is each other.',6.700000000000000177,349);
INSERT INTO `movie` VALUES(90414,'I Love You, Don''t Touch Me!',0,'','The story of a 25 year old virgin girl, looking for the right boyfriend, not realizing that "the one" has been next to her for many years.',0.02083899999999999989,'1997-01-21',0,86,'Released','Just Your Typical Boy-Loves-Girl Who Doesn''t Love Boy Till He Loves Other Girl Story',6.0,1);
INSERT INTO `movie` VALUES(15045,'Fat Albert',0,'','An obese boy named Fat Albert and his friends Rudy, Mushmouth, Bill, Dumb Donald, Russell, and Weird Harold, pulls into trouble when they "fall" out of their TV world into the real world, where Fat Albert tries to help a young girl, Doris, make friends.',7.15763499999999997,'2004-12-12',0,93,'Released','',4.299999999999999823,69);
INSERT INTO `movie` VALUES(67238,'Cavite',0,'','Adam, a security guard, travels from California to the Philippines, his native land, for his father''s funeral. He arrives in Manila. As he waits, a phone rings in his backpack; he answers it, and a male voice tells him that his mother and sister are capti',0.02217299999999999826,'2005-03-12',0,80,'Released','',7.5,2);
INSERT INTO `movie` VALUES(10632,'The Hunted',55000000,'','In the wilderness of British Columbia, two hunters are tracked and viciously murdered by Aaron Hallum. Former Special Operations instructor, L.T. Bonham is approached and asked to apprehend Hallum, his former student, who has ''gone rogue'' after suffering ',8.634954000000000462,'2003-03-11',34234008,94,'Released','Some men should not be found.',6.0,189);
CREATE TABLE `movie_genres`
(`movie_id` BIGINT,
`genre_id` BIGINT);
INSERT INTO `movie_genres` VALUES(2043,28);
INSERT INTO `movie_genres` VALUES(41009,35);
INSERT INTO `movie_genres` VALUES(41436,27);
INSERT INTO `movie_genres` VALUES(68737,12);
INSERT INTO `movie_genres` VALUES(44639,99);
INSERT INTO `movie_genres` VALUES(13973,35);
INSERT INTO `movie_genres` VALUES(10468,35);
INSERT INTO `movie_genres` VALUES(234212,27);
INSERT INTO `movie_genres` VALUES(71157,18);
INSERT INTO `movie_genres` VALUES(29514,27);
INSERT INTO `movie_genres` VALUES(280391,16);
INSERT INTO `movie_genres` VALUES(205126,878);
INSERT INTO `movie_genres` VALUES(4723,878);
INSERT INTO `movie_genres` VALUES(72086,80);
CREATE TABLE `movie_languages`
(`movie_id` BIGINT,
`language_id` BIGINT,
`language_role_id` BIGINT);
INSERT INTO `movie_languages` VALUES(357441,24601,2);
INSERT INTO `movie_languages` VALUES(46989,24574,2);
INSERT INTO `movie_languages` VALUES(10197,24574,2);
INSERT INTO `movie_languages` VALUES(82507,24653,2);
INSERT INTO `movie_languages` VALUES(17043,24574,2);
INSERT INTO `movie_languages` VALUES(14405,24574,1);
INSERT INTO `movie_languages` VALUES(27576,24574,2);
INSERT INTO `movie_languages` VALUES(217708,24607,1);
INSERT INTO `movie_languages` VALUES(398,24574,1);
INSERT INTO `movie_languages` VALUES(49519,24574,1);
INSERT INTO `movie_languages` VALUES(10625,24574,1);
INSERT INTO `movie_languages` VALUES(5759,24574,1);
INSERT INTO `movie_languages` VALUES(8328,24574,2);
INSERT INTO `movie_languages` VALUES(367551,24574,2);
CREATE TABLE `person`
(`person_id` BIGINT,
`person_name` VARCHAR(1023));
INSERT INTO `person` VALUES(1537474,'Todd Heater');
INSERT INTO `person` VALUES(1892498,'Florian Kainz');
INSERT INTO `person` VALUES(145610,'Eulala Scheel');
INSERT INTO `person` VALUES(49194,'Yann Jouannic');
INSERT INTO `person` VALUES(34508,'Edward Earle');
INSERT INTO `person` VALUES(63943,'Rowdy Herrington');
INSERT INTO `person` VALUES(993897,'Joshua De La Garza');
INSERT INTO `person` VALUES(1412213,'Fatima Robinson');
INSERT INTO `person` VALUES(9379,'Paul Wilkowsky');
INSERT INTO `person` VALUES(1864771,'Billy Harmer');
INSERT INTO `person` VALUES(1325908,'Carol Lavallee');
INSERT INTO `person` VALUES(1502726,'Ermanno De Biagi');
INSERT INTO `person` VALUES(1729448,'Jerry Duplessis');
INSERT INTO `person` VALUES(1514479,'Tom Bui');
CREATE TABLE `movie_crew`
(`movie_id` BIGINT,
`person_id` BIGINT,
`department_id` BIGINT,
`job` VARCHAR(1023));
INSERT INTO `movie_crew` VALUES(12096,67773,4,'Screenplay');
INSERT INTO `movie_crew` VALUES(2675,1311507,10,'Special Effects Supervisor');
INSERT INTO `movie_crew` VALUES(147441,134572,5,'Digital Intermediate');
INSERT INTO `movie_crew` VALUES(59728,1521754,2,'Script Supervisor');
INSERT INTO `movie_crew` VALUES(312221,1580877,10,'Visual Effects Coordinator');
INSERT INTO `movie_crew` VALUES(9913,1769324,8,'Set Dressing Artist');
INSERT INTO `movie_crew` VALUES(11835,1421251,1,'Steadicam Operator');
INSERT INTO `movie_crew` VALUES(36819,280,3,'Producer');
INSERT INTO `movie_crew` VALUES(12403,72103,3,'Producer');
INSERT INTO `movie_crew` VALUES(9697,1367495,6,'Boom Operator');
INSERT INTO `movie_crew` VALUES(22954,1377140,2,'Script Supervisor');
INSERT INTO `movie_crew` VALUES(392,5332,8,'Costume Design');
INSERT INTO `movie_crew` VALUES(38543,11270,7,'Set Decoration');
INSERT INTO `movie_crew` VALUES(11024,60596,7,'Assistant Art Director');
CREATE TABLE `production_company`
(`company_id` BIGINT,
`company_name` VARCHAR(1023));
INSERT INTO `production_company` VALUES(27271,'30 Something Productions');
INSERT INTO `production_company` VALUES(1632,'Lionsgate');
INSERT INTO `production_company` VALUES(2265,'Shangri-La Entertainment');
INSERT INTO `production_company` VALUES(67480,'Atlas 3 Productions');
INSERT INTO `production_company` VALUES(5564,'Atlantis Pictures');
INSERT INTO `production_company` VALUES(43910,'South Side Amusement Company');
INSERT INTO `production_company` VALUES(1420,'ContentFilm');
INSERT INTO `production_company` VALUES(1700,'Cherry Road Films LLC');
INSERT INTO `production_company` VALUES(33681,'Black Label Media');
INSERT INTO `production_company` VALUES(11346,'Motion Picture THETA Produktionsgesellschaft');
INSERT INTO `production_company` VALUES(8188,'Neelmudra Entertainment');
INSERT INTO `production_company` VALUES(1531,'Smart Egg Pictures');
INSERT INTO `production_company` VALUES(14063,'Granada Television');
INSERT INTO `production_company` VALUES(181,'Channel Four Films');
CREATE TABLE `production_country`
(`movie_id` BIGINT,
`country_id` BIGINT);
INSERT INTO `production_country` VALUES(181283,162);
INSERT INTO `production_country` VALUES(118,162);
INSERT INTO `production_country` VALUES(106845,214);
INSERT INTO `production_country` VALUES(137094,204);
INSERT INTO `production_country` VALUES(10740,214);
INSERT INTO `production_country` VALUES(6933,151);
INSERT INTO `production_country` VALUES(13090,214);
INSERT INTO `production_country` VALUES(1956,214);
INSERT INTO `production_country` VALUES(568,214);
INSERT INTO `production_country` VALUES(14283,174);
INSERT INTO `production_country` VALUES(8834,214);
INSERT INTO `production_country` VALUES(2290,161);
INSERT INTO `production_country` VALUES(16,193);
INSERT INTO `production_country` VALUES(84174,214);
CREATE TABLE `movie_cast`
(`movie_id` BIGINT,
`person_id` BIGINT,
`character_name` VARCHAR(1023),
`gender_id` BIGINT,
`cast_order` BIGINT);
INSERT INTO `movie_cast` VALUES(155,1512023,'Party Guest (uncredited)',0,131);
INSERT INTO `movie_cast` VALUES(2447,17163,'Komplizin des Taschendiebs',0,32);
INSERT INTO `movie_cast` VALUES(2976,1752786,'Welcome to the 60''s Dancer',0,130);
INSERT INTO `movie_cast` VALUES(641,53937,'Malin & Block Secretary',1,14);
INSERT INTO `movie_cast` VALUES(1656,18467,'Brother Ignacio',0,13);
INSERT INTO `movie_cast` VALUES(11615,1817320,'College Student (uncredited)',0,91);
INSERT INTO `movie_cast` VALUES(9348,153938,'Government Man',2,18);
INSERT INTO `movie_cast` VALUES(1640,61830,'Nurse Hodges',1,33);
INSERT INTO `movie_cast` VALUES(26320,17142,'VW Guy',2,7);
INSERT INTO `movie_cast` VALUES(9954,60902,'Dead Teenage Boy',0,12);
INSERT INTO `movie_cast` VALUES(874,13325,'Alice More',1,1);
INSERT INTO `movie_cast` VALUES(219,4372,'Vecina',0,16);
INSERT INTO `movie_cast` VALUES(8338,51389,'Police man',2,12);
INSERT INTO `movie_cast` VALUES(18947,7056,'Charlotte',1,4);
CREATE TABLE `movie_keywords`
(`movie_id` BIGINT,
`keyword_id` BIGINT);
INSERT INTO `movie_keywords` VALUES(1599,162271);
INSERT INTO `movie_keywords` VALUES(1894,163255);
INSERT INTO `movie_keywords` VALUES(16858,156028);
INSERT INTO `movie_keywords` VALUES(4964,567);
INSERT INTO `movie_keywords` VALUES(24066,194022);
INSERT INTO `movie_keywords` VALUES(16448,10260);
INSERT INTO `movie_keywords` VALUES(658,3293);
INSERT INTO `movie_keywords` VALUES(691,3312);
INSERT INTO `movie_keywords` VALUES(616,33457);
INSERT INTO `movie_keywords` VALUES(85350,10303);
INSERT INTO `movie_keywords` VALUES(321697,5565);
INSERT INTO `movie_keywords` VALUES(24961,177912);
INSERT INTO `movie_keywords` VALUES(19908,167068);
INSERT INTO `movie_keywords` VALUES(2666,33465);
CREATE TABLE `movie_company`
(`movie_id` BIGINT,
`company_id` BIGINT);
INSERT INTO `movie_company` VALUES(9566,1236);
INSERT INTO `movie_company` VALUES(327,567);
INSERT INTO `movie_company` VALUES(11358,8411);
INSERT INTO `movie_company` VALUES(16358,25918);
INSERT INTO `movie_company` VALUES(161,172);
INSERT INTO `movie_company` VALUES(334527,50491);
INSERT INTO `movie_company` VALUES(3291,11509);
INSERT INTO `movie_company` VALUES(14139,23502);
INSERT INTO `movie_company` VALUES(5915,41051);
INSERT INTO `movie_company` VALUES(190859,57409);
INSERT INTO `movie_company` VALUES(26390,10254);
INSERT INTO `movie_company` VALUES(11469,306);
INSERT INTO `movie_company` VALUES(2503,11347);
INSERT INTO `movie_company` VALUES(1677,8833);
