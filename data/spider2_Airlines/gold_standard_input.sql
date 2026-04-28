CREATE TABLE `aircrafts_data`
(`aircraft_code` VARCHAR(1023),
`model` VARCHAR(1023),
`range` BIGINT);
INSERT INTO `aircrafts_data` VALUES('320','{"en": "Airbus A320-200", "ru": "Аэробус A320-200"}',5700);
INSERT INTO `aircrafts_data` VALUES('CR2','{"en": "Bombardier CRJ-200", "ru": "Бомбардье CRJ-200"}',2700);
INSERT INTO `aircrafts_data` VALUES('763','{"en": "Boeing 767-300", "ru": "Боинг 767-300"}',7900);
INSERT INTO `aircrafts_data` VALUES('321','{"en": "Airbus A321-200", "ru": "Аэробус A321-200"}',5600);
INSERT INTO `aircrafts_data` VALUES('733','{"en": "Boeing 737-300", "ru": "Боинг 737-300"}',4200);
INSERT INTO `aircrafts_data` VALUES('319','{"en": "Airbus A319-100", "ru": "Аэробус A319-100"}',6700);
INSERT INTO `aircrafts_data` VALUES('773','{"en": "Boeing 777-300", "ru": "Боинг 777-300"}',11100);
INSERT INTO `aircrafts_data` VALUES('SU9','{"en": "Sukhoi Superjet-100", "ru": "Сухой Суперджет-100"}',3000);
INSERT INTO `aircrafts_data` VALUES('CN1','{"en": "Cessna 208 Caravan", "ru": "Сессна 208 Караван"}',1200);
CREATE TABLE `airports_data`
(`airport_code` VARCHAR(1023),
`airport_name` VARCHAR(1023),
`city` VARCHAR(1023),
`coordinates` VARCHAR(1023),
`timezone` VARCHAR(1023));
INSERT INTO `airports_data` VALUES('UCT','{"en": "Ukhta Airport", "ru": "Ухта"}','{"en": "Ukhta", "ru": "Ухта"}','(53.8046989440917969,63.5668983459472656)','Europe/Moscow');
INSERT INTO `airports_data` VALUES('KZN','{"en": "Kazan International Airport", "ru": "Казань"}','{"en": "Kazan", "ru": "Казань"}','(49.278701782227003,55.606201171875)','Europe/Moscow');
INSERT INTO `airports_data` VALUES('SVO','{"en": "Sheremetyevo International Airport", "ru": "Шереметьево"}','{"en": "Moscow", "ru": "Москва"}','(37.4146000000000001,55.9725990000000024)','Europe/Moscow');
INSERT INTO `airports_data` VALUES('OSW','{"en": "Orsk Airport", "ru": "Орск"}','{"en": "Orsk", "ru": "Орск"}','(58.5956001281738281,51.0724983215332031)','Asia/Yekaterinburg');
INSERT INTO `airports_data` VALUES('KLF','{"en": "Grabtsevo Airport", "ru": "Калуга"}','{"en": "Kaluga", "ru": "Калуга"}','(36.3666687011999983,54.5499992371000033)','Europe/Moscow');
INSERT INTO `airports_data` VALUES('KGD','{"en": "Khrabrovo Airport", "ru": "Храброво"}','{"en": "Kaliningrad", "ru": "Калининград"}','(20.5925998687744141,54.8899993896484375)','Europe/Kaliningrad');
INSERT INTO `airports_data` VALUES('GRV','{"en": "Khankala Air Base", "ru": "Грозный"}','{"en": "Grozny", "ru": "Грозный"}','(45.7840995788574219,43.2980995178222656)','Europe/Moscow');
INSERT INTO `airports_data` VALUES('IWA','{"en": "Ivanovo South Airport", "ru": "Иваново-Южный"}','{"en": "Ivanovo", "ru": "Иваново"}','(40.9407997131347656,56.9393997192382812)','Europe/Moscow');
INSERT INTO `airports_data` VALUES('IKT','{"en": "Irkutsk Airport", "ru": "Иркутск"}','{"en": "Irkutsk", "ru": "Иркутск"}','(104.388999938959998,52.2680015563960012)','Asia/Irkutsk');
INSERT INTO `airports_data` VALUES('UIK','{"en": "Ust-Ilimsk Airport", "ru": "Усть-Илимск"}','{"en": "Ust Ilimsk", "ru": "Усть-Илимск"}','(102.56500244140625,58.1361007690429688)','Asia/Irkutsk');
INSERT INTO `airports_data` VALUES('VVO','{"en": "Vladivostok International Airport", "ru": "Владивосток"}','{"en": "Vladivostok", "ru": "Владивосток"}','(132.147994995117188,43.3989982604980469)','Asia/Vladivostok');
INSERT INTO `airports_data` VALUES('SWT','{"en": "Strezhevoy Airport", "ru": "Стрежевой"}','{"en": "Strezhevoy", "ru": "Стрежевой"}','(77.66000366210001,60.7094001769999991)','Asia/Krasnoyarsk');
CREATE TABLE `boarding_passes`
(`ticket_no` VARCHAR(1023),
`flight_id` BIGINT,
`boarding_no` BIGINT,
`seat_no` VARCHAR(1023));
INSERT INTO `boarding_passes` VALUES('0005432621072',2496,22,'22B');
INSERT INTO `boarding_passes` VALUES('0005432799357',3506,61,'18K');
INSERT INTO `boarding_passes` VALUES('0005432153932',27014,78,'20A');
INSERT INTO `boarding_passes` VALUES('0005434214756',9521,33,'8A');
INSERT INTO `boarding_passes` VALUES('0005434344311',5336,249,'39J');
INSERT INTO `boarding_passes` VALUES('0005433397854',19420,44,'14D');
INSERT INTO `boarding_passes` VALUES('0005435613354',10905,216,'35G');
INSERT INTO `boarding_passes` VALUES('0005433715186',29215,48,'21E');
INSERT INTO `boarding_passes` VALUES('0005434876823',3512,129,'32A');
INSERT INTO `boarding_passes` VALUES('0005434319221',15668,13,'8C');
INSERT INTO `boarding_passes` VALUES('0005434823495',9901,106,'25A');
INSERT INTO `boarding_passes` VALUES('0005432603685',6465,13,'4B');
CREATE TABLE `bookings`
(`book_ref` VARCHAR(1023),
`book_date` DATETIME,
`total_amount` DOUBLE);
INSERT INTO `bookings` VALUES('6E50EB','2017-07-26 10:12:00+03',176800);
INSERT INTO `bookings` VALUES('E4BF69','2017-07-20 18:50:00+03',37200);
INSERT INTO `bookings` VALUES('A98A0D','2017-08-15 11:59:00+03',23200);
INSERT INTO `bookings` VALUES('1799A6','2017-07-31 02:08:00+03',112400);
INSERT INTO `bookings` VALUES('A8FBA0','2017-08-14 08:42:00+03',57500);
INSERT INTO `bookings` VALUES('AB4C40','2017-08-08 07:56:00+03',65600);
INSERT INTO `bookings` VALUES('7D800A','2017-07-21 22:22:00+03',47100);
INSERT INTO `bookings` VALUES('2F7835','2017-08-11 06:35:00+03',126400);
INSERT INTO `bookings` VALUES('F310C5','2017-08-11 02:54:00+03',48800);
INSERT INTO `bookings` VALUES('C1A668','2017-07-22 15:03:00+03',56000);
INSERT INTO `bookings` VALUES('DB1035','2017-07-19 15:50:00+03',64700);
INSERT INTO `bookings` VALUES('944510','2017-07-20 16:44:00+03',63200);
CREATE TABLE `flights`
(`flight_id` BIGINT,
`flight_no` VARCHAR(1023),
`scheduled_departure` DATETIME,
`scheduled_arrival` DATETIME,
`departure_airport` VARCHAR(1023),
`arrival_airport` VARCHAR(1023),
`status` VARCHAR(1023),
`aircraft_code` VARCHAR(1023),
`actual_departure` DATETIME,
`actual_arrival` DATETIME);
INSERT INTO `flights` VALUES(27460,'PG0534','2017-09-11 11:35:00+03','2017-09-11 14:55:00+03','REN','ESL','Scheduled','CN1','\N','\N');
INSERT INTO `flights` VALUES(7806,'PG0549','2017-08-16 11:55:00+03','2017-08-16 14:05:00+03','SVO','OGZ','On Time','CR2','\N','\N');
INSERT INTO `flights` VALUES(31431,'PG0620','2017-09-09 12:05:00+03','2017-09-09 14:50:00+03','EGO','AER','Scheduled','CN1','\N','\N');
INSERT INTO `flights` VALUES(26896,'PG0678','2017-09-03 14:30:00+03','2017-09-03 16:45:00+03','MCX','SVO','Scheduled','733','\N','\N');
INSERT INTO `flights` VALUES(15092,'PG0493','2017-08-13 16:50:00+03','2017-08-13 20:25:00+03','PEE','ARH','Arrived','CN1','2017-08-13 16:52:00+03','2017-08-13 20:29:00+03');
INSERT INTO `flights` VALUES(24834,'PG0014','2017-08-20 07:30:00+03','2017-08-20 07:55:00+03','TJM','URJ','Scheduled','SU9','\N','\N');
INSERT INTO `flights` VALUES(5882,'PG0496','2017-09-14 12:45:00+03','2017-09-14 14:55:00+03','SVO','JOK','Cancelled','CN1','\N','\N');
INSERT INTO `flights` VALUES(29773,'PG0167','2017-07-30 13:45:00+03','2017-07-30 14:20:00+03','MQF','SVX','Arrived','CR2','2017-07-30 13:52:00+03','2017-07-30 14:27:00+03');
INSERT INTO `flights` VALUES(11329,'PG0103','2017-08-29 13:25:00+03','2017-08-29 16:35:00+03','SVX','KGP','Scheduled','CN1','\N','\N');
INSERT INTO `flights` VALUES(10521,'PG0323','2017-09-02 15:10:00+03','2017-09-02 16:30:00+03','OVB','RGK','Scheduled','CN1','\N','\N');
INSERT INTO `flights` VALUES(1738,'PG0239','2017-07-19 09:05:00+03','2017-07-19 11:40:00+03','DME','HMA','Arrived','SU9','2017-07-19 09:10:00+03','2017-07-19 11:45:00+03');
INSERT INTO `flights` VALUES(23663,'PG0388','2017-08-05 10:55:00+03','2017-08-05 11:25:00+03','UUA','REN','Arrived','CR2','2017-08-05 10:58:00+03','2017-08-05 11:28:00+03');
CREATE TABLE `seats`
(`aircraft_code` VARCHAR(1023),
`seat_no` VARCHAR(1023),
`fare_conditions` VARCHAR(1023));
INSERT INTO `seats` VALUES('319','2D','Business');
INSERT INTO `seats` VALUES('733','10B','Economy');
INSERT INTO `seats` VALUES('733','1D','Business');
INSERT INTO `seats` VALUES('773','43K','Economy');
INSERT INTO `seats` VALUES('733','5C','Economy');
INSERT INTO `seats` VALUES('773','26A','Economy');
INSERT INTO `seats` VALUES('773','19E','Economy');
INSERT INTO `seats` VALUES('321','30D','Economy');
INSERT INTO `seats` VALUES('321','26D','Economy');
INSERT INTO `seats` VALUES('773','44G','Economy');
INSERT INTO `seats` VALUES('773','46K','Economy');
INSERT INTO `seats` VALUES('321','11E','Economy');
CREATE TABLE `ticket_flights`
(`ticket_no` VARCHAR(1023),
`flight_id` BIGINT,
`fare_conditions` VARCHAR(1023),
`amount` DOUBLE);
INSERT INTO `ticket_flights` VALUES('0005434270237',26699,'Economy',6200);
INSERT INTO `ticket_flights` VALUES('0005432603721',6465,'Economy',15000);
INSERT INTO `ticket_flights` VALUES('0005435039417',5482,'Economy',9800);
INSERT INTO `ticket_flights` VALUES('0005434906768',2318,'Business',20200);
INSERT INTO `ticket_flights` VALUES('0005434823942',9915,'Economy',28000);
INSERT INTO `ticket_flights` VALUES('0005434182299',11636,'Economy',12200);
INSERT INTO `ticket_flights` VALUES('0005434980079',27524,'Economy',3600);
INSERT INTO `ticket_flights` VALUES('0005435767100',13484,'Economy',11800);
INSERT INTO `ticket_flights` VALUES('0005433868600',14492,'Economy',18500);
INSERT INTO `ticket_flights` VALUES('0005434979706',27537,'Economy',3600);
INSERT INTO `ticket_flights` VALUES('0005433134071',11997,'Economy',6600);
INSERT INTO `ticket_flights` VALUES('0005432188676',14878,'Economy',17600);
CREATE TABLE `tickets`
(`ticket_no` VARCHAR(1023),
`book_ref` VARCHAR(1023),
`passenger_id` VARCHAR(1023));
INSERT INTO `tickets` VALUES('0005432104752','79F3EB','1554 697421');
INSERT INTO `tickets` VALUES('0005432164980','B61754','1864 107346');
INSERT INTO `tickets` VALUES('0005432461016','EFA334','2898 407014');
INSERT INTO `tickets` VALUES('0005432294467','1B65AA','3074 908893');
INSERT INTO `tickets` VALUES('0005433075447','9C945F','4351 238128');
INSERT INTO `tickets` VALUES('0005432920441','1BF3E2','0188 635890');
INSERT INTO `tickets` VALUES('0005432073364','91D954','1556 525677');
INSERT INTO `tickets` VALUES('0005433922030','0F9B14','6309 483005');
INSERT INTO `tickets` VALUES('0005434880744','818608','6045 333151');
INSERT INTO `tickets` VALUES('0005432289082','67F6B5','3824 143929');
INSERT INTO `tickets` VALUES('0005435935121','D54A6F','8801 885364');
INSERT INTO `tickets` VALUES('0005434229370','0B70CD','5154 900756');
