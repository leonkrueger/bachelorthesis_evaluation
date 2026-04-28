CREATE TABLE `actor`
(`actor_id` DOUBLE,
`first_name` VARCHAR(1023),
`last_name` VARCHAR(1023),
`last_update` DATETIME);
INSERT INTO `actor` VALUES(118,'CUBA','ALLEN','2021-03-06 15:51:59');
INSERT INTO `actor` VALUES(3,'ED','CHASE','2021-03-06 15:51:59');
INSERT INTO `actor` VALUES(88,'KENNETH','PESCI','2021-03-06 15:51:59');
INSERT INTO `actor` VALUES(159,'LAURA','BRODY','2021-03-06 15:52:00');
INSERT INTO `actor` VALUES(14,'VIVIEN','BERGEN','2021-03-06 15:51:59');
INSERT INTO `actor` VALUES(152,'BEN','HARRIS','2021-03-06 15:52:00');
CREATE TABLE `country`
(`country_id` BIGINT,
`country` VARCHAR(1023),
`last_update` DATETIME);
INSERT INTO `country` VALUES(40,'Greenland','2021-03-06 15:51:49');
INSERT INTO `country` VALUES(73,'Paraguay','2021-03-06 15:51:49');
INSERT INTO `country` VALUES(11,'Bahrain','2021-03-06 15:51:49');
INSERT INTO `country` VALUES(53,'Kuwait','2021-03-06 15:51:49');
INSERT INTO `country` VALUES(7,'Armenia','2021-03-06 15:51:49');
INSERT INTO `country` VALUES(46,'Iran','2021-03-06 15:51:49');
CREATE TABLE `city`
(`city_id` BIGINT,
`city` VARCHAR(1023),
`country_id` BIGINT,
`last_update` DATETIME);
INSERT INTO `city` VALUES(528,'Tarlac',75,'2021-03-06 15:51:53');
INSERT INTO `city` VALUES(392,'Paarl',85,'2021-03-06 15:51:52');
INSERT INTO `city` VALUES(46,'Baicheng',23,'2021-03-06 15:51:50');
INSERT INTO `city` VALUES(6,'Addis Abeba',31,'2021-03-06 15:51:49');
INSERT INTO `city` VALUES(47,'Baiyin',23,'2021-03-06 15:51:50');
INSERT INTO `city` VALUES(221,'Imus',75,'2021-03-06 15:51:51');
CREATE TABLE `address`
(`address_id` BIGINT,
`address` VARCHAR(1023),
`address2` VARCHAR(1023),
`district` VARCHAR(1023),
`city_id` BIGINT,
`postal_code` VARCHAR(1023),
`phone` VARCHAR(1023),
`last_update` DATETIME);
INSERT INTO `address` VALUES(192,'1166 Changhwa Street',NULL,' ',62,'58852',' ','2021-03-06 15:51:55');
INSERT INTO `address` VALUES(320,'1542 Lubumbashi Boulevard',NULL,' ',57,'62472',' ','2021-03-06 15:51:56');
INSERT INTO `address` VALUES(274,'920 Kumbakonam Loop',NULL,' ',446,'75090',' ','2021-03-06 15:51:56');
INSERT INTO `address` VALUES(11,'900 Santiago de Compostela Parkway',NULL,' ',280,'93896',' ','2021-03-06 15:51:54');
INSERT INTO `address` VALUES(37,'127 Purnea (Purnia) Manor',NULL,' ',17,'79388',' ','2021-03-06 15:51:54');
INSERT INTO `address` VALUES(345,'68 Ponce Parkway',NULL,' ',201,'85926',' ','2021-03-06 15:51:57');
CREATE TABLE `language`
(`language_id` BIGINT,
`name` VARCHAR(1023),
`last_update` DATETIME);
INSERT INTO `language` VALUES(3,'Japanese','2021-03-06 15:51:48');
INSERT INTO `language` VALUES(5,'French','2021-03-06 15:51:48');
INSERT INTO `language` VALUES(1,'English','2021-03-06 15:51:48');
INSERT INTO `language` VALUES(6,'German','2021-03-06 15:51:48');
INSERT INTO `language` VALUES(4,'Mandarin','2021-03-06 15:51:48');
INSERT INTO `language` VALUES(2,'Italian','2021-03-06 15:51:48');
CREATE TABLE `category`
(`category_id` BIGINT,
`name` VARCHAR(1023),
`last_update` DATETIME);
INSERT INTO `category` VALUES(1,'Action','2021-03-06 15:52:00');
INSERT INTO `category` VALUES(14,'Sci-Fi','2021-03-06 15:52:00');
INSERT INTO `category` VALUES(3,'Children','2021-03-06 15:52:00');
INSERT INTO `category` VALUES(12,'Music','2021-03-06 15:52:00');
INSERT INTO `category` VALUES(8,'Family','2021-03-06 15:52:00');
INSERT INTO `category` VALUES(11,'Horror','2021-03-06 15:52:00');
CREATE TABLE `customer`
(`customer_id` BIGINT,
`store_id` BIGINT,
`first_name` VARCHAR(1023),
`last_name` VARCHAR(1023),
`email` VARCHAR(1023),
`address_id` BIGINT,
`active` VARCHAR(1023),
`create_date` DATETIME,
`last_update` DATETIME);
INSERT INTO `customer` VALUES(431,2,'JOEL','FRANCISCO','JOEL.FRANCISCO@sakilacustomer.org',436,'1','2006-02-14 22:04:37.000','2021-03-06 15:53:39');
INSERT INTO `customer` VALUES(393,1,'PHILIP','CAUSEY','PHILIP.CAUSEY@sakilacustomer.org',398,'1','2006-02-14 22:04:37.000','2021-03-06 15:53:39');
INSERT INTO `customer` VALUES(223,1,'MELINDA','FERNANDEZ','MELINDA.FERNANDEZ@sakilacustomer.org',227,'1','2006-02-14 22:04:36.000','2021-03-06 15:53:37');
INSERT INTO `customer` VALUES(22,1,'LAURA','RODRIGUEZ','LAURA.RODRIGUEZ@sakilacustomer.org',26,'1','2006-02-14 22:04:36.000','2021-03-06 15:53:36');
INSERT INTO `customer` VALUES(205,2,'EILEEN','CARR','EILEEN.CARR@sakilacustomer.org',209,'1','2006-02-14 22:04:36.000','2021-03-06 15:53:37');
INSERT INTO `customer` VALUES(296,2,'RAMONA','HALE','RAMONA.HALE@sakilacustomer.org',301,'1','2006-02-14 22:04:37.000','2021-03-06 15:53:38');
CREATE TABLE `film`
(`film_id` BIGINT,
`title` VARCHAR(1023),
`description` BLOB,
`release_year` VARCHAR(1023),
`language_id` BIGINT,
`original_language_id` BIGINT,
`rental_duration` BIGINT,
`rental_rate` DOUBLE,
`length` BIGINT,
`replacement_cost` DOUBLE,
`rating` VARCHAR(1023),
`special_features` VARCHAR(1023),
`last_update` DATETIME);
INSERT INTO `film` VALUES(651,'PACKER MADIGAN','A Epic Display of a Sumo Wrestler And a Forensic Psychologist who must Build a Woman in An Abandoned Amusement Park','2006',1,NULL,3,0.989999999999999992,84,20.98999999999999843,'PG-13','Trailers','2021-03-06 15:52:05');
INSERT INTO `film` VALUES(356,'GIANT TROOPERS','A Fateful Display of a Feminist And a Monkey who must Vanquish a Monkey in The Canadian Rockies','2006',1,NULL,5,2.990000000000000213,102,10.99000000000000021,'R','Trailers,Commentaries','2021-03-06 15:52:03');
INSERT INTO `film` VALUES(218,'DECEIVER BETRAYED','A Taut Story of a Moose And a Squirrel who must Build a Husband in Ancient India','2006',1,NULL,7,0.989999999999999992,122,22.98999999999999843,'NC-17','Trailers,Commentaries,Deleted Scenes,Behind the Scenes','2021-03-06 15:52:02');
INSERT INTO `film` VALUES(631,'NOVOCAINE FLIGHT','A Fanciful Display of a Student And a Teacher who must Outgun a Crocodile in Nigeria','2006',1,NULL,4,0.989999999999999992,64,11.99000000000000021,'G','Trailers,Commentaries,Deleted Scenes','2021-03-06 15:52:05');
INSERT INTO `film` VALUES(145,'CHISUM BEHAVIOR','A Epic Documentary of a Sumo Wrestler And a Butler who must Kill a Car in Ancient India','2006',1,NULL,5,4.990000000000000213,124,25.98999999999999844,'G','Trailers,Commentaries,Behind the Scenes','2021-03-06 15:52:01');
INSERT INTO `film` VALUES(36,'ARGONAUTS TOWN','A Emotional Epistle of a Forensic Psychologist And a Butler who must Challenge a Waitress in An Abandoned Mine Shaft','2006',1,NULL,7,0.989999999999999992,127,12.99000000000000021,'PG-13','Trailers,Commentaries','2021-03-06 15:52:01');
CREATE TABLE `film_actor`
(`actor_id` BIGINT,
`film_id` BIGINT,
`last_update` DATETIME);
INSERT INTO `film_actor` VALUES(105,280,'2021-03-06 15:53:07');
INSERT INTO `film_actor` VALUES(192,470,'2021-03-06 15:53:26');
INSERT INTO `film_actor` VALUES(198,892,'2021-03-06 15:53:27');
INSERT INTO `film_actor` VALUES(61,535,'2021-03-06 15:52:58');
INSERT INTO `film_actor` VALUES(85,296,'2021-03-06 15:53:03');
INSERT INTO `film_actor` VALUES(76,474,'2021-03-06 15:53:01');
CREATE TABLE `film_category`
(`film_id` BIGINT,
`category_id` BIGINT,
`last_update` DATETIME);
INSERT INTO `film_category` VALUES(438,10,'2021-03-06 15:53:31');
INSERT INTO `film_category` VALUES(316,10,'2021-03-06 15:53:30');
INSERT INTO `film_category` VALUES(812,6,'2021-03-06 15:53:34');
INSERT INTO `film_category` VALUES(831,14,'2021-03-06 15:53:34');
INSERT INTO `film_category` VALUES(77,13,'2021-03-06 15:53:28');
INSERT INTO `film_category` VALUES(996,6,'2021-03-06 15:53:36');
CREATE TABLE `film_text`
(`film_id` BIGINT,
`title` VARCHAR(1023),
`description` BLOB);
CREATE TABLE `inventory`
(`inventory_id` BIGINT,
`film_id` BIGINT,
`store_id` BIGINT,
`last_update` DATETIME);
INSERT INTO `inventory` VALUES(3698,809,2,'2021-03-06 15:52:38');
INSERT INTO `inventory` VALUES(779,170,2,'2021-03-06 15:52:14');
INSERT INTO `inventory` VALUES(1000,223,2,'2021-03-06 15:52:16');
INSERT INTO `inventory` VALUES(1241,274,2,'2021-03-06 15:52:18');
INSERT INTO `inventory` VALUES(1465,320,2,'2021-03-06 15:52:20');
INSERT INTO `inventory` VALUES(2654,582,2,'2021-03-06 15:52:29');
CREATE TABLE `staff`
(`staff_id` BIGINT,
`first_name` VARCHAR(1023),
`last_name` VARCHAR(1023),
`address_id` BIGINT,
`picture` BLOB,
`email` VARCHAR(1023),
`store_id` BIGINT,
`active` BIGINT,
`username` VARCHAR(1023),
`password` VARCHAR(1023),
`last_update` DATETIME);
INSERT INTO `staff` VALUES(2,'Jon','Stephens',4,NULL,'Jon.Stephens@sakilastaff.com',2,1,'Jon','8cb2237d0679ca88db6464eac60da96345513964','2021-03-06 15:52:00');
INSERT INTO `staff` VALUES(1,'Mike','Hillyer',3,NULL,'Mike.Hillyer@sakilastaff.com',1,1,'Mike','8cb2237d0679ca88db6464eac60da96345513964','2021-03-06 15:52:00');
CREATE TABLE `store`
(`store_id` BIGINT,
`manager_staff_id` BIGINT,
`address_id` BIGINT,
`last_update` DATETIME);
INSERT INTO `store` VALUES(1,1,1,'2021-03-06 15:52:00');
INSERT INTO `store` VALUES(2,2,2,'2021-03-06 15:52:00');
CREATE TABLE `payment`
(`payment_id` BIGINT,
`customer_id` BIGINT,
`staff_id` BIGINT,
`rental_id` BIGINT,
`amount` DOUBLE,
`payment_date` DATETIME,
`last_update` DATETIME);
INSERT INTO `payment` VALUES(585,22,1,5815,2.990000000000000213,'2005-07-10 15:48:19.000','2021-03-06 15:56:02');
INSERT INTO `payment` VALUES(3223,120,2,532,0.989999999999999992,'2005-05-28 05:36:58.000','2021-03-06 15:56:24');
INSERT INTO `payment` VALUES(333,13,1,2952,2.990000000000000213,'2005-06-20 06:26:57.000','2021-03-06 15:56:00');
INSERT INTO `payment` VALUES(5566,205,1,14442,2.990000000000000213,'2005-08-21 12:00:21.000','2021-03-06 15:56:44');
INSERT INTO `payment` VALUES(15294,571,1,2327,2.990000000000000213,'2005-06-18 10:16:40.000','2021-03-06 15:58:03');
INSERT INTO `payment` VALUES(13226,490,1,10786,7.990000000000000213,'2005-08-01 21:29:34.000','2021-03-06 15:57:46');
CREATE TABLE `rental`
(`rental_id` BIGINT,
`rental_date` DATETIME,
`inventory_id` BIGINT,
`customer_id` BIGINT,
`return_date` DATETIME,
`staff_id` BIGINT,
`last_update` DATETIME);
INSERT INTO `rental` VALUES(3146,'2005-06-20 20:21:48.000',2249,339,'2005-06-29 22:57:48.000',2,'2021-03-06 15:54:06');
INSERT INTO `rental` VALUES(13193,'2005-08-19 14:33:45.000',523,118,'2005-08-28 08:46:45.000',2,'2021-03-06 15:55:29');
INSERT INTO `rental` VALUES(14691,'2005-08-21 20:42:29.000',2131,404,'2005-08-24 01:22:29.000',1,'2021-03-06 15:55:43');
INSERT INTO `rental` VALUES(15252,'2005-08-22 18:04:22.000',1821,453,'2005-08-25 17:14:22.000',2,'2021-03-06 15:55:49');
INSERT INTO `rental` VALUES(11120,'2005-08-02 08:47:04.000',4185,322,'2005-08-05 05:33:04.000',1,'2021-03-06 15:55:12');
INSERT INTO `rental` VALUES(1988,'2005-06-17 10:42:34.000',3054,261,'2005-06-25 11:47:34.000',2,'2021-03-06 15:53:57');
