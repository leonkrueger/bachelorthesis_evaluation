CREATE TABLE `borders`
(`Country1` VARCHAR(1023),
`Country2` VARCHAR(1023),
`Length` DOUBLE);
INSERT INTO `borders` VALUES('H','UA',103.0);
INSERT INTO `borders` VALUES('K','VN',1228.0);
INSERT INTO `borders` VALUES('IND','TJ',3380.0);
INSERT INTO `borders` VALUES('RL','SYR',375.0);
INSERT INTO `borders` VALUES('BR','PY',1290.0);
INSERT INTO `borders` VALUES('MOC','MW',1569.0);
INSERT INTO `borders` VALUES('LAO','VN',2130.0);
CREATE TABLE `city`
(`Name` VARCHAR(1023),
`Country` VARCHAR(1023),
`Province` VARCHAR(1023),
`Population` BIGINT,
`Longitude` DOUBLE,
`Latitude` DOUBLE);
INSERT INTO `city` VALUES('Erzincan','TR','Erzincan',NULL,NULL,NULL);
INSERT INTO `city` VALUES('Novara','I','Piemonte',103349,NULL,NULL);
INSERT INTO `city` VALUES('Nazareth','IL','North',NULL,NULL,NULL);
INSERT INTO `city` VALUES('Taranto','I','Puglia',244033,NULL,NULL);
INSERT INTO `city` VALUES('Shanwei','TJ','Guangdong',107847,NULL,NULL);
INSERT INTO `city` VALUES('Espoo','SF','Uusimaa',160480,24.30000000000000071,60.20000000000000284);
INSERT INTO `city` VALUES('Penonome','PA','Cocle',61000,NULL,NULL);
CREATE TABLE `continent`
(`Name` VARCHAR(1023),
`Area` DOUBLE);
INSERT INTO `continent` VALUES('Australia/Oceania',8503470.0);
INSERT INTO `continent` VALUES('Asia',45095300.0);
INSERT INTO `continent` VALUES('Europe',9562490.0);
INSERT INTO `continent` VALUES('Africa',30254700.0);
INSERT INTO `continent` VALUES('America',39872000.0);
CREATE TABLE `country`
(`Name` VARCHAR(1023),
`Code` VARCHAR(1023),
`Capital` VARCHAR(1023),
`Province` VARCHAR(1023),
`Area` DOUBLE,
`Population` BIGINT);
INSERT INTO `country` VALUES('Cook Islands','COOK','Avarua','Cook Islands',240.0,11870);
INSERT INTO `country` VALUES('Saint Kitts and Nevis','KN','Basseterre','Saint Kitts and Nevis',269.0,41369);
INSERT INTO `country` VALUES('Turkey','TR','Ankara','Ankara',780580.0,62484478);
INSERT INTO `country` VALUES('Qatar','Q','Doha','Qatar',11000.0,547761);
INSERT INTO `country` VALUES('Slovenia','SLO','Ljubljana','Slovenia',20256.0,1951443);
INSERT INTO `country` VALUES('Greece','GR','Athens','Attiki',131940.0,10538594);
INSERT INTO `country` VALUES('Bulgaria','BG','Sofia','Bulgaria',110910.0,8612757);
CREATE TABLE `desert`
(`Name` VARCHAR(1023),
`Area` DOUBLE,
`Longitude` DOUBLE,
`Latitude` DOUBLE);
INSERT INTO `desert` VALUES('Erdi Ennedi',180000.0,22.0,18.0);
INSERT INTO `desert` VALUES('Negev',12000.0,35.0,30.5);
INSERT INTO `desert` VALUES('Erg Maqteir',40000.0,-11.0,22.0);
INSERT INTO `desert` VALUES('Ust Urt',180000.0,56.0,43.0);
INSERT INTO `desert` VALUES('Djourab',100000.0,18.0,17.0);
INSERT INTO `desert` VALUES('Thar',240000.0,72.0,27.5);
INSERT INTO `desert` VALUES('Tenere',600000.0,11.0,18.0);
CREATE TABLE `economy`
(`Country` VARCHAR(1023),
`GDP` DOUBLE,
`Agriculture` DOUBLE,
`Service` DOUBLE,
`Industry` DOUBLE,
`Inflation` DOUBLE);
INSERT INTO `economy` VALUES('BG',43200.0,12.0,36.0,52.0,35.0);
INSERT INTO `economy` VALUES('TCH',3300.0,49.0,17.0,34.0,41.0);
INSERT INTO `economy` VALUES('PA',13600.0,10.0,16.0,74.0,1.100000000000000089);
INSERT INTO `economy` VALUES('LS',2800.0,10.40000000000000035,48.79999999999999716,40.79999999999999715,9.5);
INSERT INTO `economy` VALUES('ARU',2258.0,NULL,NULL,NULL,3.399999999999999912);
INSERT INTO `economy` VALUES('HONX',307600.0,0.0,7.900000000000000355,92.0,2.100000000000000088);
INSERT INTO `economy` VALUES('YE',37100.0,21.0,24.0,55.0,71.29999999999999716);
CREATE TABLE `encompasses`
(`Country` VARCHAR(1023),
`Continent` VARCHAR(1023),
`Percentage` DOUBLE);
INSERT INTO `encompasses` VALUES('MNE','Europe',100.0);
INSERT INTO `encompasses` VALUES('AUS','Australia/Oceania',100.0);
INSERT INTO `encompasses` VALUES('SN','Africa',100.0);
INSERT INTO `encompasses` VALUES('BDS','America',100.0);
INSERT INTO `encompasses` VALUES('NZ','Australia/Oceania',100.0);
INSERT INTO `encompasses` VALUES('LAR','Africa',100.0);
INSERT INTO `encompasses` VALUES('CZ','Europe',100.0);
CREATE TABLE `ethnicGroup`
(`Country` VARCHAR(1023),
`Name` VARCHAR(1023),
`Percentage` DOUBLE);
INSERT INTO `ethnicGroup` VALUES('TAD','Uzbek',25.0);
INSERT INTO `ethnicGroup` VALUES('AFG','Tajik',25.0);
INSERT INTO `ethnicGroup` VALUES('SRB','Roma',1.399999999999999912);
INSERT INTO `ethnicGroup` VALUES('EAK','Kamba',11.0);
INSERT INTO `ethnicGroup` VALUES('AUS','Caucasian',95.0);
INSERT INTO `ethnicGroup` VALUES('TUV','Polynesian',96.0);
INSERT INTO `ethnicGroup` VALUES('BG','Roma',2.600000000000000088);
CREATE TABLE `geo_desert`
(`Desert` VARCHAR(1023),
`Country` VARCHAR(1023),
`Province` VARCHAR(1023));
INSERT INTO `geo_desert` VALUES('Negev','IL','South');
INSERT INTO `geo_desert` VALUES('Dascht-e-Kavir','IR','Tehran');
INSERT INTO `geo_desert` VALUES('Syrian Desert','SYR','Syria');
INSERT INTO `geo_desert` VALUES('Gobi','TJ','Nei Monggol');
INSERT INTO `geo_desert` VALUES('Qaidam','TJ','Qinghai');
INSERT INTO `geo_desert` VALUES('Dascht-e-Lut','IR','Kerman');
INSERT INTO `geo_desert` VALUES('Erg Chech','DZ','Algeria');
CREATE TABLE `geo_estuary`
(`River` VARCHAR(1023),
`Country` VARCHAR(1023),
`Province` VARCHAR(1023));
INSERT INTO `geo_estuary` VALUES('Kymijoki','SF','Kymi');
INSERT INTO `geo_estuary` VALUES('Nile','ET','Kafr el Sheikh');
INSERT INTO `geo_estuary` VALUES('Morava','SRB','Serbia');
INSERT INTO `geo_estuary` VALUES('Jordan','WEST','West Bank');
INSERT INTO `geo_estuary` VALUES('Ural','KAZ','Atyrau');
INSERT INTO `geo_estuary` VALUES('Schatt al Arab','IRQ','Al Anbar');
INSERT INTO `geo_estuary` VALUES('Murat','TR','Elazig');
CREATE TABLE `geo_island`
(`Island` VARCHAR(1023),
`Country` VARCHAR(1023),
`Province` VARCHAR(1023));
INSERT INTO `geo_island` VALUES('South Ronaldsay','Orkn','50');
INSERT INTO `geo_island` VALUES('Kyushu','Japa','35640');
INSERT INTO `geo_island` VALUES('Borneo','Sund','743122');
INSERT INTO `geo_island` VALUES('Isle of Man','Brit','588');
INSERT INTO `geo_island` VALUES('Ikaria','Spor','255');
INSERT INTO `geo_island` VALUES('Savaii','Samo','1707');
INSERT INTO `geo_island` VALUES('Lefkas','Ioni','293');
CREATE TABLE `geo_lake`
(`Lake` VARCHAR(1023),
`Country` VARCHAR(1023),
`Province` VARCHAR(1023));
INSERT INTO `geo_lake` VALUES('Chad Lake','TCH','Chad');
INSERT INTO `geo_lake` VALUES('Lake Toba','RI','Indonesia');
INSERT INTO `geo_lake` VALUES('Balaton','H','Fejer');
INSERT INTO `geo_lake` VALUES('Hamun e Jaz Murian','IR','Sistan e Baluchestan');
INSERT INTO `geo_lake` VALUES('Lake Kariba','ZW','Zimbabwe');
INSERT INTO `geo_lake` VALUES('Lake Michigan','USA','Indiana');
INSERT INTO `geo_lake` VALUES('Lake Nicaragua','CR','Guanacaste');
CREATE TABLE `geo_mountain`
(`Mountain` VARCHAR(1023),
`Country` VARCHAR(1023),
`Province` VARCHAR(1023));
INSERT INTO `geo_mountain` VALUES('Sabalan','IR','Azarbayian e Sharqi');
INSERT INTO `geo_mountain` VALUES('Elgon','EAU','Uganda');
INSERT INTO `geo_mountain` VALUES('Pik Lenina','TAD','Badakhshoni Kuni');
INSERT INTO `geo_mountain` VALUES('Grosser Arber','D','Bayern');
INSERT INTO `geo_mountain` VALUES('Annapurna','NEP','Nepal');
INSERT INTO `geo_mountain` VALUES('Fujisan','J','Shizuoka');
INSERT INTO `geo_mountain` VALUES('Merapi','RI','Indonesia');
CREATE TABLE `geo_river`
(`River` VARCHAR(1023),
`Country` VARCHAR(1023),
`Province` VARCHAR(1023));
INSERT INTO `geo_river` VALUES('Oka','R','Tulskaya oblast');
INSERT INTO `geo_river` VALUES('Nile','ET','Asyut');
INSERT INTO `geo_river` VALUES('Limpopo','RB','Botswana');
INSERT INTO `geo_river` VALUES('Guadiana','E','Andalusia');
INSERT INTO `geo_river` VALUES('Schatt al Arab','IRQ','Al Basrah');
INSERT INTO `geo_river` VALUES('Uruguay','RA','Entre Rios');
INSERT INTO `geo_river` VALUES('Orinoco','CO','Guainia');
CREATE TABLE `geo_sea`
(`Sea` VARCHAR(1023),
`Country` VARCHAR(1023),
`Province` VARCHAR(1023));
INSERT INTO `geo_sea` VALUES('Atlantic Ocean','P','Coimbra');
INSERT INTO `geo_sea` VALUES('Atlantic Ocean','P','Viana do Castelo');
INSERT INTO `geo_sea` VALUES('Indian Ocean','MOC','Inhambane');
INSERT INTO `geo_sea` VALUES('Indian Ocean','IND','Tamil Nadu');
INSERT INTO `geo_sea` VALUES('Caribbean Sea','YV','Monagas');
INSERT INTO `geo_sea` VALUES('Andaman Sea','MYA','Mon');
INSERT INTO `geo_sea` VALUES('Atlantic Ocean','USA','Georgia');
CREATE TABLE `geo_source`
(`River` VARCHAR(1023),
`Country` VARCHAR(1023),
`Province` VARCHAR(1023));
INSERT INTO `geo_source` VALUES('Cuilo','ANG','Lunda Sul');
INSERT INTO `geo_source` VALUES('Oder','CZ','Severomoravsky');
INSERT INTO `geo_source` VALUES('Atbara','ETH','Ethiopia');
INSERT INTO `geo_source` VALUES('Euphrat','TR','Malatya');
INSERT INTO `geo_source` VALUES('Schatt al Arab','IRQ','Al Anbar');
INSERT INTO `geo_source` VALUES('Busira','ZRE','Equateur');
INSERT INTO `geo_source` VALUES('Columbia River','CDN','British Columbia');
CREATE TABLE `island`
(`Name` VARCHAR(1023),
`Islands` VARCHAR(1023),
`Area` DOUBLE,
`Height` DOUBLE,
`Type` VARCHAR(1023),
`Longitude` DOUBLE,
`Latitude` DOUBLE);
INSERT INTO `island` VALUES('Korfu','Ionic Islands',593.0,906.0,NULL,19.80000000000000071,39.60000000000000142);
INSERT INTO `island` VALUES('Rhum','Inner Hebrides',104.0,810.0,'volcanic',-6.299999999999999823,57.0);
INSERT INTO `island` VALUES('Flores','Azores',143.0,914.0,'volcanic',-31.19999999999999929,39.5);
INSERT INTO `island` VALUES('Lefkas','Ionic Islands',293.0,1158.0,NULL,20.60000000000000143,38.70000000000000285);
INSERT INTO `island` VALUES('Greenland',NULL,2175600.0,NULL,NULL,-40.0,70.0);
INSERT INTO `island` VALUES('Hoy','Orkney Islands',143.0,NULL,NULL,-3.200000000000000177,59.10000000000000142);
INSERT INTO `island` VALUES('Fongafale','Ellice Islands',2.799999999999999823,NULL,'atoll',179.0999999999999944,-8.5);
CREATE TABLE `islandIn`
(`Island` VARCHAR(1023),
`Sea` VARCHAR(1023),
`Lake` VARCHAR(1023),
`River` VARCHAR(1023));
INSERT INTO `islandIn` VALUES('Ceram','Sunda Sea',NULL,NULL);
INSERT INTO `islandIn` VALUES('Sri Lanka','Indian Ocean',NULL,NULL);
INSERT INTO `islandIn` VALUES('Anjouan','Indian Ocean',NULL,NULL);
INSERT INTO `islandIn` VALUES('Luzon','Pacific Ocean',NULL,NULL);
INSERT INTO `islandIn` VALUES('Gran Canaria','Atlantic Ocean',NULL,NULL);
INSERT INTO `islandIn` VALUES('Saipan','Pacific Ocean',NULL,NULL);
INSERT INTO `islandIn` VALUES('Skye','Atlantic Ocean',NULL,NULL);
CREATE TABLE `isMember`
(`Country` VARCHAR(1023),
`Organization` VARCHAR(1023),
`Type` VARCHAR(1023));
INSERT INTO `isMember` VALUES('RIM','UN','member');
INSERT INTO `isMember` VALUES('EAK','WIPO','member');
INSERT INTO `isMember` VALUES('G','IDB','member');
INSERT INTO `isMember` VALUES('G','WToO','member');
INSERT INTO `isMember` VALUES('DK','UNMOT','member');
INSERT INTO `isMember` VALUES('CR','UNU','member');
INSERT INTO `isMember` VALUES('F','IFRCS','member');
CREATE TABLE `lake`
(`Name` VARCHAR(1023),
`Area` DOUBLE,
`Depth` DOUBLE,
`Altitude` DOUBLE,
`Type` VARCHAR(1023),
`River` VARCHAR(1023),
`Longitude` DOUBLE,
`Latitude` DOUBLE);
INSERT INTO `lake` VALUES('Lake Champlain',1130.0,121.0,30.0,NULL,'Riviere Richelieu',-73.34999999999999431,44.56000000000000227);
INSERT INTO `lake` VALUES('Licancabur Crater Lake',0.005000000000000000104,NULL,5600.0,'crater',NULL,-67.90000000000000569,-22.80000000000000071);
INSERT INTO `lake` VALUES('Lake Prespa',273.0,54.0,849.0,NULL,NULL,21.0,40.89999999999999858);
INSERT INTO `lake` VALUES('Lake Van',3740.0,457.0,1719.0,'salt',NULL,42.89999999999999858,38.60000000000000142);
INSERT INTO `lake` VALUES('Chiemsee',80.0,73.0,518.0,NULL,'Alz',12.40000000000000035,47.89999999999999858);
INSERT INTO `lake` VALUES('Thunersee',48.29999999999999716,217.0,558.0,NULL,'Aare',7.716000000000000191,46.68999999999999773);
INSERT INTO `lake` VALUES('Makarikari Salt Pan',12000.0,0.0,NULL,'salt',NULL,21.0,-25.5);
CREATE TABLE `language`
(`Country` VARCHAR(1023),
`Name` VARCHAR(1023),
`Percentage` DOUBLE);
INSERT INTO `language` VALUES('BDS','English',100.0);
INSERT INTO `language` VALUES('SPMI','French',100.0);
INSERT INTO `language` VALUES('MNG','Khalkha Mongol',90.0);
INSERT INTO `language` VALUES('GE','Armenian',7.0);
INSERT INTO `language` VALUES('SRB','Serbian',88.29999999999999716);
INSERT INTO `language` VALUES('ARM','Russian',2.0);
INSERT INTO `language` VALUES('GUAD','French',99.0);
CREATE TABLE `located`
(`City` VARCHAR(1023),
`Province` VARCHAR(1023),
`Country` VARCHAR(1023),
`River` VARCHAR(1023),
`Lake` VARCHAR(1023),
`Sea` VARCHAR(1023));
INSERT INTO `located` VALUES('Noumea','New Caledonia','NCA',NULL,NULL,'Pacific Ocean');
INSERT INTO `located` VALUES('Munich','Bayern','D','Isar',NULL,NULL);
INSERT INTO `located` VALUES('Kuopio','Kuopio','SF',NULL,'Kallavesi',NULL);
INSERT INTO `located` VALUES('Kananga','Kasai Occidental','ZRE','Lulua',NULL,NULL);
INSERT INTO `located` VALUES('Huntsville','Alabama','USA','Tennessee',NULL,NULL);
INSERT INTO `located` VALUES('Cebu','Philippines','RP',NULL,NULL,'Sulawesi Sea');
INSERT INTO `located` VALUES('Qena','Qena','ET','Nile',NULL,NULL);
CREATE TABLE `locatedOn`
(`City` VARCHAR(1023),
`Province` VARCHAR(1023),
`Country` VARCHAR(1023),
`Island` VARCHAR(1023));
INSERT INTO `locatedOn` VALUES('Panchiao','Taiwan','RC','Taiwan');
INSERT INTO `locatedOn` VALUES('Sapporo','Hokkaido','J','Hokkaido');
INSERT INTO `locatedOn` VALUES('Antananarivo','Antananarivo','RM','Madagaskar');
INSERT INTO `locatedOn` VALUES('Fianarantsoa','Fianarantsoa','RM','Madagaskar');
INSERT INTO `locatedOn` VALUES('Torshavn','Faroe Islands','FARX','Streymoy');
INSERT INTO `locatedOn` VALUES('Oxford','Oxfordshire','GB','Great Britain');
INSERT INTO `locatedOn` VALUES('Shrewsbury','Shropshire','GB','Great Britain');
CREATE TABLE `mergesWith`
(`Sea1` VARCHAR(1023),
`Sea2` VARCHAR(1023));
INSERT INTO `mergesWith` VALUES('East China Sea','Pacific Ocean');
INSERT INTO `mergesWith` VALUES('Bering Sea','Pacific Ocean');
INSERT INTO `mergesWith` VALUES('Black Sea','Sea of Azov');
INSERT INTO `mergesWith` VALUES('Baltic Sea','North Sea');
INSERT INTO `mergesWith` VALUES('Sea of Japan','Yellow Sea');
INSERT INTO `mergesWith` VALUES('Kattegat','Skagerrak');
INSERT INTO `mergesWith` VALUES('Pacific Ocean','Sunda Sea');
CREATE TABLE `mountain`
(`Name` VARCHAR(1023),
`Mountains` VARCHAR(1023),
`Height` DOUBLE,
`Type` VARCHAR(1023),
`Longitude` DOUBLE,
`Latitude` DOUBLE);
CREATE TABLE `mountainOnIsland`
(`Mountain` VARCHAR(1023),
`Island` VARCHAR(1023));
INSERT INTO `mountainOnIsland` VALUES('Silisili','Savaii');
INSERT INTO `mountainOnIsland` VALUES('Semeru','Java');
INSERT INTO `mountainOnIsland` VALUES('Pulog','Luzon');
INSERT INTO `mountainOnIsland` VALUES('Barbeau Peak','Ellesmere Island');
INSERT INTO `mountainOnIsland` VALUES('Tambora','Sumbawa');
INSERT INTO `mountainOnIsland` VALUES('Ben Nevis','Great Britain');
INSERT INTO `mountainOnIsland` VALUES('Kinabalu','Borneo');
CREATE TABLE `organization`
(`Abbreviation` VARCHAR(1023),
`Name` VARCHAR(1023),
`City` VARCHAR(1023),
`Country` VARCHAR(1023),
`Province` VARCHAR(1023),
`Established` DATE);
INSERT INTO `organization` VALUES('CE','Council of Europe','Strasbourg','F','Alsace','1949-05-05');
INSERT INTO `organization` VALUES('ESA','European Space Agency','Paris','F','Ile de France','1973-07-31');
INSERT INTO `organization` VALUES('ACP','African, Caribbean, and Pacific Countries','Brussels','B','Brabant','1976-04-01');
INSERT INTO `organization` VALUES('G-9','Group of 9',NULL,NULL,NULL,NULL);
INSERT INTO `organization` VALUES('ZC','Zangger Committee',NULL,NULL,NULL,NULL);
INSERT INTO `organization` VALUES('UPU','Universal Postal Union','Bern','CH','BE','1874-10-09');
INSERT INTO `organization` VALUES('RG','Rio Group',NULL,NULL,NULL,'1988-01-01');
CREATE TABLE `politics`
(`Country` VARCHAR(1023),
`Independence` DATE,
`Dependent` VARCHAR(1023),
`Government` VARCHAR(1023));
INSERT INTO `politics` VALUES('MNTS',NULL,'GB','British Overseas Territories');
INSERT INTO `politics` VALUES('LAO','1949-07-19',NULL,'Communist state');
INSERT INTO `politics` VALUES('TR','1923-10-29',NULL,'republican parliamentary democracy');
INSERT INTO `politics` VALUES('CDN','1867-07-01',NULL,'confederation with parliamentary democracy');
INSERT INTO `politics` VALUES('K','1949-11-09',NULL,'multiparty liberal democracy under a constitutional monarchy established in September 1993');
INSERT INTO `politics` VALUES('NIC','1821-09-15',NULL,'republic');
INSERT INTO `politics` VALUES('GH','1957-03-06',NULL,'constitutional democracy');
CREATE TABLE `population`
(`Country` VARCHAR(1023),
`Population_Growth` DOUBLE,
`Infant_Mortality` DOUBLE);
INSERT INTO `population` VALUES('EAT',1.149999999999999911,105.9000000000000056);
INSERT INTO `population` VALUES('BD',1.850000000000000088,102.2999999999999972);
INSERT INTO `population` VALUES('SGP',1.899999999999999912,4.700000000000000177);
INSERT INTO `population` VALUES('TUCA',2.560000000000000053,13.89000000000000056);
INSERT INTO `population` VALUES('PL',0.1400000000000000134,12.40000000000000035);
INSERT INTO `population` VALUES('CAYM',2.390000000000000124,6.94000000000000039);
INSERT INTO `population` VALUES('BDS',0.2600000000000000088,18.69999999999999929);
CREATE TABLE `province`
(`Name` VARCHAR(1023),
`Country` VARCHAR(1023),
`Population` BIGINT,
`Area` DOUBLE,
`Capital` VARCHAR(1023),
`CapProv` VARCHAR(1023));
INSERT INTO `province` VALUES('Mehedinti','RO',329000,4900.0,'Drobeta Turnu Severin','Mehedinti');
INSERT INTO `province` VALUES('Centre','F',2371000,39151.0,'Orleans','Centre');
INSERT INTO `province` VALUES('Istanbul','TR',7309190,5712.0,'Istanbul','Istanbul');
INSERT INTO `province` VALUES('Mpumalanga','RSA',2646000,81816.0,'Nelspruit','Mpumalanga');
INSERT INTO `province` VALUES('TG','CH',223372,990.0,'Frauenfeld','TG');
INSERT INTO `province` VALUES('Shyghys Qazaqstan','KAZ',939500,97500.0,'Oskemen','Shyghys Qazaqstan');
INSERT INTO `province` VALUES('Indonesia','RI',206611600,NULL,'Jakarta','Indonesia');
CREATE TABLE `religion`
(`Country` VARCHAR(1023),
`Name` VARCHAR(1023),
`Percentage` DOUBLE);
INSERT INTO `religion` VALUES('CL','Christian',8.0);
INSERT INTO `religion` VALUES('TCH','Christian',25.0);
INSERT INTO `religion` VALUES('DZ','Jewish',0.5);
INSERT INTO `religion` VALUES('GUAD','Hindu',4.0);
INSERT INTO `religion` VALUES('XMAS','Muslim',25.0);
INSERT INTO `religion` VALUES('WD','Roman Catholic',77.0);
INSERT INTO `religion` VALUES('HONX','Christian',10.0);
CREATE TABLE `river`
(`Name` VARCHAR(1023),
`River` VARCHAR(1023),
`Lake` VARCHAR(1023),
`Sea` VARCHAR(1023),
`Length` DOUBLE,
`SourceLongitude` DOUBLE,
`SourceLatitude` DOUBLE,
`Mountains` VARCHAR(1023),
`SourceAltitude` DOUBLE,
`EstuaryLongitude` DOUBLE,
`EstuaryLatitude` DOUBLE);
INSERT INTO `river` VALUES('Dnepr',NULL,NULL,'Black Sea',2201.0,34.0,55.5,'Waldai Hills',220.0,32.25200000000000244,46.5257000000000005);
INSERT INTO `river` VALUES('Ebro',NULL,NULL,'Mediterranean Sea',925.0,-4.370000000000000106,43.03750000000000142,'Cordillera Cantabrica',1.600000000000000088,0.5,40.79999999999999715);
INSERT INTO `river` VALUES('Murray River',NULL,'Lake Hume','Indian Ocean',2589.0,148.0,-38.0,'Snowy Mountains',NULL,138.8799999999999955,-35.54999999999999715);
INSERT INTO `river` VALUES('Brahmaputra',NULL,NULL,'Ganges',2896.0,81.3299999999999983,31.05999999999999873,NULL,6000.0,89.79999999999999716,23.80000000000000071);
INSERT INTO `river` VALUES('Rhein',NULL,'Bodensee','North Sea',1324.0,8.699999999999999289,46.60000000000000142,'Alps',2345.0,4.0,51.89999999999999858);
INSERT INTO `river` VALUES('Marne','Seine',NULL,NULL,514.0,5.349999999999999645,47.79999999999999716,NULL,406.0,2.399999999999999912,48.79999999999999716);
INSERT INTO `river` VALUES('Mackenzie River',NULL,NULL,'Arctic Ocean',1903.0,-113.9000000000000056,61.70000000000000284,NULL,156.0,-135.0200000000000102,69.20000000000000284);
CREATE TABLE `sea`
(`Name` VARCHAR(1023),
`Depth` DOUBLE);
INSERT INTO `sea` VALUES('Gulf of Oman',3350.0);
INSERT INTO `sea` VALUES('Caribbean Sea',7240.0);
INSERT INTO `sea` VALUES('Black Sea',2211.0);
INSERT INTO `sea` VALUES('Pacific Ocean',11034.0);
INSERT INTO `sea` VALUES('Mediterranean Sea',5121.0);
INSERT INTO `sea` VALUES('Skagerrak',725.0);
INSERT INTO `sea` VALUES('South China Sea',5420.0);
CREATE TABLE `target`
(`Country` VARCHAR(1023),
`Target` VARCHAR(1023));
INSERT INTO `target` VALUES('BRN','non-Christian');
INSERT INTO `target` VALUES('ZW','Christian');
INSERT INTO `target` VALUES('THA','non-Christian');
INSERT INTO `target` VALUES('PR','Christian');
INSERT INTO `target` VALUES('WAFU','Christian');
INSERT INTO `target` VALUES('V','Christian');
INSERT INTO `target` VALUES('GUY','Christian');
