CREATE TABLE `borders`
(Country1 VARCHAR(255),
Country2 VARCHAR(255),
Length DOUBLE);
INSERT INTO borders VALUES('GE','TR',252.0);
INSERT INTO borders VALUES('MNE','SRB',124.0);
INSERT INTO borders VALUES('LAO','VN',2130.0);
INSERT INTO borders VALUES('GCA','MEX',962.0);
INSERT INTO borders VALUES('BY','LV',141.0);
INSERT INTO borders VALUES('BRU','MAL',381.0);
INSERT INTO borders VALUES('BEN','WAN',773.0);
INSERT INTO borders VALUES('MNG','TJ',4673.0);
INSERT INTO borders VALUES('R','SF',1313.0);
INSERT INTO borders VALUES('ANG','RCB',201.0);
INSERT INTO borders VALUES('BG','RO',608.0);
INSERT INTO borders VALUES('SUD','TCH',1360.0);
INSERT INTO borders VALUES('JOR','SA',728.0);
INSERT INTO borders VALUES('EAT','MW',475.0);
CREATE TABLE `city`
(Name VARCHAR(255),
Country VARCHAR(255),
Province VARCHAR(255),
Population BIGINT,
Longitude DOUBLE,
Latitude DOUBLE);
INSERT INTO city VALUES('Ribeirao Preto','BR','Sao Paulo',452804,NULL,NULL);
INSERT INTO city VALUES('Patrai','GR','Dhytiki Ellas',142163,NULL,NULL);
INSERT INTO city VALUES('Linyi','TJ','Shandong',324720,NULL,NULL);
INSERT INTO city VALUES('Winchester','GB','Hampshire',100500,NULL,NULL);
INSERT INTO city VALUES('Kitchener','CDN','Ontario',168282,-80.5,43.43330000000000269);
INSERT INTO city VALUES('Rostov na Donu','R','Rostovskaya oblast',1026000,NULL,NULL);
INSERT INTO city VALUES('Bratsk','R','Irkutskaya oblast',257000,NULL,NULL);
INSERT INTO city VALUES('Kolpino','R','Leningradskaya oblast',143000,NULL,NULL);
INSERT INTO city VALUES('Dayton','USA','Ohio',182005,-84.216700000000003,39.89999999999999858);
INSERT INTO city VALUES('Chita','R','Chitinskaya oblast',322000,NULL,NULL);
INSERT INTO city VALUES('Donostia','E','Basque Country',177929,NULL,NULL);
INSERT INTO city VALUES('Urawa','J','Saitama',NULL,NULL,NULL);
INSERT INTO city VALUES('Xinyu','TJ','Jiangxi',173524,NULL,NULL);
INSERT INTO city VALUES('Sapporo','J','Hokkaido',1748000,141.3499999999999944,43.06669999999999731);
CREATE TABLE `continent`
(Name VARCHAR(255),
Area DOUBLE);
INSERT INTO continent VALUES('Europe',9562490.0);
INSERT INTO continent VALUES('Africa',30254700.0);
INSERT INTO continent VALUES('Asia',45095300.0);
INSERT INTO continent VALUES('Australia/Oceania',8503470.0);
INSERT INTO continent VALUES('America',39872000.0);
CREATE TABLE `country`
(Name VARCHAR(255),
Code VARCHAR(255),
Capital VARCHAR(255),
Province VARCHAR(255),
Area DOUBLE,
Population BIGINT);
INSERT INTO country VALUES('Trinidad and Tobago','TT','Port-of-Spain','Trinidad and Tobago',5130.0,1272385);
INSERT INTO country VALUES('Bangladesh','BD','Dhaka','Bangladesh',144000.0,123062800);
INSERT INTO country VALUES('Swaziland','SD','Mbabane','Swaziland',17360.0,998730);
INSERT INTO country VALUES('Nepal','NEP','Kathmandu','Nepal',140800.0,22094033);
INSERT INTO country VALUES('Laos','LAO','Vientiane','Laos',236800.0,4975772);
INSERT INTO country VALUES('Central African Republic','RCA','Bangui','Central African Republic',622980.0,3274426);
INSERT INTO country VALUES('Jersey','GBJ','Saint Helier','Jersey',117.0,87848);
INSERT INTO country VALUES('Bermuda','BERM','Hamilton','Bermuda',53.29999999999999716,67837);
INSERT INTO country VALUES('Colombia','CO','Bogota','Santa Fe de Bogota, DC',1138910.0,36813161);
INSERT INTO country VALUES('Brunei','BRU','Bandar Seri Begawan','Brunei',5770.0,299939);
INSERT INTO country VALUES('Ukraine','UA','Kiev','Kyyivska',603700.0,50864009);
INSERT INTO country VALUES('Qatar','Q','Doha','Qatar',11000.0,547761);
INSERT INTO country VALUES('El Salvador','ES','San Salvador','El Salvador',21040.0,5828987);
INSERT INTO country VALUES('Cocos Islands','COCO','West Island','Cocos Islands',14.0,596);
CREATE TABLE `desert`
(Name VARCHAR(255),
Area DOUBLE,
Longitude DOUBLE,
Latitude DOUBLE);
INSERT INTO desert VALUES('Dascht-e-Kavir',77600.0,55.0,32.5);
INSERT INTO desert VALUES('Tanezrouft',160000.0,0.0,23.0);
INSERT INTO desert VALUES('Nefud',78000.0,42.0,28.0);
INSERT INTO desert VALUES('Mojave',57000.0,-115.2000000000000028,36.20000000000000285);
INSERT INTO desert VALUES('Grand Erg Est',150000.0,8.0,31.0);
INSERT INTO desert VALUES('Nubian Desert',50000.0,21.0,32.0);
INSERT INTO desert VALUES('Gurbantunggut',48800.0,87.5,45.0);
INSERT INTO desert VALUES('Grand Erg Ouest',200000.0,-1.0,30.0);
INSERT INTO desert VALUES('Kum Tagh',22000.0,92.0,40.0);
INSERT INTO desert VALUES('Kalahari',1200000.0,21.0,-22.0);
INSERT INTO desert VALUES('Talak',100000.0,6.0,17.0);
INSERT INTO desert VALUES('Erg Ouarane',80000.0,-11.0,21.0);
INSERT INTO desert VALUES('Great Basin',300000.0,-117.0,38.0);
INSERT INTO desert VALUES('Gibson Desert',310800.0,125.0,-23.0);
CREATE TABLE `economy`
(Country VARCHAR(255),
GDP DOUBLE,
Agriculture DOUBLE,
Service DOUBLE,
Industry DOUBLE,
Inflation DOUBLE);
INSERT INTO economy VALUES('Q',10700.0,1.0,50.0,49.0,3.0);
INSERT INTO economy VALUES('WL',640.0,13.80000000000000071,17.39999999999999857,68.79999999999999716,0.8000000000000000444);
INSERT INTO economy VALUES('AND',1000.0,NULL,NULL,NULL,NULL);
INSERT INTO economy VALUES('GQ',325.0,47.0,26.0,27.0,41.0);
INSERT INTO economy VALUES('YE',37100.0,21.0,24.0,55.0,71.29999999999999716);
INSERT INTO economy VALUES('RSA',215000.0,NULL,NULL,NULL,8.699999999999999289);
INSERT INTO economy VALUES('RCA',2500.0,50.0,14.0,36.0,45.0);
INSERT INTO economy VALUES('R',796000.0,6.0,41.0,53.0,7.0);
INSERT INTO economy VALUES('EAK',36800.0,27.0,19.0,54.0,1.699999999999999956);
INSERT INTO economy VALUES('JA',8200.0,7.900000000000000355,28.10000000000000142,64.0,25.5);
INSERT INTO economy VALUES('C',14700.0,7.0,30.0,63.0,NULL);
INSERT INTO economy VALUES('BOL',20000.0,NULL,NULL,NULL,12.0);
INSERT INTO economy VALUES('SD',3600.0,25.0,40.0,35.0,14.69999999999999929);
INSERT INTO economy VALUES('BI',4000.0,54.10000000000000142,16.80000000000000071,29.10000000000000142,10.0);
CREATE TABLE `encompasses`
(Country VARCHAR(255),
Continent VARCHAR(255),
Percentage DOUBLE);
INSERT INTO encompasses VALUES('SVAX','Europe',100.0);
INSERT INTO encompasses VALUES('D','Europe',100.0);
INSERT INTO encompasses VALUES('KIR','Australia/Oceania',100.0);
INSERT INTO encompasses VALUES('BY','Europe',100.0);
INSERT INTO encompasses VALUES('AZ','Asia',100.0);
INSERT INTO encompasses VALUES('GUAD','America',100.0);
INSERT INTO encompasses VALUES('AMSA','Australia/Oceania',100.0);
INSERT INTO encompasses VALUES('BS','America',100.0);
INSERT INTO encompasses VALUES('A','Europe',100.0);
INSERT INTO encompasses VALUES('GBG','Europe',100.0);
INSERT INTO encompasses VALUES('EAU','Africa',100.0);
INSERT INTO encompasses VALUES('GROX','America',100.0);
INSERT INTO encompasses VALUES('GR','Europe',100.0);
INSERT INTO encompasses VALUES('Z','Africa',100.0);
CREATE TABLE `ethnicGroup`
(Country VARCHAR(255),
Name VARCHAR(255),
Percentage DOUBLE);
INSERT INTO ethnicGroup VALUES('SME','Javanese',15.30000000000000071);
INSERT INTO ethnicGroup VALUES('SD','European',3.0);
INSERT INTO ethnicGroup VALUES('BVIR','White',7.0);
INSERT INTO ethnicGroup VALUES('ETH','Oromo',40.0);
INSERT INTO ethnicGroup VALUES('D','Greek',0.4000000000000000222);
INSERT INTO ethnicGroup VALUES('PA','West Indian',14.0);
INSERT INTO ethnicGroup VALUES('EAU','Bunyoro',3.0);
INSERT INTO ethnicGroup VALUES('MART','Chinese',5.0);
INSERT INTO ethnicGroup VALUES('GE','Georgian',70.09999999999999431);
INSERT INTO ethnicGroup VALUES('SME','Chinese',1.699999999999999956);
INSERT INTO ethnicGroup VALUES('NAU','Pacific Islander',26.0);
INSERT INTO ethnicGroup VALUES('TT','East Indian',40.0);
INSERT INTO ethnicGroup VALUES('RG','Malinke',30.0);
INSERT INTO ethnicGroup VALUES('HR','Slovene',0.5);
CREATE TABLE `geo_desert`
(Desert VARCHAR(255),
Country VARCHAR(255),
Province VARCHAR(255));
INSERT INTO geo_desert VALUES('Syrian Desert','SYR','Syria');
INSERT INTO geo_desert VALUES('Colorado Plateau','USA','Colorado');
INSERT INTO geo_desert VALUES('Owyhee','USA','Oregon');
INSERT INTO geo_desert VALUES('Ferlo','SN','Louga');
INSERT INTO geo_desert VALUES('Thar','IND','Gujarat');
INSERT INTO geo_desert VALUES('Fesan','LAR','Libya');
INSERT INTO geo_desert VALUES('Kalahari','ANG','Moxico');
INSERT INTO geo_desert VALUES('Libyan Desert','ET','Matruh');
INSERT INTO geo_desert VALUES('Great Basin','USA','Utah');
INSERT INTO geo_desert VALUES('Libyan Desert','SUD','Darfur');
INSERT INTO geo_desert VALUES('Chihuahua','USA','Arizona');
INSERT INTO geo_desert VALUES('Nefud','SA','Saudi Arabia');
INSERT INTO geo_desert VALUES('Libyan Desert','ET','El Minya');
INSERT INTO geo_desert VALUES('Dascht-e-Kavir','IR','Tehran');
CREATE TABLE `geo_estuary`
(River VARCHAR(255),
Country VARCHAR(255),
Province VARCHAR(255));
INSERT INTO geo_estuary VALUES('Merrimack River','USA','Massachusetts');
INSERT INTO geo_estuary VALUES('Jordan','JOR','Jordan');
INSERT INTO geo_estuary VALUES('Vaal','RSA','Northern Cape');
INSERT INTO geo_estuary VALUES('Saint Lawrence River','CDN','Quebec');
INSERT INTO geo_estuary VALUES('Amur','R','Khabarovskiy kray');
INSERT INTO geo_estuary VALUES('Dnjestr','UA','Odeska');
INSERT INTO geo_estuary VALUES('Bahr el-Djebel/Albert-Nil','SUD','Aali an Nil');
INSERT INTO geo_estuary VALUES('Neckar','D','Baden Wurttemberg');
INSERT INTO geo_estuary VALUES('Breg','D','Baden Wurttemberg');
INSERT INTO geo_estuary VALUES('Hwangho','TJ','Shandong');
INSERT INTO geo_estuary VALUES('Volta','GH','Ghana');
INSERT INTO geo_estuary VALUES('Irtysch','R','Tyumenskaya oblast');
INSERT INTO geo_estuary VALUES('Luvua','ZRE','Shaba/Katanga');
INSERT INTO geo_estuary VALUES('Chatanga','R','Krasnoyarskiy kray');
CREATE TABLE `geo_island`
(Island VARCHAR(255),
Country VARCHAR(255),
Province VARCHAR(255));
INSERT INTO geo_island VALUES('Langeoog','Ostf','20');
INSERT INTO geo_island VALUES('Lanzarote','Cana','846');
INSERT INTO geo_island VALUES('Montserrat','Less','102');
INSERT INTO geo_island VALUES('Westray','Orkn','47');
INSERT INTO geo_island VALUES('Grande-Terre','Less','589');
INSERT INTO geo_island VALUES('Saint Thomas','Less','31');
INSERT INTO geo_island VALUES('Jura','Inne','367');
INSERT INTO geo_island VALUES('Te Ika-a-Maui (North Island)','New ','114597');
INSERT INTO geo_island VALUES('Java','Sund','126650');
INSERT INTO geo_island VALUES('Ireland','Brit','84421');
INSERT INTO geo_island VALUES('Zakinthos','Ioni','406');
INSERT INTO geo_island VALUES('Tortola','Less','55');
INSERT INTO geo_island VALUES('Kavaratti','Lacc','6');
INSERT INTO geo_island VALUES('East Falkland','Falk','6605');
CREATE TABLE `geo_lake`
(Lake VARCHAR(255),
Country VARCHAR(255),
Province VARCHAR(255));
INSERT INTO geo_lake VALUES('Loch Ness','GB','Central');
INSERT INTO geo_lake VALUES('Lake Erie','USA','Michigan');
INSERT INTO geo_lake VALUES('Dead Sea','WEST','West Bank');
INSERT INTO geo_lake VALUES('Ozero Baikal','R','Rep. of Buryatiya');
INSERT INTO geo_lake VALUES('Rutanzige/Eduardsee','ZRE','Kivu');
INSERT INTO geo_lake VALUES('Lake Turkana','ETH','Ethiopia');
INSERT INTO geo_lake VALUES('Lac Leman','CH','VS');
INSERT INTO geo_lake VALUES('Balaton','H','Fejer');
INSERT INTO geo_lake VALUES('Starnberger See','D','Bayern');
INSERT INTO geo_lake VALUES('Great Bear Lake','CDN','Northwest Territories');
INSERT INTO geo_lake VALUES('Lake Abbe','ETH','Ethiopia');
INSERT INTO geo_lake VALUES('Lake Keban','TR','Tunceli');
INSERT INTO geo_lake VALUES('Lake Erie','USA','New York');
INSERT INTO geo_lake VALUES('Ozero Chanka','R','Primorsky kray');
CREATE TABLE `geo_mountain`
(Mountain VARCHAR(255),
Country VARCHAR(255),
Province VARCHAR(255));
INSERT INTO geo_mountain VALUES('Nanga Parbat','PK','Pakistan');
INSERT INTO geo_mountain VALUES('Sulitjelma','N','Nordland');
INSERT INTO geo_mountain VALUES('Kailash','TJ','Tibet');
INSERT INTO geo_mountain VALUES('Psiloritis','GR','Kriti');
INSERT INTO geo_mountain VALUES('GrandCombin','CH','VS');
INSERT INTO geo_mountain VALUES('Mt Hood','USA','Oregon');
INSERT INTO geo_mountain VALUES('Olymp','GR','Thessalia');
INSERT INTO geo_mountain VALUES('Snoehetta','N','Oppland');
INSERT INTO geo_mountain VALUES('Pikes Peak','USA','Colorado');
INSERT INTO geo_mountain VALUES('Moncayo','E','Aragon');
INSERT INTO geo_mountain VALUES('Monte Cinto','F','Corse');
INSERT INTO geo_mountain VALUES('Pik Pobeda','KGZ','Kyrgyzstan');
INSERT INTO geo_mountain VALUES('Mt. Babel','CDN','Quebec');
INSERT INTO geo_mountain VALUES('Damavand','IR','Mazandaran');
CREATE TABLE `geo_river`
(River VARCHAR(255),
Country VARCHAR(255),
Province VARCHAR(255));
INSERT INTO geo_river VALUES('Rhein','NL','Zuid Holland');
INSERT INTO geo_river VALUES('Euphrat','IRQ','Ninawa');
INSERT INTO geo_river VALUES('Tigris','IRQ','Ad Tamim');
INSERT INTO geo_river VALUES('Dnepr','UA','Dnipropetrovska');
INSERT INTO geo_river VALUES('Weichsel','PL','Warszwaskie');
INSERT INTO geo_river VALUES('Tigris','IRQ','Maysan');
INSERT INTO geo_river VALUES('Syrdarja','TAD','Khujand');
INSERT INTO geo_river VALUES('Thames','GB','Buckinghamshire');
INSERT INTO geo_river VALUES('Mur','A','Styria');
INSERT INTO geo_river VALUES('Don','R','Tulskaya oblast');
INSERT INTO geo_river VALUES('Ganges','IND','Bihar');
INSERT INTO geo_river VALUES('Mosel','F','Lorraine');
INSERT INTO geo_river VALUES('Elbe','CZ','Vychodocesky');
INSERT INTO geo_river VALUES('Theiss','H','Szeged (munic.)');
CREATE TABLE `geo_sea`
(Sea VARCHAR(255),
Country VARCHAR(255),
Province VARCHAR(255));
INSERT INTO geo_sea VALUES('Pacific Ocean','J','Miyazaki');
INSERT INTO geo_sea VALUES('North Sea','GB','Northumberland');
INSERT INTO geo_sea VALUES('Caribbean Sea','YV','Delta Amacuro');
INSERT INTO geo_sea VALUES('Pacific Ocean','WS','Samoa');
INSERT INTO geo_sea VALUES('Bering Sea','R','Magadanskaya oblast');
INSERT INTO geo_sea VALUES('Atlantic Ocean','P','Viana do Castelo');
INSERT INTO geo_sea VALUES('North Sea','GB','Highland');
INSERT INTO geo_sea VALUES('Atlantic Ocean','USA','North Carolina');
INSERT INTO geo_sea VALUES('Mediterranean Sea','ET','Sharqiya');
INSERT INTO geo_sea VALUES('Atlantic Ocean','WL','Saint Lucia');
INSERT INTO geo_sea VALUES('Red Sea','JOR','Jordan');
INSERT INTO geo_sea VALUES('Gulf of Mexico','MEX','Campeche');
INSERT INTO geo_sea VALUES('North Sea','GB','North Yorkshire');
INSERT INTO geo_sea VALUES('Mediterranean Sea','TR','Mugla');
CREATE TABLE `geo_source`
(River VARCHAR(255),
Country VARCHAR(255),
Province VARCHAR(255));
INSERT INTO geo_source VALUES('Pjandsh','AFG','Afghanistan');
INSERT INTO geo_source VALUES('Saone','F','Lorraine');
INSERT INTO geo_source VALUES('Bani','CI','Cote dIvoire');
INSERT INTO geo_source VALUES('Klaraelv','N','Hedmark');
INSERT INTO geo_source VALUES('Irawaddy','TJ','Tibet');
INSERT INTO geo_source VALUES('Kymijoki','SF','Haeme');
INSERT INTO geo_source VALUES('Akagera','RWA','Rwanda');
INSERT INTO geo_source VALUES('Fulda','D','Hessen');
INSERT INTO geo_source VALUES('Truckee River','USA','California');
INSERT INTO geo_source VALUES('Newa','R','Leningradskaya oblast');
INSERT INTO geo_source VALUES('River','Coun','Province');
INSERT INTO geo_source VALUES('Nelson River','CDN','Manitoba');
INSERT INTO geo_source VALUES('Limmat','CH','ZH');
INSERT INTO geo_source VALUES('Weser','D','Niedersachsen');
CREATE TABLE `island`
(Name VARCHAR(255),
Islands VARCHAR(255),
Area DOUBLE,
Height DOUBLE,
Type VARCHAR(255),
Longitude DOUBLE,
Latitude DOUBLE);
INSERT INTO island VALUES('Te Waka-a-Maui (South Island)','New Zealand',151757.0,3754.0,NULL,170.4000000000000056,-44.0);
INSERT INTO island VALUES('Long Island',NULL,3566.0,NULL,NULL,-73.29999999999999716,40.79999999999999715);
INSERT INTO island VALUES('Rota','Mariana Islands',85.0,495.0,NULL,145.1999999999999887,15.15000000000000035);
INSERT INTO island VALUES('Principe',NULL,142.0,927.0,'volcanic',7.400000000000000355,1.600000000000000088);
INSERT INTO island VALUES('Molokai','Hawaii Islands',676.0,1512.0,NULL,-157.0,21.10000000000000143);
INSERT INTO island VALUES('Majuro','Marshall Islands',9.199999999999999289,NULL,'atoll',171.4000000000000056,7.099999999999999645);
INSERT INTO island VALUES('Nauru',NULL,21.0,60.0,'coral',167.0,-1.0);
INSERT INTO island VALUES('Santa Rosa Island','Californian Channel Islands',215.0,484.0,NULL,-120.0999999999999944,34.0);
INSERT INTO island VALUES('Trinidad','Lesser Antilles',4827.0,940.0,NULL,-61.35000000000000142,10.40000000000000035);
INSERT INTO island VALUES('Flores','Azores',143.0,914.0,'volcanic',-31.19999999999999929,39.5);
INSERT INTO island VALUES('Miquelon-Langlade',NULL,205.0,240.0,NULL,-56.29999999999999716,47.10000000000000142);
INSERT INTO island VALUES('Bioko',NULL,2017.0,3011.0,'volcanic',8.699999999999999289,3.5);
INSERT INTO island VALUES('Prince Edward Island',NULL,5660.0,142.0,NULL,-63.39999999999999858,46.29999999999999716);
INSERT INTO island VALUES('Te Ika-a-Maui (North Island)','New Zealand',114597.0,2797.0,NULL,175.6999999999999887,-38.39999999999999858);
CREATE TABLE `islandIn`
(Island VARCHAR(255),
Sea VARCHAR(255),
Lake VARCHAR(255),
River VARCHAR(255));
INSERT INTO islandIn VALUES('Mayotte','Indian Ocean',NULL,NULL);
INSERT INTO islandIn VALUES('Graciosa','Atlantic Ocean',NULL,NULL);
INSERT INTO islandIn VALUES('Long Island','Atlantic Ocean',NULL,NULL);
INSERT INTO islandIn VALUES('Tortola','Caribbean Sea',NULL,NULL);
INSERT INTO islandIn VALUES('Juist','North Sea',NULL,NULL);
INSERT INTO islandIn VALUES('Martinique','Caribbean Sea',NULL,NULL);
INSERT INTO islandIn VALUES('Java','Indian Ocean',NULL,NULL);
INSERT INTO islandIn VALUES('Barbuda','Caribbean Sea',NULL,NULL);
INSERT INTO islandIn VALUES('Savaii','Pacific Ocean',NULL,NULL);
INSERT INTO islandIn VALUES('Svalbard','Barents Sea',NULL,NULL);
INSERT INTO islandIn VALUES('South Andaman Island','Andaman Sea',NULL,NULL);
INSERT INTO islandIn VALUES('Kavaratti','Arabian Sea',NULL,NULL);
INSERT INTO islandIn VALUES('Sokotra','Gulf of Aden',NULL,NULL);
INSERT INTO islandIn VALUES('Jamaica','Caribbean Sea',NULL,NULL);
CREATE TABLE `isMember`
(Country VARCHAR(255),
Organization VARCHAR(255),
Type VARCHAR(255));
INSERT INTO isMember VALUES('RA','IFAD','Category III');
INSERT INTO isMember VALUES('PITC','SPC','member');
INSERT INTO isMember VALUES('WV','WTrO','member');
INSERT INTO isMember VALUES('ANG','Interpol','member');
INSERT INTO isMember VALUES('NZ','ICRM','National Society');
INSERT INTO isMember VALUES('CY','IBRD','member');
INSERT INTO isMember VALUES('ROK','CP','member');
INSERT INTO isMember VALUES('BS','IOC','National Olympic Committee');
INSERT INTO isMember VALUES('RCH','G-77','member');
INSERT INTO isMember VALUES('F','EBRD','member');
INSERT INTO isMember VALUES('Q','UN','member');
INSERT INTO isMember VALUES('GCA','IFRCS','member');
INSERT INTO isMember VALUES('PL','UNCRO','member');
INSERT INTO isMember VALUES('R','UNIKOM','member');
CREATE TABLE `lake`
(Name VARCHAR(255),
Area DOUBLE,
Depth DOUBLE,
Altitude DOUBLE,
Type VARCHAR(255),
River VARCHAR(255),
Longitude DOUBLE,
Latitude DOUBLE);
INSERT INTO lake VALUES('Daryacheh ye Namak',1800.0,1.0,790.0,'salt',NULL,51.88000000000000255,34.5);
INSERT INTO lake VALUES('Ammersee',46.60000000000000142,81.09999999999999431,533.0,NULL,'Ammer',11.59999999999999965,48.0);
INSERT INTO lake VALUES('Lago di Bolsena',114.0,151.0,335.0,'caldera',NULL,11.90000000000000035,42.60000000000000142);
INSERT INTO lake VALUES('Neusiedlersee',320.0,1.800000000000000044,115.5,NULL,NULL,16.69999999999999929,47.79999999999999716);
INSERT INTO lake VALUES('Lake Bosumtwi',49.0,81.0,107.0,'impact',NULL,-1.399999999999999912,6.5);
INSERT INTO lake VALUES('Lake Nicaragua',8157.0,45.0,31.0,NULL,'Rio San Juan',-85.34999999999999431,11.59999999999999965);
INSERT INTO lake VALUES('Lake Tana',3000.0,14.0,1830.0,NULL,'Blue Nile',37.29999999999999715,12.0);
INSERT INTO lake VALUES('Ozero Aral',17160.0,35.0,31.0,'salt',NULL,59.61999999999999745,44.81000000000000227);
INSERT INTO lake VALUES('Ozero Taimyr',4560.0,26.0,5.0,NULL,NULL,101.5999999999999944,74.5);
INSERT INTO lake VALUES('Siljan',290.0,134.0,161.0,'impact','Oesterdalaelv',14.80000000000000071,60.85000000000000142);
INSERT INTO lake VALUES('Great Bear Lake',31792.0,446.0,156.0,NULL,NULL,-120.5999999999999944,65.90000000000000569);
INSERT INTO lake VALUES('Lake Malawi',29600.0,704.0,474.0,NULL,'Chire',34.0,-12.0);
INSERT INTO lake VALUES('Lake Maracaibo',13000.0,50.0,0.0,NULL,NULL,-71.54999999999999716,9.72000000000000063);
INSERT INTO lake VALUES('Lac Assal',54.0,NULL,-155.0,'salt',NULL,42.39999999999999858,11.65000000000000035);
CREATE TABLE `language`
(Country VARCHAR(255),
Name VARCHAR(255),
Percentage DOUBLE);
INSERT INTO language VALUES('PK','Urdu',8.0);
INSERT INTO language VALUES('PITC','Pitkern',100.0);
INSERT INTO language VALUES('KN','English',100.0);
INSERT INTO language VALUES('ARM','Russian',2.0);
INSERT INTO language VALUES('SF','Finnish',93.5);
INSERT INTO language VALUES('AZ','Russian',3.0);
INSERT INTO language VALUES('PK','Siraiki',10.0);
INSERT INTO language VALUES('AFG','Afghan Persian',50.0);
INSERT INTO language VALUES('NA','Creole',1.600000000000000088);
INSERT INTO language VALUES('PL','Polish',100.0);
INSERT INTO language VALUES('IR','Arabic',1.0);
INSERT INTO language VALUES('WAFU','French',10.80000000000000072);
INSERT INTO language VALUES('B','French',32.0);
INSERT INTO language VALUES('PK','Sindhi',12.0);
CREATE TABLE `located`
(City VARCHAR(255),
Province VARCHAR(255),
Country VARCHAR(255),
River VARCHAR(255),
Lake VARCHAR(255),
Sea VARCHAR(255));
INSERT INTO located VALUES('Suva','Fiji','FJI',NULL,NULL,'Pacific Ocean');
INSERT INTO located VALUES('Oranjestad','Aruba','ARU',NULL,NULL,'Caribbean Sea');
INSERT INTO located VALUES('Haifa','Haifa','IL',NULL,NULL,'Mediterranean Sea');
INSERT INTO located VALUES('Trivandrum','Kerala','IND',NULL,NULL,'Indian Ocean');
INSERT INTO located VALUES('Svolvaer','Nordland','N',NULL,NULL,'Norwegian Sea');
INSERT INTO located VALUES('Matsuyama','Ehime','J',NULL,NULL,'Pacific Ocean');
INSERT INTO located VALUES('Turku','Turku-Pori','SF',NULL,NULL,'Baltic Sea');
INSERT INTO located VALUES('Okayama','Okayama','J',NULL,NULL,'Pacific Ocean');
INSERT INTO located VALUES('Bridgetown','Barbados','BDS',NULL,NULL,'Atlantic Ocean');
INSERT INTO located VALUES('Semarang','Indonesia','RI',NULL,NULL,'Sunda Sea');
INSERT INTO located VALUES('Campeche','Campeche','MEX',NULL,NULL,'Gulf of Mexico');
INSERT INTO located VALUES('Ingolstadt','Bayern','D','Donau',NULL,NULL);
INSERT INTO located VALUES('Murmansk','Murmanskaya oblast','R',NULL,NULL,'Barents Sea');
INSERT INTO located VALUES('Palikir','Micronesia','FSM',NULL,NULL,'Pacific Ocean');
CREATE TABLE `locatedOn`
(City VARCHAR(255),
Province VARCHAR(255),
Country VARCHAR(255),
Island VARCHAR(255));
INSERT INTO locatedOn VALUES('Fukuoka','Fukuoka','J','Kyushu');
INSERT INTO locatedOn VALUES('Blitar','Indonesia','RI','Java');
INSERT INTO locatedOn VALUES('City','Province','Coun','Island');
INSERT INTO locatedOn VALUES('Adamstown','Pitcairn Islands','PITC','Pitcairn');
INSERT INTO locatedOn VALUES('Hakodate','Hokkaido','J','Hokkaido');
INSERT INTO locatedOn VALUES('Matlock','Derbyshire','GB','Great Britain');
INSERT INTO locatedOn VALUES('Nukualofa','Tonga','TO','Tongatapu');
INSERT INTO locatedOn VALUES('Fengshan','Taiwan','RC','Taiwan');
INSERT INTO locatedOn VALUES('Niigata','Niigata','J','Honshu');
INSERT INTO locatedOn VALUES('Madiun','Indonesia','RI','Java');
INSERT INTO locatedOn VALUES('Maidstone','Kent','GB','Great Britain');
INSERT INTO locatedOn VALUES('Havana','Ciudad de la Habana','C','Cuba');
INSERT INTO locatedOn VALUES('Samarinda','Indonesia','RI','Borneo');
INSERT INTO locatedOn VALUES('Kyoto','Kyoto','J','Honshu');
CREATE TABLE `mergesWith`
(Sea1 VARCHAR(255),
Sea2 VARCHAR(255));
INSERT INTO mergesWith VALUES('Sulawesi Sea','Sunda Sea');
INSERT INTO mergesWith VALUES('North Sea','The Channel');
INSERT INTO mergesWith VALUES('East China Sea','Yellow Sea');
INSERT INTO mergesWith VALUES('South China Sea','Sulawesi Sea');
INSERT INTO mergesWith VALUES('Arctic Ocean','Sibirian Sea');
INSERT INTO mergesWith VALUES('Gulf of Bengal','Pacific Ocean');
INSERT INTO mergesWith VALUES('Black Sea','Sea of Azov');
INSERT INTO mergesWith VALUES('East China Sea','Sea of Japan');
INSERT INTO mergesWith VALUES('Bering Sea','Pacific Ocean');
INSERT INTO mergesWith VALUES('Atlantic Ocean','Pacific Ocean');
INSERT INTO mergesWith VALUES('Sea1','Sea2');
INSERT INTO mergesWith VALUES('Kattegat','Skagerrak');
INSERT INTO mergesWith VALUES('East China Sea','Pacific Ocean');
INSERT INTO mergesWith VALUES('Pacific Ocean','Sea of Okhotsk');
CREATE TABLE `mountain`
(Name VARCHAR(255),
Mountains VARCHAR(255),
Height DOUBLE,
Type VARCHAR(255),
Longitude DOUBLE,
Latitude DOUBLE);
CREATE TABLE `mountainOnIsland`
(Mountain VARCHAR(255),
Island VARCHAR(255));
INSERT INTO mountainOnIsland VALUES('Olympos','Cyprus');
INSERT INTO mountainOnIsland VALUES('Snaefell','Iceland');
INSERT INTO mountainOnIsland VALUES('La Soufriere','Basse-Terre');
INSERT INTO mountainOnIsland VALUES('Mt. Cook','Te Waka-a-Maui (South Island)');
INSERT INTO mountainOnIsland VALUES('Pulog','Luzon');
INSERT INTO mountainOnIsland VALUES('Pico Basile','Bioko');
INSERT INTO mountainOnIsland VALUES('Piton des Neiges','Reunion');
INSERT INTO mountainOnIsland VALUES('Monte Cinto','Corse');
INSERT INTO mountainOnIsland VALUES('Pico de Teide','Teneriffa');
INSERT INTO mountainOnIsland VALUES('Semeru','Java');
INSERT INTO mountainOnIsland VALUES('Mt.Victoria','Viti Levu');
INSERT INTO mountainOnIsland VALUES('Psiloritis','Kreta');
INSERT INTO mountainOnIsland VALUES('Pico de los Nieves','Gran Canaria');
INSERT INTO mountainOnIsland VALUES('Mauna Loa','Hawaii');
CREATE TABLE `organization`
(Abbreviation VARCHAR(255),
Name VARCHAR(255),
City VARCHAR(255),
Country VARCHAR(255),
Province VARCHAR(255),
Established DATE);
INSERT INTO organization VALUES('G-15','Group of 15','Geneva','CH','GE',NULL);
INSERT INTO organization VALUES('G-19','Group of 19',NULL,NULL,NULL,'1975-10-01');
INSERT INTO organization VALUES('Interpol','International Criminal Police Organization','Lyon','F','Rhone Alpes','1956-06-13');
INSERT INTO organization VALUES('FZ','Franc Zone','Paris','F','Ile de France','1945-12-20');
INSERT INTO organization VALUES('CCC','Customs Cooperation Council','Brussels','B','Brabant','1950-12-15');
INSERT INTO organization VALUES('CEI','Central European Initiative','Budapest','H','Budapest (munic.)','1991-07-27');
INSERT INTO organization VALUES('IMO','International Maritime Organization','London','GB','Greater London','1958-03-17');
INSERT INTO organization VALUES('UNOMIL','United Nations Observer Mission in Liberia','New York','USA','New York','1993-09-22');
INSERT INTO organization VALUES('UNPREDEP','United Nations Preventive Deployment Force',NULL,NULL,NULL,'1995-03-31');
INSERT INTO organization VALUES('ECE','Economic Commission for Europe','Geneva','CH','GE','1947-03-28');
INSERT INTO organization VALUES('ECO','Economic Cooperation Organization','Tehran','IR','Tehran','1985-01-01');
INSERT INTO organization VALUES('UPU','Universal Postal Union','Bern','CH','BE','1874-10-09');
INSERT INTO organization VALUES('Abbreviation','Name','City','Coun','Province','Established');
INSERT INTO organization VALUES('CERN','European Organization for Nuclear Research','Geneva','CH','GE','1953-07-01');
CREATE TABLE `politics`
(Country VARCHAR(255),
Independence DATE,
Dependent VARCHAR(255),
Government VARCHAR(255));
INSERT INTO politics VALUES('BZ','1981-09-21',NULL,'parliamentary democracy');
INSERT INTO politics VALUES('HR','1991-06-25',NULL,'parliamentary democracy');
INSERT INTO politics VALUES('OM','1650-01-01',NULL,'monarchy');
INSERT INTO politics VALUES('PL','1918-11-11',NULL,'democratic state');
INSERT INTO politics VALUES('RIM','1960-11-28',NULL,'republic');
INSERT INTO politics VALUES('AFG','1919-08-19',NULL,'transitional government');
INSERT INTO politics VALUES('Q','1971-09-03',NULL,'traditional monarchy');
INSERT INTO politics VALUES('SN','1960-08-20',NULL,'republic under multiparty democratic rule');
INSERT INTO politics VALUES('EAU','1962-10-09',NULL,'republic');
INSERT INTO politics VALUES('SVAX',NULL,'N','territory of Norway administered by the Ministry of Industry');
INSERT INTO politics VALUES('DZ','1962-07-05',NULL,'republic');
INSERT INTO politics VALUES('RCA','1960-08-13',NULL,'republic');
INSERT INTO politics VALUES('IR','1979-04-01',NULL,'theocratic republic');
INSERT INTO politics VALUES('TN','1956-03-20',NULL,'republic');
CREATE TABLE `population`
(Country VARCHAR(255),
Population_Growth DOUBLE,
Infant_Mortality DOUBLE);
INSERT INTO population VALUES('MAYO',3.319999999999999841,56.28999999999999915);
INSERT INTO population VALUES('VIRG',-0.05999999999999999778,12.53999999999999915);
INSERT INTO population VALUES('TN',1.810000000000000053,35.10000000000000142);
INSERT INTO population VALUES('ETH',2.720000000000000195,122.7999999999999972);
INSERT INTO population VALUES('WEST',4.990000000000000213,28.60000000000000142);
INSERT INTO population VALUES('COOK',-3.299999999999999823,16.89999999999999857);
INSERT INTO population VALUES('BRU',2.560000000000000053,24.19999999999999929);
INSERT INTO population VALUES('NL',0.5600000000000000533,4.900000000000000355);
INSERT INTO population VALUES('GBM',0.939999999999999947,2.399999999999999912);
INSERT INTO population VALUES('WG',0.5500000000000000444,11.90000000000000035);
INSERT INTO population VALUES('RCA',2.080000000000000071,111.7000000000000028);
INSERT INTO population VALUES('TT',0.08000000000000000166,18.19999999999999929);
INSERT INTO population VALUES('IR',2.209999999999999965,52.70000000000000284);
INSERT INTO population VALUES('A',0.4099999999999999756,6.200000000000000177);
CREATE TABLE `province`
(Name VARCHAR(255),
Country VARCHAR(255),
Population BIGINT,
Area DOUBLE,
Capital VARCHAR(255),
CapProv VARCHAR(255));
INSERT INTO province VALUES('Ontario','CDN',10753573,1068580.0,'Toronto','Ontario');
INSERT INTO province VALUES('Vienna','A',1583000,415.0,'Vienna','Vienna');
INSERT INTO province VALUES('Luxembourg','B',234664,4441.0,'Arlon','Luxembourg');
INSERT INTO province VALUES('Denmark','DK',5249632,NULL,'Copenhagen','Denmark');
INSERT INTO province VALUES('Kristianstad','S',291468,6087.0,'Kristianstad','Kristianstad');
INSERT INTO province VALUES('Tachira','YV',946949,11100.0,'San Cristobal','Tachira');
INSERT INTO province VALUES('Madrid','E',5034548,8028.0,'Madrid','Madrid');
INSERT INTO province VALUES('JU','CH',69188,836.0,'Delemont','JU');
INSERT INTO province VALUES('San Marino','RSM',24521,NULL,'San Marino','San Marino');
INSERT INTO province VALUES('Rukwa','EAT',684000,68635.0,'Sumbawanga','Rukwa');
INSERT INTO province VALUES('Bangladesh','BD',123062800,NULL,'Dhaka','Bangladesh');
INSERT INTO province VALUES('Santa Catarina','BR',4865090,95442.0,'Florianopolis','Santa Catarina');
INSERT INTO province VALUES('Khorasan','IR',6013200,313337.0,'Mashhad','Khorasan');
INSERT INTO province VALUES('Valle de Cauca','CO',3027247,22140.0,'Cali','Valle de Cauca');
CREATE TABLE `religion`
(Country VARCHAR(255),
Name VARCHAR(255),
Percentage DOUBLE);
INSERT INTO religion VALUES('MYA','Buddhist',89.0);
INSERT INTO religion VALUES('ROK','Buddhist',47.39999999999999858);
INSERT INTO religion VALUES('RMM','Christian',1.0);
INSERT INTO religion VALUES('ES','Roman Catholic',75.0);
INSERT INTO religion VALUES('NAU','Christian',100.0);
INSERT INTO religion VALUES('RWA','Muslim',1.0);
INSERT INTO religion VALUES('MS','Christian',28.30000000000000071);
INSERT INTO religion VALUES('AUS','Anglican',26.10000000000000142);
INSERT INTO religion VALUES('CH','Protestant',44.29999999999999715);
INSERT INTO religion VALUES('G','Muslim',1.0);
INSERT INTO religion VALUES('BERM','African Methodist Episcopal',11.0);
INSERT INTO religion VALUES('LB','Christian',10.0);
INSERT INTO religion VALUES('RB','Christian',50.0);
INSERT INTO religion VALUES('BRU','Muslim',63.0);
CREATE TABLE `river`
(Name VARCHAR(255),
River VARCHAR(255),
Lake VARCHAR(255),
Sea VARCHAR(255),
Length DOUBLE,
SourceLongitude DOUBLE,
SourceLatitude DOUBLE,
Mountains VARCHAR(255),
SourceAltitude DOUBLE,
EstuaryLongitude DOUBLE,
EstuaryLatitude DOUBLE);
INSERT INTO river VALUES('Joekulsa a Fjoellum',NULL,NULL,'Norwegian Sea',206.0,-16.5,64.79999999999999716,NULL,NULL,-16.60000000000000143,66.20000000000000284);
INSERT INTO river VALUES('Isar','Donau',NULL,NULL,295.0,11.40000000000000035,47.36999999999999745,'Alps',1.159999999999999921,12.98000000000000042,48.79999999999999716);
INSERT INTO river VALUES('Lena',NULL,NULL,'Sibirian Sea',4400.0,107.8799999999999955,53.99000000000000198,NULL,1465.0,126.6919999999999931,72.40049999999999386);
INSERT INTO river VALUES('Rio Grande',NULL,NULL,'Gulf of Mexico',3034.0,-107.5,38.0,NULL,3900.0,-97.1800000000000069,25.96000000000000085);
INSERT INTO river VALUES('Douro',NULL,NULL,'Atlantic Ocean',897.0,-3.0,42.0,'Cordillera Iberica',2160.0,-8.660000000000000142,41.14999999999999858);
INSERT INTO river VALUES('Senegal',NULL,NULL,'Atlantic Ocean',1430.0,-12.0,11.5,NULL,NULL,-16.5,15.96000000000000085);
INSERT INTO river VALUES('Weichsel',NULL,NULL,'Baltic Sea',1047.0,19.01000000000000157,49.60999999999999944,'Beskides',1100.0,18.94999999999999929,54.35999999999999944);
INSERT INTO river VALUES('Vaesterdalaelv','Dalaelv',NULL,NULL,320.0,12.59999999999999965,61.79999999999999716,NULL,NULL,15.09999999999999965,60.70000000000000284);
INSERT INTO river VALUES('Rio Negro','Amazonas',NULL,NULL,2253.0,-70.0,-2.0,'Andes',NULL,-60.0,-3.100000000000000088);
INSERT INTO river VALUES('Bahr el-Ghasal','White Nile',NULL,NULL,716.0,NULL,NULL,NULL,NULL,30.42999999999999972,9.5);
INSERT INTO river VALUES('Ruki','Zaire',NULL,NULL,130.0,19.0,-0.2999999999999999889,NULL,NULL,18.0,0.0);
INSERT INTO river VALUES('Vaal','Oranje',NULL,NULL,1251.0,30.0,-26.0,'Drakensberge',NULL,24.0,-29.0);
INSERT INTO river VALUES('Ganges',NULL,NULL,'Gulf of Bengal',2511.0,79.5,30.5,NULL,NULL,90.0,22.0);
INSERT INTO river VALUES('Sobat','White Nile',NULL,NULL,740.0,NULL,NULL,NULL,NULL,31.64999999999999858,9.63000000000000079);
CREATE TABLE `sea`
(Name VARCHAR(255),
Depth DOUBLE);
INSERT INTO sea VALUES('Skagerrak',725.0);
INSERT INTO sea VALUES('Andaman Sea',3113.0);
INSERT INTO sea VALUES('Persian Gulf',102.0);
INSERT INTO sea VALUES('Baltic Sea',459.0);
INSERT INTO sea VALUES('Norwegian Sea',3860.0);
INSERT INTO sea VALUES('Sunda Sea',7440.0);
INSERT INTO sea VALUES('Sibirian Sea',540.0);
INSERT INTO sea VALUES('Gulf of Mexico',4375.0);
INSERT INTO sea VALUES('Irish Sea',272.0);
INSERT INTO sea VALUES('Mediterranean Sea',5121.0);
INSERT INTO sea VALUES('Sulawesi Sea',6218.0);
INSERT INTO sea VALUES('Caribbean Sea',7240.0);
INSERT INTO sea VALUES('Pacific Ocean',11034.0);
INSERT INTO sea VALUES('Malakka Strait',104.0);
CREATE TABLE `target`
(Country VARCHAR(255),
Target VARCHAR(255));
INSERT INTO target VALUES('DK','Christian');
INSERT INTO target VALUES('CAYM','Christian');
INSERT INTO target VALUES('ARM','Christian');
INSERT INTO target VALUES('HCA','Christian');
INSERT INTO target VALUES('Z','Christian');
INSERT INTO target VALUES('ES','Christian');
INSERT INTO target VALUES('A','Christian');
INSERT INTO target VALUES('MC','Christian');
INSERT INTO target VALUES('RCB','Christian');
INSERT INTO target VALUES('WSA','non-Christian');
INSERT INTO target VALUES('UZB','non-Christian');
INSERT INTO target VALUES('IND','non-Christian');
INSERT INTO target VALUES('GUY','Christian');
INSERT INTO target VALUES('CH','Christian');
