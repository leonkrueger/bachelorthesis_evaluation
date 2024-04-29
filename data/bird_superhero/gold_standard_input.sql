CREATE TABLE `alignment`
(`id` BIGINT,
`alignment` VARCHAR(1023));
INSERT INTO `alignment` VALUES(3,'Neutral');
INSERT INTO `alignment` VALUES(4,'N/A');
INSERT INTO `alignment` VALUES(2,'Bad');
INSERT INTO `alignment` VALUES(1,'Good');
CREATE TABLE `attribute`
(`id` BIGINT,
`attribute_name` VARCHAR(1023));
INSERT INTO `attribute` VALUES(5,'Power');
INSERT INTO `attribute` VALUES(3,'Speed');
INSERT INTO `attribute` VALUES(2,'Strength');
INSERT INTO `attribute` VALUES(6,'Combat');
INSERT INTO `attribute` VALUES(1,'Intelligence');
INSERT INTO `attribute` VALUES(4,'Durability');
CREATE TABLE `colour`
(`id` BIGINT,
`colour` VARCHAR(1023));
INSERT INTO `colour` VALUES(18,'Magenta');
INSERT INTO `colour` VALUES(12,'Gold');
INSERT INTO `colour` VALUES(1,'No Colour');
INSERT INTO `colour` VALUES(34,'Yellow/Blue');
INSERT INTO `colour` VALUES(30,'Violet');
INSERT INTO `colour` VALUES(23,'Red');
INSERT INTO `colour` VALUES(27,'Red/White');
INSERT INTO `colour` VALUES(16,'Hazel');
INSERT INTO `colour` VALUES(31,'White');
INSERT INTO `colour` VALUES(19,'Orange');
INSERT INTO `colour` VALUES(9,'Brown');
INSERT INTO `colour` VALUES(15,'Green/Blue');
INSERT INTO `colour` VALUES(3,'Auburn');
INSERT INTO `colour` VALUES(17,'Indigo');
INSERT INTO `colour` VALUES(2,'Amber');
INSERT INTO `colour` VALUES(24,'Red/Black');
INSERT INTO `colour` VALUES(4,'Black');
INSERT INTO `colour` VALUES(6,'Blond');
INSERT INTO `colour` VALUES(22,'Purple');
INSERT INTO `colour` VALUES(7,'Blue');
INSERT INTO `colour` VALUES(21,'Pink');
INSERT INTO `colour` VALUES(33,'Yellow');
INSERT INTO `colour` VALUES(20,'Orange/White');
INSERT INTO `colour` VALUES(35,'Yellow/Red');
INSERT INTO `colour` VALUES(13,'Grey');
CREATE TABLE `gender`
(`id` BIGINT,
`gender` VARCHAR(1023));
INSERT INTO `gender` VALUES(1,'Male');
INSERT INTO `gender` VALUES(3,'N/A');
INSERT INTO `gender` VALUES(2,'Female');
CREATE TABLE `publisher`
(`id` BIGINT,
`publisher_name` VARCHAR(1023));
INSERT INTO `publisher` VALUES(22,'Team Epic TV');
INSERT INTO `publisher` VALUES(3,'Dark Horse Comics');
INSERT INTO `publisher` VALUES(16,'Rebellion');
INSERT INTO `publisher` VALUES(9,'IDW Publishing');
INSERT INTO `publisher` VALUES(2,'ABC Studios');
INSERT INTO `publisher` VALUES(4,'DC Comics');
INSERT INTO `publisher` VALUES(18,'Sony Pictures');
INSERT INTO `publisher` VALUES(11,'J. K. Rowling');
INSERT INTO `publisher` VALUES(25,'Wildstorm');
INSERT INTO `publisher` VALUES(6,'Hanna-Barbera');
INSERT INTO `publisher` VALUES(10,'Image Comics');
INSERT INTO `publisher` VALUES(14,'Microsoft');
INSERT INTO `publisher` VALUES(1,'');
INSERT INTO `publisher` VALUES(24,'Universal Studios');
INSERT INTO `publisher` VALUES(23,'Titan Books');
INSERT INTO `publisher` VALUES(12,'J. R. R. Tolkien');
INSERT INTO `publisher` VALUES(20,'Star Trek');
INSERT INTO `publisher` VALUES(5,'George Lucas');
INSERT INTO `publisher` VALUES(19,'South Park');
INSERT INTO `publisher` VALUES(7,'HarperCollins');
INSERT INTO `publisher` VALUES(15,'NBC - Heroes');
INSERT INTO `publisher` VALUES(17,'Shueisha');
INSERT INTO `publisher` VALUES(13,'Marvel Comics');
INSERT INTO `publisher` VALUES(8,'Icon Comics');
INSERT INTO `publisher` VALUES(21,'SyFy');
CREATE TABLE `race`
(`id` BIGINT,
`race` VARCHAR(1023));
INSERT INTO `race` VALUES(17,'Demon');
INSERT INTO `race` VALUES(24,'Human');
INSERT INTO `race` VALUES(49,'Saiyan');
INSERT INTO `race` VALUES(46,'Parademon');
INSERT INTO `race` VALUES(31,'Human-Vulcan');
INSERT INTO `race` VALUES(35,'Kakarantharaian');
INSERT INTO `race` VALUES(28,'Human / Radiation');
INSERT INTO `race` VALUES(48,'Rodian');
INSERT INTO `race` VALUES(45,'Neyaphem');
INSERT INTO `race` VALUES(15,'Dathomirian Zabrak');
INSERT INTO `race` VALUES(40,'Martian');
INSERT INTO `race` VALUES(16,'Demi-God');
INSERT INTO `race` VALUES(25,'Human / Altered');
INSERT INTO `race` VALUES(60,'Zen-Whoberian');
INSERT INTO `race` VALUES(41,'Metahuman');
INSERT INTO `race` VALUES(61,'Zombie');
INSERT INTO `race` VALUES(34,'Inhuman');
INSERT INTO `race` VALUES(50,'Spartoi');
INSERT INTO `race` VALUES(33,'Icthyo Sapien');
INSERT INTO `race` VALUES(56,'Vampire');
INSERT INTO `race` VALUES(3,'Alpha');
INSERT INTO `race` VALUES(14,'Czarnian');
INSERT INTO `race` VALUES(12,'Cosmic Entity');
INSERT INTO `race` VALUES(10,'Bolovaxian');
INSERT INTO `race` VALUES(27,'Human / Cosmic');
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
INSERT INTO `superhero` VALUES(538,'Plastique','Bette Sans Souci',2,7,23,1,1,4,2,168,55);
INSERT INTO `superhero` VALUES(474,'Mister Mxyzptlk','Mr. Mxyzptlk',1,1,1,1,21,4,2,0,0);
INSERT INTO `superhero` VALUES(321,'Hawk','Henry Hall',1,23,9,1,1,4,1,185,89);
INSERT INTO `superhero` VALUES(14,'Ajax',NULL,1,9,4,1,13,13,2,193,90);
INSERT INTO `superhero` VALUES(657,'Static','Virgil Ovid Hawkins',1,9,4,1,42,4,1,170,63);
INSERT INTO `superhero` VALUES(309,'Green Lantern III','John Stewart',1,14,4,1,24,4,1,185,90);
INSERT INTO `superhero` VALUES(466,'Micro Lad','Gim Allon',1,13,9,1,1,4,1,183,77);
INSERT INTO `superhero` VALUES(448,'Marvel Girl','Rachel Anne Summers',2,14,23,1,1,13,1,170,56);
INSERT INTO `superhero` VALUES(525,'Paul Blart','-',1,1,1,1,24,18,1,170,117);
INSERT INTO `superhero` VALUES(545,'Professor Zoom','Eobard Thawne',1,7,29,1,24,4,2,180,81);
INSERT INTO `superhero` VALUES(689,'Thunderbird III',NULL,1,9,4,1,1,13,1,175,74);
INSERT INTO `superhero` VALUES(183,'Citizen Steel','Nathaniel Heywood',1,14,23,1,24,4,1,183,170);
INSERT INTO `superhero` VALUES(476,'Mister Zsasz','Victor Zsasz',1,7,6,1,24,4,2,173,68);
INSERT INTO `superhero` VALUES(48,'Arsenal','Roy William Harper, Jr.',1,1,1,1,24,4,1,0,0);
INSERT INTO `superhero` VALUES(251,'Ethan Hunt',NULL,1,9,9,1,24,1,1,168,NULL);
INSERT INTO `superhero` VALUES(617,'Shrinking Violet',NULL,2,1,1,1,1,4,1,NULL,NULL);
INSERT INTO `superhero` VALUES(178,'Cheetah II','Deborah Domaine',2,14,9,1,24,4,2,170,55);
INSERT INTO `superhero` VALUES(337,'Hit-Girl','Mindy McCready',2,1,1,1,24,8,1,0,0);
INSERT INTO `superhero` VALUES(579,'Ripcord',NULL,2,14,4,1,1,13,1,180,72);
INSERT INTO `superhero` VALUES(107,'Black Knight III','Dane Whitman',1,9,9,1,24,13,1,183,86);
INSERT INTO `superhero` VALUES(323,'Hawkeye II','Katherine Elizabeth Bishop',2,7,4,1,24,13,1,165,57);
INSERT INTO `superhero` VALUES(125,'Bloodhawk','Lemuel Krug',1,4,1,1,42,13,1,0,0);
INSERT INTO `superhero` VALUES(236,'Doomsday','Doomsday',1,23,31,1,2,4,2,244,412);
INSERT INTO `superhero` VALUES(220,'Deadshot','Floyd Lawton',1,9,9,1,24,4,2,185,91);
INSERT INTO `superhero` VALUES(205,'Danny Cooper',NULL,1,9,6,1,1,7,1,NULL,NULL);
CREATE TABLE `hero_attribute`
(`hero_id` BIGINT,
`attribute_id` BIGINT,
`attribute_value` BIGINT);
INSERT INTO `hero_attribute` VALUES(752,2,10);
INSERT INTO `hero_attribute` VALUES(60,5,50);
INSERT INTO `hero_attribute` VALUES(233,4,30);
INSERT INTO `hero_attribute` VALUES(332,6,25);
INSERT INTO `hero_attribute` VALUES(290,6,25);
INSERT INTO `hero_attribute` VALUES(720,1,55);
INSERT INTO `hero_attribute` VALUES(216,4,25);
INSERT INTO `hero_attribute` VALUES(36,4,35);
INSERT INTO `hero_attribute` VALUES(712,3,65);
INSERT INTO `hero_attribute` VALUES(206,2,10);
INSERT INTO `hero_attribute` VALUES(623,2,30);
INSERT INTO `hero_attribute` VALUES(732,2,75);
INSERT INTO `hero_attribute` VALUES(209,3,25);
INSERT INTO `hero_attribute` VALUES(632,3,25);
INSERT INTO `hero_attribute` VALUES(358,5,75);
INSERT INTO `hero_attribute` VALUES(138,2,75);
INSERT INTO `hero_attribute` VALUES(150,5,25);
INSERT INTO `hero_attribute` VALUES(162,4,30);
INSERT INTO `hero_attribute` VALUES(538,3,25);
INSERT INTO `hero_attribute` VALUES(469,5,25);
INSERT INTO `hero_attribute` VALUES(273,6,100);
INSERT INTO `hero_attribute` VALUES(389,1,70);
INSERT INTO `hero_attribute` VALUES(257,2,15);
INSERT INTO `hero_attribute` VALUES(128,4,55);
INSERT INTO `hero_attribute` VALUES(442,1,75);
CREATE TABLE `superpower`
(`id` BIGINT,
`power_name` VARCHAR(1023));
INSERT INTO `superpower` VALUES(17,'Intelligence');
INSERT INTO `superpower` VALUES(48,'Shapeshifting');
INSERT INTO `superpower` VALUES(151,'Vision - Heat');
INSERT INTO `superpower` VALUES(150,'Terrakinesis');
INSERT INTO `superpower` VALUES(14,'Power Augmentation');
INSERT INTO `superpower` VALUES(5,'Cold Resistance');
INSERT INTO `superpower` VALUES(16,'Longevity');
INSERT INTO `superpower` VALUES(57,'Projection');
INSERT INTO `superpower` VALUES(147,'Matter Absorption');
INSERT INTO `superpower` VALUES(144,'Vision - Night');
INSERT INTO `superpower` VALUES(120,'Toxin and Disease Resistance');
INSERT INTO `superpower` VALUES(105,'Natural Weapons');
INSERT INTO `superpower` VALUES(39,'Enhanced Senses');
INSERT INTO `superpower` VALUES(108,'Illusions');
INSERT INTO `superpower` VALUES(20,'Telepathy');
INSERT INTO `superpower` VALUES(110,'Hair Manipulation');
INSERT INTO `superpower` VALUES(102,'Banish');
INSERT INTO `superpower` VALUES(24,'Size Changing');
INSERT INTO `superpower` VALUES(69,'Psionic Powers');
INSERT INTO `superpower` VALUES(72,'Elemental Transmogrification');
INSERT INTO `superpower` VALUES(19,'Cryokinesis');
INSERT INTO `superpower` VALUES(6,'Durability');
INSERT INTO `superpower` VALUES(100,'Levitation');
INSERT INTO `superpower` VALUES(28,'Audio Control');
INSERT INTO `superpower` VALUES(56,'Fire Control');
CREATE TABLE `hero_power`
(`hero_id` BIGINT,
`power_id` BIGINT);
INSERT INTO `hero_power` VALUES(679,39);
INSERT INTO `hero_power` VALUES(556,71);
INSERT INTO `hero_power` VALUES(24,92);
INSERT INTO `hero_power` VALUES(705,26);
INSERT INTO `hero_power` VALUES(21,14);
INSERT INTO `hero_power` VALUES(574,1);
INSERT INTO `hero_power` VALUES(431,26);
INSERT INTO `hero_power` VALUES(316,7);
INSERT INTO `hero_power` VALUES(333,10);
INSERT INTO `hero_power` VALUES(459,60);
INSERT INTO `hero_power` VALUES(317,61);
INSERT INTO `hero_power` VALUES(394,7);
INSERT INTO `hero_power` VALUES(262,18);
INSERT INTO `hero_power` VALUES(549,71);
INSERT INTO `hero_power` VALUES(507,18);
INSERT INTO `hero_power` VALUES(228,6);
INSERT INTO `hero_power` VALUES(471,48);
INSERT INTO `hero_power` VALUES(231,93);
INSERT INTO `hero_power` VALUES(748,18);
INSERT INTO `hero_power` VALUES(271,31);
INSERT INTO `hero_power` VALUES(200,86);
INSERT INTO `hero_power` VALUES(239,61);
INSERT INTO `hero_power` VALUES(52,60);
INSERT INTO `hero_power` VALUES(559,12);
INSERT INTO `hero_power` VALUES(38,42);
