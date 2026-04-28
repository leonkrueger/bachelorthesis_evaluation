CREATE TABLE `victims`
(`id` BIGINT,
`case_id` DOUBLE,
`party_number` BIGINT,
`victim_role` VARCHAR(1023),
`victim_sex` VARCHAR(1023),
`victim_age` DOUBLE,
`victim_degree_of_injury` VARCHAR(1023),
`victim_seating_position` VARCHAR(1023),
`victim_safety_equipment_1` VARCHAR(1023),
`victim_safety_equipment_2` VARCHAR(1023),
`victim_ejected` VARCHAR(1023));
INSERT INTO `victims` VALUES(1435460,1407459.0,2,'driver','female',20.0,'complaint of pain','driver','not required','child restraint in vehicle used','not ejected');
INSERT INTO `victims` VALUES(3081717,8012384.0,2,'passenger','male',30.0,'no injury','passenger seat 6','lap/shoulder harness used',NULL,'not ejected');
INSERT INTO `victims` VALUES(2860117,2746830.0,1,'passenger',NULL,26.0,'no injury','passenger seat 3','not required','lap/shoulder harness used','not ejected');
INSERT INTO `victims` VALUES(75086,75389.0,1,'passenger','female',57.0,'killed','passenger seat 3','lap/shoulder harness not used',NULL,'fully ejected');
INSERT INTO `victims` VALUES(359957,344693.0,2,'other','male',30.0,'other visible injury','position unknown','unknown',NULL,'not ejected');
INSERT INTO `victims` VALUES(353775,3941455.0,2,'driver','female',55.0,'complaint of pain','driver','lap/shoulder harness used',NULL,'not ejected');
INSERT INTO `victims` VALUES(2684146,2566525.0,2,'driver','female',41.0,'complaint of pain','driver','air bag deployed','lap/shoulder harness used','not ejected');
INSERT INTO `victims` VALUES(881662,863140.0,2,'driver','male',42.0,'complaint of pain','driver','lap/shoulder harness used',NULL,'not ejected');
INSERT INTO `victims` VALUES(56116,3623111.0,1,'driver','male',17.0,'other visible injury','driver','lap/shoulder harness used',NULL,'not ejected');
INSERT INTO `victims` VALUES(1407968,5536135.0,1,'passenger','female',8.0,'no injury','station wagon rear','air bag not deployed','lap/shoulder harness used','not ejected');
INSERT INTO `victims` VALUES(1070503,1036773.0,1,'passenger','female',15.0,'no injury','passenger seat 3','lap/shoulder harness used',NULL,'not ejected');
INSERT INTO `victims` VALUES(987329,5127150.0,1,'driver','female',64.0,'other visible injury','driver','air bag deployed','lap/shoulder harness used','not ejected');
INSERT INTO `victims` VALUES(629253,4760135.0,1,'passenger','female',8.0,'no injury','rear occupant of truck or van','lap/shoulder harness used',NULL,'not ejected');
INSERT INTO `victims` VALUES(996822,5136619.0,2,'passenger','female',22.0,'no injury','passenger seat 3','air bag not deployed','lap/shoulder harness used','not ejected');
INSERT INTO `victims` VALUES(3548559,8535986.0,1,'driver','female',20.0,'complaint of pain','driver','air bag deployed','lap/shoulder harness used','not ejected');
INSERT INTO `victims` VALUES(3242772,8154086.0,2,'bicyclist','male',49.0,'other visible injury','driver','not required','driver, motorcycle helmet used','not ejected');
INSERT INTO `victims` VALUES(2653528,6807489.0,2,'driver','female',30.0,'complaint of pain','driver','air bag not deployed','lap/shoulder harness used','not ejected');
INSERT INTO `victims` VALUES(3352006,3233847.0,1,'driver','male',18.0,'other visible injury','driver','air bag not deployed','lap/shoulder harness not used','not ejected');
INSERT INTO `victims` VALUES(792383,4922729.0,1,'passenger','female',26.0,'no injury','passenger seat 3','air bag deployed','lap/shoulder harness used','not ejected');
INSERT INTO `victims` VALUES(4019645,90017902.0,1,'passenger','female',36.0,'no injury','passenger seat 3','air bag not deployed','lap/shoulder harness used','not ejected');
INSERT INTO `victims` VALUES(3742103,8733289.0,2,'driver','female',67.0,'complaint of pain','driver','unknown',NULL,'not ejected');
INSERT INTO `victims` VALUES(302159,4395953.0,1,'passenger','male',16.0,'no injury','passenger seat 3','air bag not deployed','lap/shoulder harness used','not ejected');
INSERT INTO `victims` VALUES(4365681,90326999.0,2,'driver','male',71.0,'complaint of pain','driver','air bag deployed','lap/shoulder harness used','not ejected');
INSERT INTO `victims` VALUES(2006653,1941011009134805760.0,1,'passenger','female',24.0,'complaint of pain','passenger seat 4','lap/shoulder harness used',NULL,'not ejected');
INSERT INTO `victims` VALUES(1312773,5441461.0,1,'passenger','female',73.0,'no injury','passenger seat 4','not required','lap/shoulder harness used','not ejected');
CREATE TABLE `collisions`
(`case_id` DOUBLE,
`jurisdiction` DOUBLE,
`officer_id` VARCHAR(1023),
`reporting_district` VARCHAR(1023),
`chp_shift` VARCHAR(1023),
`population` VARCHAR(1023),
`county_city_location` BIGINT,
`county_location` VARCHAR(1023),
`special_condition` DOUBLE,
`beat_type` VARCHAR(1023),
`chp_beat_type` VARCHAR(1023),
`city_division_lapd` VARCHAR(1023),
`chp_beat_class` VARCHAR(1023),
`beat_number` VARCHAR(1023),
`primary_road` VARCHAR(1023),
`secondary_road` VARCHAR(1023),
`distance` DOUBLE,
`direction` VARCHAR(1023),
`intersection` DOUBLE,
`weather_1` VARCHAR(1023),
`weather_2` VARCHAR(1023),
`state_highway_indicator` DOUBLE,
`caltrans_county` VARCHAR(1023),
`caltrans_district` DOUBLE,
`state_route` DOUBLE,
`route_suffix` VARCHAR(1023),
`postmile_prefix` VARCHAR(1023),
`postmile` DOUBLE,
`location_type` VARCHAR(1023),
`ramp_intersection` VARCHAR(1023),
`side_of_highway` VARCHAR(1023),
`tow_away` DOUBLE,
`collision_severity` VARCHAR(1023),
`killed_victims` DOUBLE,
`injured_victims` DOUBLE,
`party_count` DOUBLE,
`primary_collision_factor` VARCHAR(1023),
`pcf_violation_code` VARCHAR(1023),
`pcf_violation_category` VARCHAR(1023),
`pcf_violation` DOUBLE,
`pcf_violation_subsection` VARCHAR(1023),
`hit_and_run` VARCHAR(1023),
`type_of_collision` VARCHAR(1023),
`motor_vehicle_involved_with` VARCHAR(1023),
`pedestrian_action` VARCHAR(1023),
`road_surface` VARCHAR(1023),
`road_condition_1` VARCHAR(1023),
`road_condition_2` VARCHAR(1023),
`lighting` VARCHAR(1023),
`control_device` VARCHAR(1023),
`chp_road_type` VARCHAR(1023),
`pedestrian_collision` BIGINT,
`bicycle_collision` BIGINT,
`motorcycle_collision` BIGINT,
`truck_collision` BIGINT,
`not_private_property` DOUBLE,
`alcohol_involved` DOUBLE,
`statewide_vehicle_type_at_fault` VARCHAR(1023),
`chp_vehicle_type_at_fault` VARCHAR(1023),
`severe_injury_count` BIGINT,
`other_visible_injury_count` BIGINT,
`complaint_of_pain_injury_count` BIGINT,
`pedestrian_killed_count` BIGINT,
`pedestrian_injured_count` BIGINT,
`bicyclist_killed_count` BIGINT,
`bicyclist_injured_count` BIGINT,
`motorcyclist_killed_count` BIGINT,
`motorcyclist_injured_count` DOUBLE,
`primary_ramp` VARCHAR(1023),
`secondary_ramp` VARCHAR(1023),
`latitude` DOUBLE,
`longitude` DOUBLE,
`collision_date` VARCHAR(1023),
`collision_time` VARCHAR(1023),
`process_date` VARCHAR(1023));
INSERT INTO `collisions` VALUES(4588510.0,1947.0,'1327',NULL,'not chp','50000 to 100000',1947,'los angeles',0.0,'not chp','not chp',NULL,'not chp','00B','BEVERLY BL','21ST ST',0.0,NULL,1.0,'clear',NULL,0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.0,'property damage only',0.0,0.0,2.0,'vehicle code violation',NULL,'speeding',22350.0,NULL,'not hit and run','rear end','other motor vehicle','no pedestrian involved','dry','normal',NULL,'daylight','none','0',0,0,0,0,1.0,NULL,'passenger car',NULL,0,0,0,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2010-01-28','11:11:00','2010-10-19');
INSERT INTO `collisions` VALUES(4673245.0,1975.0,'338',NULL,'not chp','100000 to 250000',1975,'los angeles',0.0,'not chp','not chp',NULL,'not chp','004','CAMERON AV','CALIFORNIA AV',180.0,'east',0.0,'raining',NULL,0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.0,'pain',0.0,1.0,2.0,'vehicle code violation',NULL,NULL,NULL,NULL,'not hit and run','rear end','other motor vehicle','no pedestrian involved','dry','normal',NULL,'daylight','none','0',0,0,0,0,1.0,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2010-04-10','21:38:00','2011-03-22');
INSERT INTO `collisions` VALUES(2069923.0,702.0,'386',NULL,'not chp','10000 to 25000',702,'contra costa',0.0,'not chp','not chp',NULL,'not chp','001','BRENTWOOD BL','ELM ST',55.0,'south',0.0,'raining',NULL,1.0,'contra costa',4.0,4.0,NULL,NULL,39.52000000000000313,'highway',NULL,'eastbound',1.0,'property damage only',0.0,0.0,2.0,'vehicle code violation',NULL,'wrong side of road',21460.0,'A','not hit and run','head-on','other motor vehicle','no pedestrian involved','wet',NULL,NULL,'daylight','none','0',0,0,0,0,1.0,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2005-05-19','07:12:00','2005-10-07');
INSERT INTO `collisions` VALUES(4889125.0,3905.0,'1323','LAK','not chp','100000 to 250000',3905,'san joaquin',0.0,'not chp','not chp',NULL,'not chp',NULL,'BENJAMIN HOLT DR','INGLEWOOD AV',0.0,NULL,1.0,'clear',NULL,0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'pain',0.0,1.0,3.0,'unknown',NULL,'unknown',NULL,NULL,'not hit and run','broadside','other motor vehicle','no pedestrian involved','dry','normal',NULL,'daylight','functioning','0',0,0,0,0,1.0,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2010-08-27','10:32:00','2011-09-09');
INSERT INTO `collisions` VALUES(8141422.0,4127.0,'2231','4127','not chp','25000 to 50000',4127,'san mateo',0.0,'not chp','not chp',NULL,'not chp','001','NEWBRIDGE ST','JERVIS AV',0.0,NULL,1.0,'clear',NULL,0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.0,'other injury',0.0,1.0,2.0,'vehicle code violation',NULL,'speeding',22350.0,NULL,'not hit and run','pedestrian','pedestrian','crossing in intersection crosswalk','dry','normal',NULL,'daylight','none','0',1,0,0,0,1.0,NULL,'pickup or panel truck','pickups & panels',0,1,0,0,1,0,0,0,0.0,NULL,NULL,NULL,NULL,'2016-09-19','18:11:00','2016-10-14');
INSERT INTO `collisions` VALUES(4149693.0,3604.0,'975',NULL,'not chp','100000 to 250000',3604,'san bernardino',0.0,'not chp','not chp',NULL,'not chp','002','HILTON DR','REDWOOD AV',336.0,'east',0.0,'clear',NULL,0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.0,'property damage only',0.0,0.0,1.0,'vehicle code violation',NULL,'speeding',22350.0,NULL,'misdemeanor','head-on','fixed object','no pedestrian involved','dry','normal',NULL,'dark with street lights','functioning','0',0,0,0,0,1.0,NULL,'passenger car','passenger car, station',0,0,0,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2009-01-10','07:16:00','2009-08-21');
INSERT INTO `collisions` VALUES(2904062.0,3711.0,'4246','SANDI','not chp','>250000',3711,'san diego',0.0,'not chp','not chp',NULL,'not chp','524','BROADWAY','4TH AV',10.0,'east',0.0,'clear',NULL,0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.0,'pain',0.0,1.0,2.0,'vehicle code violation',NULL,'speeding',22350.0,NULL,'not hit and run','pedestrian','pedestrian','crossing in intersection crosswalk','dry','normal',NULL,'daylight','functioning','0',1,0,0,0,1.0,NULL,NULL,NULL,0,0,1,0,1,0,0,0,0.0,NULL,NULL,NULL,NULL,'2006-11-20','11:00:00','2007-03-09');
INSERT INTO `collisions` VALUES(4439171.0,9590.0,'19219',NULL,'1400 thru 2159','>250000',1942,'los angeles',0.0,'chp state highway','interstate',NULL,'chp other','062','RT 10','HOOVER BL',15.0,'east',0.0,'clear',NULL,1.0,'los angeles',7.0,10.0,NULL,NULL,14.25,'highway',NULL,'eastbound',1.0,'property damage only',0.0,0.0,2.0,'vehicle code violation',NULL,'speeding',22350.0,NULL,'not hit and run','rear end','other motor vehicle','no pedestrian involved','dry','normal',NULL,'daylight','none','1',0,0,0,0,1.0,NULL,'passenger car','passenger car, station',0,0,0,0,0,0,0,0,0.0,NULL,NULL,34.03703999999999752,-118.2838399999999979,'2009-09-26','14:35:00','2010-07-21');
INSERT INTO `collisions` VALUES(2168323.0,9645.0,'012976',NULL,'0600 thru 1359','100000 to 250000',3702,'san diego',0.0,'chp state highway','interstate',NULL,'chp other','009','RT 805','J ST',528.0,'south',0.0,'cloudy',NULL,1.0,'san diego',11.0,805.0,NULL,NULL,6.419999999999999929,'highway',NULL,'southbound',1.0,'other injury',0.0,1.0,1.0,'vehicle code violation',NULL,'improper turning',22107.0,NULL,'not hit and run','hit object','fixed object','no pedestrian involved','dry','normal',NULL,'daylight','none','1',0,0,0,0,1.0,1.0,'passenger car','passenger car, station',0,1,0,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2005-07-23','09:03:00','2006-01-10');
INSERT INTO `collisions` VALUES(8323688.0,1942.0,'37613','0891','not chp','>250000',1942,'los angeles',0.0,'not chp','not chp','H','not chp','8T35','BUNDY DR','TENNESSEE PL',145.0,'north',0.0,'clear',NULL,0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.0,'other injury',0.0,2.0,8.0,'vehicle code violation',NULL,'speeding',22350.0,NULL,'not hit and run','rear end','other motor vehicle','no pedestrian involved','dry','normal',NULL,'dark with street lights','none','0',0,0,1,0,1.0,NULL,'motorcycle or scooter','motorcycle',0,1,1,0,0,0,0,0,2.0,NULL,NULL,NULL,NULL,'2017-02-13','21:00:00','2017-03-15');
INSERT INTO `collisions` VALUES(8553452.0,1976.0,'748',NULL,'not chp','10000 to 25000',1964,'los angeles',0.0,'not chp','not chp',NULL,'not chp','002','FLORENCE AV','NORWALK BL',0.0,NULL,1.0,'clear',NULL,0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.0,'property damage only',0.0,0.0,2.0,'unknown',NULL,'unknown',NULL,NULL,'not hit and run','broadside','other motor vehicle','no pedestrian involved','dry','normal',NULL,'dark with street lights','functioning','0',0,0,0,0,1.0,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2018-01-25','18:00:00','2018-02-23');
INSERT INTO `collisions` VALUES(8654600.0,3702.0,'CV1181',NULL,'not chp','100000 to 250000',3702,'san diego',0.0,'not chp','not chp',NULL,'not chp','024','ZENITH ST','4TH AV',426.0,'east',0.0,'cloudy',NULL,0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.0,'pain',0.0,2.0,2.0,'vehicle code violation',NULL,'speeding',22350.0,NULL,'not hit and run','broadside','other motor vehicle','no pedestrian involved','dry','normal',NULL,'daylight','none','0',0,0,1,0,1.0,NULL,'motorcycle or scooter','motorcycle',0,0,2,0,0,0,0,0,1.0,NULL,NULL,NULL,NULL,'2018-04-29','14:40:00','2018-07-17');
INSERT INTO `collisions` VALUES(425623.0,9440.0,'011652',NULL,'1400 thru 2159','unincorporated',1600,'kings',0.0,'chp state highway','state route',NULL,'chp primary','410','RT 41','OMAHA AV',7128.0,'south',0.0,'clear',NULL,1.0,'kings',6.0,41.0,NULL,NULL,23.55999999999999873,'highway',NULL,'southbound',1.0,'other injury',0.0,3.0,2.0,'vehicle code violation',NULL,'speeding',22350.0,NULL,'felony','rear end','other motor vehicle','no pedestrian involved','dry','normal',NULL,'daylight','none','0',0,0,0,0,1.0,NULL,'passenger car','mini-vans',0,2,1,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2002-09-29','17:50:00','2003-04-11');
INSERT INTO `collisions` VALUES(1219056.0,1900.0,'460880','2813','not chp','50000 to 100000',1915,'los angeles',0.0,'not chp','not chp',NULL,'not chp',NULL,'WILLOWBROOK AV','ROSECRANS AV',0.0,NULL,1.0,'clear',NULL,0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.0,'property damage only',0.0,0.0,2.0,'vehicle code violation',NULL,'automobile right of way',21453.0,'C','misdemeanor','broadside','other motor vehicle','no pedestrian involved','dry','normal',NULL,'daylight','functioning','0',0,0,0,0,1.0,NULL,'pickup or panel truck',NULL,0,0,0,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2003-11-13','11:00:00','2004-03-05');
INSERT INTO `collisions` VALUES(91116223.0,9545.0,'020547',NULL,'1400 thru 2159','100000 to 250000',1950,'los angeles',0.0,'chp state highway','state route',NULL,'chp other','021','SR-14 N/B','TECHNOLOGY DR',150.0,'north',0.0,'clear',NULL,1.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.0,'pain',0.0,1.0,1.0,'vehicle code violation',NULL,'dui',23152.0,'A','not hit and run','hit object','fixed object','no pedestrian involved','dry','normal',NULL,'dark with street lights','none','0',0,0,0,0,1.0,1.0,'passenger car','sport utility vehicle',0,0,1,0,0,0,0,0,0.0,NULL,NULL,34.59490999999999872,-118.1347899999999954,'2019-11-02','21:41:00','2019-11-08');
INSERT INTO `collisions` VALUES(457021.0,1900.0,'443071','1322','not chp','50000 to 100000',1935,'los angeles',0.0,'not chp','not chp',NULL,'not chp','132T1','DUNROBIN AV','ROCKET ST',468.0,'north',0.0,'cloudy',NULL,0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.0,'property damage only',0.0,0.0,2.0,'vehicle code violation',NULL,'improper passing',21750.0,NULL,'not hit and run','sideswipe','other motor vehicle','no pedestrian involved','dry','normal',NULL,'daylight','none','0',0,0,0,0,1.0,NULL,'passenger car',NULL,0,0,0,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2002-10-01','07:40:00','2003-02-10');
INSERT INTO `collisions` VALUES(2236194.0,1942.0,'32896','1501','not chp','>250000',1942,'los angeles',0.0,'not chp','not chp','O','not chp','16T23','SHELDON ST','ARLETA AV',278.0,'west',0.0,'clear',NULL,0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.0,'pain',0.0,1.0,1.0,'vehicle code violation',NULL,'dui',23152.0,'A','not hit and run','hit object','fixed object','no pedestrian involved','dry','normal',NULL,'dark with street lights','none','0',0,0,0,0,1.0,1.0,'passenger car','passenger car, station',0,0,1,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2005-09-28','02:40:00','2006-02-09');
INSERT INTO `collisions` VALUES(1633434.0,9840.0,'17336',NULL,'1400 thru 2159','unincorporated',3300,'riverside',0.0,'chp state highway','interstate',NULL,'chp other','037','RT 15','TEMESCAL CANYON RD',150.0,'south',0.0,'clear',NULL,1.0,'riverside',8.0,15.0,NULL,NULL,31.87000000000000099,'highway',NULL,'northbound',1.0,'property damage only',0.0,0.0,2.0,'other than driver',NULL,'other than driver (or pedestrian)',NULL,NULL,'not hit and run','hit object','other object','no pedestrian involved','dry','normal',NULL,'daylight','none','1',0,0,0,0,1.0,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2004-09-19','16:04:00','2005-05-10');
INSERT INTO `collisions` VALUES(4681068.0,1965.0,'3178','7C1','not chp','50000 to 100000',1965,'los angeles',0.0,'not chp','not chp',NULL,'not chp','0A7','OAK ST','25TH ST',132.0,'west',0.0,'clear',NULL,0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.0,'property damage only',0.0,0.0,2.0,'vehicle code violation',NULL,'unsafe starting or backing',22106.0,NULL,'misdemeanor','rear end','parked motor vehicle','no pedestrian involved','dry','normal',NULL,'daylight','none','0',0,0,0,0,1.0,NULL,'passenger car','sport utility vehicle',0,0,0,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2010-03-17','13:00:00','2011-02-24');
INSERT INTO `collisions` VALUES(3965589.0,9675.0,'18071',NULL,'2200 thru 0559','>250000',3001,'orange',0.0,'chp state highway','state route',NULL,'chp other','093','RT 91','LAKEVIEW AV',150.0,'west',0.0,'cloudy',NULL,1.0,'orange',12.0,91.0,NULL,'R',10.06000000000000049,'highway',NULL,'eastbound',1.0,'property damage only',0.0,0.0,4.0,'vehicle code violation',NULL,'dui',23152.0,'A','not hit and run','rear end','other motor vehicle','no pedestrian involved','dry','normal',NULL,'dark with street lights','none','1',0,0,0,0,1.0,1.0,'pickup or panel truck','pickups & panels',0,0,0,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2008-10-15','23:12:00','2009-07-02');
INSERT INTO `collisions` VALUES(8037733.0,2701.0,'5372','2701','not chp','2500 to 10000',2701,'monterey',0.0,'not chp','not chp',NULL,'not chp','00S','LASUEN DR','RIO RD',17.0,'west',0.0,'clear','wind',0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.0,'property damage only',0.0,0.0,1.0,'vehicle code violation',NULL,'improper turning',22107.0,NULL,'not hit and run','hit object','fixed object','no pedestrian involved','dry','construction',NULL,'daylight','none','0',0,0,0,0,1.0,NULL,'other bus','tour bus',0,0,0,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2016-04-25','09:50:00','2016-05-13');
INSERT INTO `collisions` VALUES(8799914.0,1942.0,'42251','1967','not chp','>250000',1942,'los angeles',0.0,'not chp','not chp',NULL,'not chp','19A79','DORRINGTON AV','OSBORNE ST',185.0,'north',0.0,'clear',NULL,0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.0,'pain',0.0,1.0,2.0,'vehicle code violation',NULL,'automobile right of way',21804.0,'A','not hit and run','broadside','other motor vehicle','no pedestrian involved','dry','normal',NULL,'dark with street lights','none','0',0,0,0,0,1.0,NULL,'pickup or panel truck','pickups & panels',0,0,1,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2018-12-08','22:00:00','2019-02-20');
INSERT INTO `collisions` VALUES(3640535.0,9435.0,'014663',NULL,'0600 thru 1359','unincorporated',1000,'fresno',0.0,'chp county roadarea','county road area',NULL,'chp other','034','JENSEN AV','DEL REY AV',0.0,'east',0.0,'clear',NULL,0.0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1.0,'property damage only',0.0,0.0,1.0,'vehicle code violation',NULL,'improper turning',22107.0,NULL,'not hit and run','hit object','fixed object','no pedestrian involved','dry','normal',NULL,'daylight','none','0',0,0,0,0,1.0,NULL,'passenger car','passenger car, station',0,0,0,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2008-03-05','13:35:00','2008-09-26');
INSERT INTO `collisions` VALUES(3052047.0,4314.0,'S5512',NULL,'not chp','100000 to 250000',4314,'santa clara',0.0,'not chp','not chp',NULL,'not chp','005','RT 82','SAN TOMAS EXPWY',213.0,'east',0.0,'raining',NULL,1.0,'santa clara',4.0,82.0,NULL,NULL,12.75999999999999979,'highway',NULL,'northbound',1.0,'pain',0.0,1.0,2.0,'vehicle code violation',NULL,'unsafe starting or backing',22106.0,NULL,'not hit and run','rear end','other motor vehicle','no pedestrian involved','wet','normal',NULL,'dark with street lights','none','0',0,0,0,0,1.0,NULL,'pickup or panel truck',NULL,0,0,1,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2007-02-12','18:50:00','2007-06-27');
INSERT INTO `collisions` VALUES(3711010309160405504.0,3711.0,'5643','0','not chp','>250000',3711,'san diego',NULL,'not chp','not chp',NULL,'not chp','511','HARBOR DR','BELT',175.0,'west',0.0,'cloudy',NULL,0.0,NULL,0.0,0.0,NULL,NULL,0.0,NULL,'not state highway',NULL,1.0,'pain',0.0,1.0,2.0,'vehicle code violation','vehicle','following too closely',21703.0,NULL,'not hit and run','rear end','other motor vehicle','no pedestrian involved','dry','normal',NULL,'daylight','functioning','0',0,0,0,0,1.0,NULL,NULL,NULL,0,0,1,0,0,0,0,0,0.0,NULL,NULL,NULL,NULL,'2001-03-09','16:04:00','2001-05-11');
CREATE TABLE `case_ids`
(`case_id` DOUBLE,
`db_year` BIGINT);
INSERT INTO `case_ids` VALUES(1396907.0,2018);
INSERT INTO `case_ids` VALUES(9160597.0,2021);
INSERT INTO `case_ids` VALUES(919211.0,2018);
INSERT INTO `case_ids` VALUES(4103460.0,2021);
INSERT INTO `case_ids` VALUES(3451594.0,2018);
INSERT INTO `case_ids` VALUES(2423410.0,2018);
INSERT INTO `case_ids` VALUES(9350011229201516550.0,2018);
INSERT INTO `case_ids` VALUES(4976892.0,2021);
INSERT INTO `case_ids` VALUES(2172691.0,2018);
INSERT INTO `case_ids` VALUES(91308018.0,2021);
INSERT INTO `case_ids` VALUES(2483429.0,2018);
INSERT INTO `case_ids` VALUES(109010814143008032.0,2018);
INSERT INTO `case_ids` VALUES(879310.0,2018);
INSERT INTO `case_ids` VALUES(1127832.0,2018);
INSERT INTO `case_ids` VALUES(6898302.0,2021);
INSERT INTO `case_ids` VALUES(3371364.0,2018);
INSERT INTO `case_ids` VALUES(9266010731175012350.0,2018);
INSERT INTO `case_ids` VALUES(2732792.0,2018);
INSERT INTO `case_ids` VALUES(2027808.0,2018);
INSERT INTO `case_ids` VALUES(91422272.0,2021);
INSERT INTO `case_ids` VALUES(90239755.0,2021);
INSERT INTO `case_ids` VALUES(4808983.0,2021);
INSERT INTO `case_ids` VALUES(4041020.0,2020);
INSERT INTO `case_ids` VALUES(4207959.0,2021);
INSERT INTO `case_ids` VALUES(3473178.0,2018);
CREATE TABLE `parties`
(`id` BIGINT,
`case_id` DOUBLE,
`party_number` BIGINT,
`party_type` VARCHAR(1023),
`at_fault` BIGINT,
`party_sex` VARCHAR(1023),
`party_age` DOUBLE,
`party_sobriety` VARCHAR(1023),
`party_drug_physical` VARCHAR(1023),
`direction_of_travel` VARCHAR(1023),
`party_safety_equipment_1` VARCHAR(1023),
`party_safety_equipment_2` VARCHAR(1023),
`financial_responsibility` VARCHAR(1023),
`hazardous_materials` DOUBLE,
`cellphone_in_use` DOUBLE,
`cellphone_use_type` VARCHAR(1023),
`school_bus_related` DOUBLE,
`oaf_violation_code` VARCHAR(1023),
`oaf_violation_category` VARCHAR(1023),
`oaf_violation_section` DOUBLE,
`oaf_violation_suffix` VARCHAR(1023),
`other_associate_factor_1` VARCHAR(1023),
`other_associate_factor_2` VARCHAR(1023),
`party_number_killed` BIGINT,
`party_number_injured` BIGINT,
`movement_preceding_collision` VARCHAR(1023),
`vehicle_year` DOUBLE,
`vehicle_make` VARCHAR(1023),
`statewide_vehicle_type` VARCHAR(1023),
`chp_vehicle_type_towing` VARCHAR(1023),
`chp_vehicle_type_towed` VARCHAR(1023),
`party_race` VARCHAR(1023));
INSERT INTO `parties` VALUES(3273617,1827255.0,2,'driver',0,'female',49.0,'had not been drinking',NULL,'south','lap/shoulder harness used',NULL,'proof of insurance obtained',NULL,0.0,'cellphone not in use',NULL,NULL,NULL,NULL,NULL,'previous collision',NULL,0,0,'slowing/stopping',1991.0,'toyota','passenger car','passenger car, station','00','asian');
INSERT INTO `parties` VALUES(6506256,3479555.0,1,'driver',1,'female',41.0,'had not been drinking',NULL,'east','air bag not deployed','lap/shoulder harness used','proof of insurance obtained',NULL,1.0,'cellphone in use (hands-free)',NULL,NULL,NULL,NULL,NULL,'none apparent',NULL,0,0,'stopped',1995.0,'nissan','passenger car','sport utility vehicle','00',NULL);
INSERT INTO `parties` VALUES(3649706,6184465.0,2,'driver',0,'female',22.0,'had not been drinking',NULL,'east','air bag deployed','lap/shoulder harness used','proof of insurance obtained',NULL,0.0,'cellphone not in use',NULL,NULL,NULL,NULL,NULL,'none apparent',NULL,0,0,'proceeding straight',1994.0,'honda',NULL,NULL,NULL,'hispanic');
INSERT INTO `parties` VALUES(3344948,6016463.0,1,'driver',1,NULL,NULL,'had not been drinking',NULL,'west',NULL,NULL,'no proof of insurance obtained',NULL,0.0,'cellphone not in use',NULL,NULL,NULL,NULL,NULL,'none apparent',NULL,0,0,'changing lanes',NULL,NULL,'passenger car','passenger car, station','00',NULL);
INSERT INTO `parties` VALUES(6714057,3600010516171501056.0,2,'driver',0,'male',61.0,NULL,NULL,'south','unknown',NULL,'proof of insurance obtained',NULL,NULL,NULL,NULL,NULL,NULL,0.0,NULL,'none apparent',NULL,0,0,'stopped',2000.0,'lincoln','passenger car','00','00',NULL);
INSERT INTO `parties` VALUES(16428715,9860011020085010430.0,1,'driver',1,'male',26.0,'had not been drinking',NULL,'east','lap/shoulder harness used',NULL,'proof of insurance obtained',NULL,NULL,'no cellphone/unknown',NULL,NULL,NULL,0.0,NULL,'none apparent',NULL,0,0,'changing lanes',1990.0,'buick','passenger car','passenger car, station','00',NULL);
INSERT INTO `parties` VALUES(16012214,9150010514150010880.0,1,'driver',1,'male',59.0,'had not been drinking',NULL,'east','lap/shoulder harness used',NULL,'proof of insurance obtained',NULL,NULL,NULL,NULL,'vehicle','unsafe speed',22350.0,'0','violation','unfamiliar with road',0,0,'ran off road',2000.0,'ford','passenger car','passenger car, station','00',NULL);
INSERT INTO `parties` VALUES(184948,4186496.0,2,'driver',0,'female',18.0,'had not been drinking',NULL,'north','air bag not deployed','lap/shoulder harness used','proof of insurance obtained',NULL,0.0,'cellphone not in use',NULL,NULL,NULL,NULL,NULL,'none apparent',NULL,0,0,'stopped',1992.0,'jeep','passenger car','passenger car, station','00','white');
INSERT INTO `parties` VALUES(10313255,9171544.0,1,'driver',0,NULL,NULL,'had been drinking, impairment unknown',NULL,'south','air bag not deployed','unknown','proof of insurance obtained',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'none apparent',NULL,0,0,'proceeding straight',2006.0,NULL,'passenger car','passenger car, station',NULL,NULL);
INSERT INTO `parties` VALUES(5808494,3106955.0,1,'driver',1,'male',43.0,'had not been drinking',NULL,'east','other','lap/shoulder harness used','proof of insurance obtained',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'none apparent',NULL,0,0,'entering traffic',2003.0,'gmc','passenger car','mini-vans','00','white');
INSERT INTO `parties` VALUES(6401404,8472734.0,1,'driver',1,'male',46.0,'had been drinking, under influence',NULL,NULL,'air bag not deployed','lap/shoulder harness used','proof of insurance obtained',NULL,0.0,'cellphone not in use',NULL,NULL,'driving or bicycling under the influence of alcohol or drug',23152.0,'B','violation',NULL,0,0,'making u-turn',2003.0,'volkswagen','passenger car','passenger car, station',NULL,'hispanic');
INSERT INTO `parties` VALUES(6834698,8694573.0,2,'pedestrian',0,'male',79.0,NULL,NULL,NULL,NULL,NULL,'not applicable',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,'pedestrian','pedestrian',NULL,NULL);
INSERT INTO `parties` VALUES(339258,174998.0,1,'driver',1,'male',38.0,'had not been drinking',NULL,'south','lap/shoulder harness used',NULL,'proof of insurance obtained',NULL,NULL,'no cellphone/unknown',NULL,NULL,NULL,NULL,NULL,'none apparent',NULL,0,0,'proceeding straight',1968.0,'chevrolet','passenger car with trailer',NULL,NULL,'hispanic');
INSERT INTO `parties` VALUES(6184871,3313010602214400512.0,2,'driver',0,NULL,NULL,'impairment unknown',NULL,'east','unknown',NULL,'no proof of insurance obtained',NULL,NULL,NULL,NULL,NULL,NULL,0.0,NULL,'none apparent',NULL,0,0,'proceeding straight',2000.0,'ford','pickup or panel truck','00','00',NULL);
INSERT INTO `parties` VALUES(6261043,3351096.0,2,'parked vehicle',0,NULL,NULL,'had not been drinking',NULL,'west',NULL,NULL,'not applicable',NULL,0.0,'cellphone not in use',NULL,NULL,NULL,NULL,NULL,'none apparent',NULL,0,2,'parked',2001.0,'nissan',NULL,NULL,'00',NULL);
INSERT INTO `parties` VALUES(342935,3762290.0,1,'driver',1,'male',30.0,'had not been drinking',NULL,'north','air bag not deployed','lap/shoulder harness used','proof of insurance obtained',NULL,0.0,'cellphone not in use',NULL,NULL,NULL,NULL,NULL,'none apparent',NULL,0,0,'proceeding straight',2002.0,'hyundai','passenger car','sport utility vehicle','00','black');
INSERT INTO `parties` VALUES(1787104,5117680.0,1,'driver',0,'male',28.0,'had not been drinking',NULL,'south','air bag not deployed','lap/shoulder harness used','proof of insurance obtained',NULL,0.0,'cellphone not in use',NULL,NULL,NULL,NULL,NULL,'none apparent',NULL,0,0,'proceeding straight',2006.0,'bmw','passenger car','passenger car, station','00','white');
INSERT INTO `parties` VALUES(9825893,91222326.0,1,'driver',0,'male',36.0,'had not been drinking',NULL,'east','air bag not deployed','lap/shoulder harness used','proof of insurance obtained',NULL,0.0,'cellphone not in use',NULL,NULL,NULL,NULL,NULL,'none apparent',NULL,0,0,'proceeding straight',2008.0,'chevrolet','passenger car','sport utility vehicle',NULL,'black');
INSERT INTO `parties` VALUES(3492938,6098303.0,2,'bicyclist',0,'female',12.0,'had not been drinking',NULL,'south',NULL,NULL,'not applicable',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'none apparent',NULL,0,1,'proceeding straight',NULL,NULL,'bicycle','bicycle','00','hispanic');
INSERT INTO `parties` VALUES(2005911,1111931.0,1,'driver',1,'female',39.0,'had not been drinking',NULL,'east','lap/shoulder harness used','air bag not deployed','proof of insurance obtained',NULL,NULL,'no cellphone/unknown',NULL,NULL,'improper turning',22100.0,'A','violation',NULL,0,0,'making right turn',1985.0,'nissan','passenger car',NULL,NULL,NULL);
INSERT INTO `parties` VALUES(945657,4632429.0,2,'bicyclist',1,'male',18.0,'had not been drinking',NULL,'south',NULL,NULL,'not applicable',NULL,0.0,'cellphone not in use',NULL,NULL,NULL,NULL,NULL,'none apparent',NULL,0,1,'proceeding straight',NULL,NULL,'bicycle','bicycle','00','hispanic');
INSERT INTO `parties` VALUES(5443755,2934075.0,2,'driver',0,'female',52.0,'had not been drinking',NULL,'west','air bag not deployed','lap/shoulder harness used','proof of insurance obtained',NULL,0.0,'cellphone not in use',NULL,NULL,NULL,NULL,NULL,'none apparent',NULL,0,0,'stopped',2002.0,'nissan','passenger car','passenger car, station','00','hispanic');
INSERT INTO `parties` VALUES(3013808,1679704.0,1,'driver',1,'male',38.0,'had not been drinking',NULL,'west','air bag deployed','lap/shoulder harness used','proof of insurance obtained',NULL,0.0,'cellphone not in use',NULL,NULL,'wrong side of road',21650.0,NULL,'violation',NULL,1,0,'ran off road',2002.0,'nissan','passenger car','passenger car, station','00','white');
INSERT INTO `parties` VALUES(9956720,9129839.0,1,'driver',1,'female',58.0,'had not been drinking',NULL,'north','air bag not deployed','lap/shoulder harness used','proof of insurance obtained',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'none apparent',NULL,0,0,'making left turn',2006.0,NULL,'passenger car','passenger car, station',NULL,'hispanic');
INSERT INTO `parties` VALUES(8061836,90326830.0,2,'driver',0,'male',59.0,'had not been drinking',NULL,'south','air bag deployed','lap/shoulder harness used','proof of insurance obtained',NULL,0.0,'cellphone not in use',NULL,NULL,NULL,NULL,NULL,'none apparent',NULL,0,0,'stopped',1996.0,'honda','passenger car','passenger car, station',NULL,'hispanic');
