CREATE TABLE `alignment`
(`id` BIGINT,
`alignment` VARCHAR(1023));
INSERT INTO `alignment` VALUES(4,'N/A');
INSERT INTO `alignment` VALUES(1,'Good');
INSERT INTO `alignment` VALUES(2,'Bad');
INSERT INTO `alignment` VALUES(3,'Neutral');
CREATE TABLE `attribute`
(`id` BIGINT,
`attribute_name` VARCHAR(1023));
INSERT INTO `attribute` VALUES(6,'Combat');
INSERT INTO `attribute` VALUES(3,'Speed');
INSERT INTO `attribute` VALUES(4,'Durability');
INSERT INTO `attribute` VALUES(1,'Intelligence');
INSERT INTO `attribute` VALUES(2,'Strength');
INSERT INTO `attribute` VALUES(5,'Power');
CREATE TABLE `colour`
(`id` BIGINT,
`colour` VARCHAR(1023));
INSERT INTO `colour` VALUES(27,'Red/White');
INSERT INTO `colour` VALUES(15,'Green/Blue');
INSERT INTO `colour` VALUES(26,'Red/Orange');
INSERT INTO `colour` VALUES(13,'Grey');
INSERT INTO `colour` VALUES(18,'Magenta');
INSERT INTO `colour` VALUES(32,'White/Red');
INSERT INTO `colour` VALUES(5,'Black/Blue');
INSERT INTO `colour` VALUES(34,'Yellow/Blue');
INSERT INTO `colour` VALUES(31,'White');
INSERT INTO `colour` VALUES(11,'Brown/White');
CREATE TABLE `gender`
(`id` BIGINT,
`gender` VARCHAR(1023));
INSERT INTO `gender` VALUES(1,'Male');
INSERT INTO `gender` VALUES(3,'N/A');
INSERT INTO `gender` VALUES(2,'Female');
CREATE TABLE `publisher`
(`id` BIGINT,
`publisher_name` VARCHAR(1023));
INSERT INTO `publisher` VALUES(19,'South Park');
INSERT INTO `publisher` VALUES(6,'Hanna-Barbera');
INSERT INTO `publisher` VALUES(5,'George Lucas');
INSERT INTO `publisher` VALUES(21,'SyFy');
INSERT INTO `publisher` VALUES(23,'Titan Books');
INSERT INTO `publisher` VALUES(25,'Wildstorm');
INSERT INTO `publisher` VALUES(13,'Marvel Comics');
INSERT INTO `publisher` VALUES(15,'NBC - Heroes');
INSERT INTO `publisher` VALUES(18,'Sony Pictures');
INSERT INTO `publisher` VALUES(8,'Icon Comics');
CREATE TABLE `race`
(`id` BIGINT,
`race` VARCHAR(1023));
INSERT INTO `race` VALUES(41,'Metahuman');
INSERT INTO `race` VALUES(4,'Amazon');
INSERT INTO `race` VALUES(61,'Zombie');
INSERT INTO `race` VALUES(9,'Bizarro');
INSERT INTO `race` VALUES(60,'Zen-Whoberian');
INSERT INTO `race` VALUES(47,'Planet');
INSERT INTO `race` VALUES(32,'Human-Vuldarian');
INSERT INTO `race` VALUES(48,'Rodian');
INSERT INTO `race` VALUES(57,'Xenomorph XX121');
INSERT INTO `race` VALUES(59,'Yoda''s species');
CREATE TABLE `superhero`
(`id` BIGINT,
`superhero_name` VARCHAR(1023),
`full_name` VARCHAR(1023),
`gender_id` BIGINT,
`eye_colour_id` BIGINT,
`hair_colour_id` BIGINT,
`skin_colour_id` BIGINT,
`race_id` BIGINT,
`publisher_id` BIGINT,
`alignment_id` BIGINT,
`height_cm` BIGINT,
`weight_kg` BIGINT);
INSERT INTO `superhero` VALUES(589,'Rorschach','Walter Joseph Kovacs',1,7,23,1,24,4,1,168,63);
INSERT INTO `superhero` VALUES(85,'Bi-Beast','-',1,4,1,1,5,13,1,229,158);
INSERT INTO `superhero` VALUES(293,'Godzilla','-',3,1,1,1,NULL,1,2,10800,90000000);
INSERT INTO `superhero` VALUES(97,'Bishop','Lucas Bishop',1,9,1,1,42,13,1,198,124);
INSERT INTO `superhero` VALUES(495,'Mysterio','Quentin Beck',1,9,1,1,24,13,2,180,79);
INSERT INTO `superhero` VALUES(239,'Dr Manhattan','Jonathan Osterman',1,31,1,7,27,4,1,0,0);
INSERT INTO `superhero` VALUES(505,'Nightcrawler','Kurt Wagner',1,33,17,1,1,13,1,175,88);
INSERT INTO `superhero` VALUES(89,'Bill Harken','-',1,1,1,1,3,21,1,0,0);
INSERT INTO `superhero` VALUES(528,'Penance II','Robert Baldwin',1,7,6,1,1,13,1,183,89);
INSERT INTO `superhero` VALUES(304,'Green Goblin II','Harold Osborn',1,7,3,1,1,13,2,178,77);
CREATE TABLE `hero_attribute`
(`hero_id` BIGINT,
`attribute_id` BIGINT,
`attribute_value` BIGINT);
INSERT INTO `hero_attribute` VALUES(243,3,50);
INSERT INTO `hero_attribute` VALUES(183,1,80);
INSERT INTO `hero_attribute` VALUES(274,2,10);
INSERT INTO `hero_attribute` VALUES(586,6,25);
INSERT INTO `hero_attribute` VALUES(245,1,80);
INSERT INTO `hero_attribute` VALUES(69,2,65);
INSERT INTO `hero_attribute` VALUES(358,1,90);
INSERT INTO `hero_attribute` VALUES(395,2,10);
INSERT INTO `hero_attribute` VALUES(567,1,65);
INSERT INTO `hero_attribute` VALUES(447,4,95);
CREATE TABLE `superpower`
(`id` BIGINT,
`power_name` VARCHAR(1023));
INSERT INTO `superpower` VALUES(39,'Enhanced Senses');
INSERT INTO `superpower` VALUES(12,'Marksmanship');
INSERT INTO `superpower` VALUES(60,'Reflexes');
INSERT INTO `superpower` VALUES(146,'Grim Reaping');
INSERT INTO `superpower` VALUES(61,'Invulnerability');
INSERT INTO `superpower` VALUES(17,'Intelligence');
INSERT INTO `superpower` VALUES(112,'Omnipotent');
INSERT INTO `superpower` VALUES(79,'Fire Resistance');
INSERT INTO `superpower` VALUES(1,'Agility');
INSERT INTO `superpower` VALUES(48,'Shapeshifting');
CREATE TABLE `hero_power`
(`hero_id` BIGINT,
`power_id` BIGINT);
INSERT INTO `hero_power` VALUES(354,69);
INSERT INTO `hero_power` VALUES(727,105);
INSERT INTO `hero_power` VALUES(504,16);
INSERT INTO `hero_power` VALUES(166,105);
INSERT INTO `hero_power` VALUES(513,77);
INSERT INTO `hero_power` VALUES(143,7);
INSERT INTO `hero_power` VALUES(27,97);
INSERT INTO `hero_power` VALUES(209,18);
INSERT INTO `hero_power` VALUES(43,1);
INSERT INTO `hero_power` VALUES(213,40);
