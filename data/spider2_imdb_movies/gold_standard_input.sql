CREATE TABLE `ERD`
(`table` VARCHAR(1023),
`column` VARCHAR(1023),
`Unnamed:_2` DOUBLE,
`Unnamed:_3` DOUBLE,
`Unnamed:_4` DOUBLE,
`Unnamed:_5` DOUBLE,
`Unnamed:_6` VARCHAR(1023),
`Unnamed:_7` DOUBLE,
`Unnamed:_8` DOUBLE,
`Unnamed:_9` VARCHAR(1023),
`Unnamed:_10` DOUBLE,
`Unnamed:_11` DOUBLE,
`Unnamed:_12` VARCHAR(1023));
INSERT INTO `ERD` VALUES('ratings','avg_rating',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'date_of_birth',NULL,NULL,NULL);
INSERT INTO `ERD` VALUES('movie','date_published',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'total_votes');
INSERT INTO `ERD` VALUES('genre','movie_id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'title',NULL,NULL,NULL);
INSERT INTO `ERD` VALUES('names','name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ERD` VALUES('genre','genre',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'year',NULL,NULL,NULL);
INSERT INTO `ERD` VALUES('names','height',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'names',NULL,NULL,NULL);
INSERT INTO `ERD` VALUES('names','known_for_movies',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'name',NULL,NULL,NULL);
INSERT INTO `ERD` VALUES('role_mapping','movie_id',NULL,NULL,NULL,NULL,'* movie_id',NULL,NULL,'country',NULL,NULL,'* movie_id');
INSERT INTO `ERD` VALUES('movie','id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'genre',NULL,NULL,'ratings');
INSERT INTO `ERD` VALUES('names','date_of_birth',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'* id',NULL,NULL,NULL);
INSERT INTO `ERD` VALUES('ratings','median_rating',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `ERD` VALUES('director_mapping','name_id',NULL,NULL,NULL,NULL,'role_mapping',NULL,NULL,'duration',NULL,NULL,'director_mapping');
INSERT INTO `ERD` VALUES('names','id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'production_company',NULL,NULL,NULL);
INSERT INTO `ERD` VALUES('ratings','total_votes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'known_for_movies',NULL,NULL,NULL);
CREATE TABLE `movies`
(`id` VARCHAR(1023),
`title` VARCHAR(1023),
`year` BIGINT,
`date_published` DATETIME,
`duration` BIGINT,
`country` VARCHAR(1023),
`worlwide_gross_income` VARCHAR(1023),
`languages` VARCHAR(1023),
`production_company` VARCHAR(1023));
INSERT INTO `movies` VALUES('tt4513316','Novitiate',2017,'2017-01-20 00:00:00',123,'USA','$ 580346','English, American Sign Language, Latin','Maven Pictures');
INSERT INTO `movies` VALUES('tt9632590','Une fille facile',2019,'2019-08-28 00:00:00',92,'France','$ 605992','French','Les Films Velvet');
INSERT INTO `movies` VALUES('tt6256452','Les distàncies',2018,'2018-09-07 00:00:00',99,'Spain','$ 177641','Catalan, Spanish, English, German','Coming Soon Films');
INSERT INTO `movies` VALUES('tt6755892','The Neighborhood',2017,'2017-08-18 00:00:00',107,'Canada',NULL,'English','In Your Ear Productions');
INSERT INTO `movies` VALUES('tt3741188','Bonejangles',2017,'2017-07-18 00:00:00',78,'USA',NULL,'English','Labyrinth Films');
INSERT INTO `movies` VALUES('tt9243946','El Camino: A Breaking Bad Movie',2019,'2019-10-11 00:00:00',122,'USA',NULL,'English','Netflix');
INSERT INTO `movies` VALUES('tt1286146','The Eagle Path',2017,'2017-01-01 00:00:00',108,'Thailand, Hong Kong, USA',NULL,'English','Full Love Productions');
INSERT INTO `movies` VALUES('tt6225520','The Man Who Invented Christmas',2017,'2017-12-01 00:00:00',104,'Ireland, Canada','$ 8096007','English, Italian','Mazur / Kaplan Company');
INSERT INTO `movies` VALUES('tt6397762','Las hijas de Abril',2017,'2017-06-23 00:00:00',103,'Mexico','$ 774882','Spanish','Lucia Films');
INSERT INTO `movies` VALUES('tt9053906','Ku zak',2018,'2018-10-04 00:00:00',86,'Hong Kong',NULL,'Cantonese','Mandarin Motion Pictures');
INSERT INTO `movies` VALUES('tt7248518','Better Off Zed',2019,'2019-10-04 00:00:00',88,'USA',NULL,'English','Butcher Bird Studios');
INSERT INTO `movies` VALUES('tt2827058','Mississippi Murder',2017,'2017-01-03 00:00:00',113,'USA',NULL,'English','Repertory Films');
INSERT INTO `movies` VALUES('tt7841496','Perdida',2018,'2018-04-19 00:00:00',103,'Argentina, Spain','$ 1157057','Spanish','Bowfinger International Pictures');
INSERT INTO `movies` VALUES('tt7671064','Brittany Runs a Marathon',2019,'2019-11-01 00:00:00',104,'USA','$ 7416496','English','Material Pictures');
CREATE TABLE `genre`
(`movie_id` VARCHAR(1023),
`genre` VARCHAR(1023));
INSERT INTO `genre` VALUES('tt6400166','Drama');
INSERT INTO `genre` VALUES('tt6095004','Fantasy');
INSERT INTO `genre` VALUES('tt4060006','Comedy');
INSERT INTO `genre` VALUES('tt2283336','Comedy');
INSERT INTO `genre` VALUES('tt7668724','Drama');
INSERT INTO `genre` VALUES('tt5155780','Drama');
INSERT INTO `genre` VALUES('tt2759338','Action');
INSERT INTO `genre` VALUES('tt4810964','Drama');
INSERT INTO `genre` VALUES('tt7523010','Drama');
INSERT INTO `genre` VALUES('tt6213880','Drama');
INSERT INTO `genre` VALUES('tt3277446','Thriller');
INSERT INTO `genre` VALUES('tt7424396','Drama');
INSERT INTO `genre` VALUES('tt4655630','Thriller');
INSERT INTO `genre` VALUES('tt6409272','Romance');
CREATE TABLE `director_mapping`
(`movie_id` VARCHAR(1023),
`name_id` VARCHAR(1023));
INSERT INTO `director_mapping` VALUES('tt8319778','nm2432984');
INSERT INTO `director_mapping` VALUES('tt5628418','nm3511659');
INSERT INTO `director_mapping` VALUES('tt5087564','nm0503641');
INSERT INTO `director_mapping` VALUES('tt7288684','nm5366442');
INSERT INTO `director_mapping` VALUES('tt4862190','nm3769280');
INSERT INTO `director_mapping` VALUES('tt6576556','nm0470081');
INSERT INTO `director_mapping` VALUES('tt6384720','nm3091632');
INSERT INTO `director_mapping` VALUES('tt4943620','nm3980314');
INSERT INTO `director_mapping` VALUES('tt4497686','nm5063717');
INSERT INTO `director_mapping` VALUES('tt3680820','nm0709182');
INSERT INTO `director_mapping` VALUES('tt7115980','nm5270673');
INSERT INTO `director_mapping` VALUES('tt3758708','nm1837403');
INSERT INTO `director_mapping` VALUES('tt4940416','nm1074134');
INSERT INTO `director_mapping` VALUES('tt6750884','nm8906487');
CREATE TABLE `role_mapping`
(`movie_id` VARCHAR(1023),
`name_id` VARCHAR(1023),
`category` VARCHAR(1023));
INSERT INTO `role_mapping` VALUES('tt5516328','nm3867299','actor');
INSERT INTO `role_mapping` VALUES('tt10551608','nm9503553','actress');
INSERT INTO `role_mapping` VALUES('tt3063364','nm1320717','actor');
INSERT INTO `role_mapping` VALUES('tt7549892','nm0327818','actor');
INSERT INTO `role_mapping` VALUES('tt5467554','nm2387806','actress');
INSERT INTO `role_mapping` VALUES('tt8655470','nm3024530','actor');
INSERT INTO `role_mapping` VALUES('tt7355718','nm4027847','actor');
INSERT INTO `role_mapping` VALUES('tt3776518','nm1133857','actress');
INSERT INTO `role_mapping` VALUES('tt1272016','nm3093785','actor');
INSERT INTO `role_mapping` VALUES('tt6174226','nm1169490','actor');
INSERT INTO `role_mapping` VALUES('tt7317324','nm0059654','actor');
INSERT INTO `role_mapping` VALUES('tt6278008','nm9425680','actress');
INSERT INTO `role_mapping` VALUES('tt8517144','nm9106498','actor');
INSERT INTO `role_mapping` VALUES('tt2633076','nm0505971','actor');
CREATE TABLE `names`
(`id` VARCHAR(1023),
`name` VARCHAR(1023),
`height` DOUBLE,
`date_of_birth` VARCHAR(1023),
`known_for_movies` VARCHAR(1023));
INSERT INTO `names` VALUES('nm0000104','Antonio Banderas',174.0,'1960-08-10',NULL);
INSERT INTO `names` VALUES('nm0149826','Shankar Chakraborty',NULL,'1962-08-18',NULL);
INSERT INTO `names` VALUES('nm0587711','Georgiy Millyar',NULL,'1903-11-07',NULL);
INSERT INTO `names` VALUES('nm0436803','Piotr Kamler',NULL,'1936-06-30',NULL);
INSERT INTO `names` VALUES('nm6018537','Darien Willardson',NULL,NULL,'tt4877606');
INSERT INTO `names` VALUES('nm0196247','Howard Da Silva',200.0,'1909-05-04',NULL);
INSERT INTO `names` VALUES('nm1753038','Matt Kane',84.0,'1991-01-18','tt7596220');
INSERT INTO `names` VALUES('nm2555462','Eiza González',200.0,'1990-01-30','tt3890160,tt0437086');
INSERT INTO `names` VALUES('nm1130496','Alysia Reiner',84.0,'1970-07-21',NULL);
INSERT INTO `names` VALUES('nm3848007','Stephanie Ceballos',NULL,NULL,NULL);
INSERT INTO `names` VALUES('nm0261701','Adriana Esteves',200.0,'1969-12-15',NULL);
INSERT INTO `names` VALUES('nm0085791','Abigail Blackmore',200.0,NULL,'tt4522922');
INSERT INTO `names` VALUES('nm0821651','Joan Staley',94.0,'1940-05-20',NULL);
INSERT INTO `names` VALUES('nm5049711','Bonnie Sturdivant',200.0,NULL,'tt4497978');
CREATE TABLE `ratings`
(`movie_id` VARCHAR(1023),
`avg_rating` DOUBLE,
`total_votes` BIGINT,
`median_rating` DOUBLE);
INSERT INTO `ratings` VALUES('tt7146054',7.099999999999999645,621,7.0);
INSERT INTO `ratings` VALUES('tt4468634',6.299999999999999823,10664,7.0);
INSERT INTO `ratings` VALUES('tt6180842',6.400000000000000355,418,7.0);
INSERT INTO `ratings` VALUES('tt7074886',6.099999999999999645,8629,6.0);
INSERT INTO `ratings` VALUES('tt7478494',6.5,128,7.0);
INSERT INTO `ratings` VALUES('tt7288684',7.099999999999999645,345,9.0);
INSERT INTO `ratings` VALUES('tt5121816',6.299999999999999823,18326,6.0);
INSERT INTO `ratings` VALUES('tt5183594',6.299999999999999823,113,6.0);
INSERT INTO `ratings` VALUES('tt4558200',5.900000000000000355,275,7.0);
INSERT INTO `ratings` VALUES('tt5717492',5.799999999999999823,5854,6.0);
INSERT INTO `ratings` VALUES('tt1753786',4.200000000000000177,1156,5.0);
INSERT INTO `ratings` VALUES('tt7725596',8.0,21978,8.0);
INSERT INTO `ratings` VALUES('tt8816194',6.700000000000000177,495,7.0);
INSERT INTO `ratings` VALUES('tt9663258',5.599999999999999645,241,6.0);
