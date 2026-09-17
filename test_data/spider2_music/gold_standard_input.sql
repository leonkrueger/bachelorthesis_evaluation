CREATE TABLE `Artist`
(`ArtistId` BIGINT,
`Name` VARCHAR(1023));
CREATE TABLE `Genre`
(`GenreId` BIGINT,
`Name` VARCHAR(1023));
CREATE TABLE `MediaType`
(`MediaTypeId` BIGINT,
`Name` VARCHAR(1023));
CREATE TABLE `Playlist`
(`PlaylistId` BIGINT,
`Name` VARCHAR(1023));
CREATE TABLE `Album`
(`AlbumId` BIGINT,
`Title` VARCHAR(1023),
`ArtistId` BIGINT);
CREATE TABLE `Track`
(`TrackId` BIGINT,
`Name` VARCHAR(1023),
`AlbumId` BIGINT,
`MediaTypeId` BIGINT,
`GenreId` BIGINT,
`Composer` VARCHAR(1023),
`Milliseconds` BIGINT,
`Bytes` BIGINT,
`UnitPrice` DOUBLE);
CREATE TABLE `PlaylistTrack`
(`PlaylistId` BIGINT,
`TrackId` BIGINT);
CREATE TABLE `Customer`
(`CustomerId` BIGINT,
`FirstName` VARCHAR(1023),
`LastName` VARCHAR(1023),
`Company` VARCHAR(1023),
`Address` VARCHAR(1023),
`City` VARCHAR(1023),
`State` VARCHAR(1023),
`Country` VARCHAR(1023),
`PostalCode` VARCHAR(1023),
`Phone` VARCHAR(1023),
`Fax` VARCHAR(1023),
`Email` VARCHAR(1023),
`SupportRepId` BIGINT);
CREATE TABLE `Employee`
(`EmployeeId` BIGINT,
`LastName` VARCHAR(1023),
`FirstName` VARCHAR(1023),
`Title` VARCHAR(1023),
`ReportsTo` BIGINT,
`BirthDate` DATETIME,
`HireDate` DATETIME,
`Address` VARCHAR(1023),
`City` VARCHAR(1023),
`State` VARCHAR(1023),
`Country` VARCHAR(1023),
`PostalCode` VARCHAR(1023),
`Phone` VARCHAR(1023),
`Fax` VARCHAR(1023),
`Email` VARCHAR(1023));
CREATE TABLE `Invoice`
(`InvoiceId` BIGINT,
`CustomerId` BIGINT,
`InvoiceDate` DATETIME,
`BillingAddress` VARCHAR(1023),
`BillingCity` VARCHAR(1023),
`BillingState` VARCHAR(1023),
`BillingCountry` VARCHAR(1023),
`BillingPostalCode` VARCHAR(1023),
`Total` DOUBLE);
CREATE TABLE `InvoiceLine`
(`InvoiceLineId` BIGINT,
`InvoiceId` BIGINT,
`TrackId` BIGINT,
`UnitPrice` DOUBLE,
`Quantity` BIGINT);
INSERT INTO artist VALUES(33,'Luiz Melodia');
INSERT INTO artist VALUES(135,'System Of A Down');
INSERT INTO artist VALUES(264,'Kent Nagano and Orchestre de l''Opéra de Lyon');
INSERT INTO artist VALUES(169,'Black Eyed Peas');
INSERT INTO artist VALUES(9,'BackBeat');
INSERT INTO artist VALUES(235,'Emanuel Ax, Eugene Ormandy & Philadelphia Orchestra');
INSERT INTO artist VALUES(81,'Eric Clapton');
INSERT INTO artist VALUES(113,'Os Paralamas Do Sucesso');
INSERT INTO artist VALUES(273,'C. Monteverdi, Nigel Rogers - Chiaroscuro; London Baroque; London Cornett & Sackbu');
INSERT INTO artist VALUES(20,'Cláudio Zoli');
INSERT INTO artist VALUES(50,'Metallica');
INSERT INTO artist VALUES(214,'Academy of St. Martin in the Fields & Sir Neville Marriner');
INSERT INTO artist VALUES(23,'Frank Zappa & Captain Beefheart');
INSERT INTO artist VALUES(120,'Pink Floyd');
INSERT INTO artist VALUES(250,'Christopher O''Riley');
INSERT INTO artist VALUES(61,'Santana Feat. Everlast');
INSERT INTO artist VALUES(127,'Red Hot Chili Peppers');
INSERT INTO artist VALUES(224,'Barry Wordsworth & BBC Concert Orchestra');
INSERT INTO genre VALUES(2,'Jazz');
INSERT INTO genre VALUES(3,'Metal');
INSERT INTO genre VALUES(4,'Alternative & Punk');
INSERT INTO genre VALUES(6,'Blues');
INSERT INTO genre VALUES(7,'Latin');
INSERT INTO genre VALUES(8,'Reggae');
INSERT INTO genre VALUES(9,'Pop');
INSERT INTO genre VALUES(11,'Bossa Nova');
INSERT INTO genre VALUES(12,'Easy Listening');
INSERT INTO genre VALUES(13,'Heavy Metal');
INSERT INTO genre VALUES(14,'R&B/Soul');
INSERT INTO genre VALUES(15,'Electronica/Dance');
INSERT INTO genre VALUES(17,'Hip Hop/Rap');
INSERT INTO genre VALUES(18,'Science Fiction');
INSERT INTO genre VALUES(19,'TV Shows');
INSERT INTO genre VALUES(20,'Sci Fi & Fantasy');
INSERT INTO genre VALUES(22,'Comedy');
INSERT INTO genre VALUES(24,'Classical');
INSERT INTO mediatype VALUES(1,'MPEG audio file');
INSERT INTO mediatype VALUES(2,'Protected AAC audio file');
INSERT INTO mediatype VALUES(3,'Protected MPEG-4 video file');
INSERT INTO mediatype VALUES(4,'Purchased AAC audio file');
INSERT INTO mediatype VALUES(5,'AAC audio file');
INSERT INTO playlist VALUES(1,'Music');
INSERT INTO playlist VALUES(2,'Movies');
INSERT INTO playlist VALUES(3,'TV Shows');
INSERT INTO playlist VALUES(4,'Audiobooks');
INSERT INTO playlist VALUES(5,'90’s Music');
INSERT INTO playlist VALUES(6,'Audiobooks');
INSERT INTO playlist VALUES(7,'Movies');
INSERT INTO playlist VALUES(8,'Music');
INSERT INTO playlist VALUES(9,'Music Videos');
INSERT INTO playlist VALUES(10,'TV Shows');
INSERT INTO playlist VALUES(11,'Brazilian Music');
INSERT INTO playlist VALUES(12,'Classical');
INSERT INTO playlist VALUES(13,'Classical 101 - Deep Cuts');
INSERT INTO playlist VALUES(14,'Classical 101 - Next Steps');
INSERT INTO playlist VALUES(15,'Classical 101 - The Basics');
INSERT INTO playlist VALUES(16,'Grunge');
INSERT INTO playlist VALUES(17,'Heavy Metal Classic');
INSERT INTO playlist VALUES(18,'On-The-Go 1');
INSERT INTO album VALUES(290,'The Last Night of the Proms',224);
INSERT INTO album VALUES(154,'Ride The Lightning',50);
INSERT INTO album VALUES(35,'Garage Inc. (Disc 1)',50);
INSERT INTO album VALUES(167,'Acústico MTV',113);
INSERT INTO album VALUES(72,'The Cream Of Clapton',81);
INSERT INTO album VALUES(73,'Unplugged',81);
INSERT INTO album VALUES(168,'Arquivo II',113);
INSERT INTO album VALUES(169,'Arquivo Os Paralamas Do Sucesso',113);
INSERT INTO album VALUES(12,'BackBeat Soundtrack',9);
INSERT INTO album VALUES(301,'Chopin: Piano Concertos Nos. 1 & 2',235);
INSERT INTO album VALUES(334,'Weill: The Seven Deadly Sins',264);
INSERT INTO album VALUES(207,'Mezmerize',135);
INSERT INTO album VALUES(183,'Dark Side Of The Moon',120);
INSERT INTO album VALUES(280,'The World of Classical Favourites',214);
INSERT INTO album VALUES(345,'Monteverdi: L''Orfeo',273);
INSERT INTO album VALUES(152,'Master Of Puppets',50);
INSERT INTO album VALUES(28,'Na Pista',20);
INSERT INTO album VALUES(318,'SCRIABIN: Vers la flamme',250);
INSERT INTO track VALUES(3489,'Symphony No. 2: III. Allegro vivace',334,2,24,'Kurt Weill',376510,6129146,0.989999999999999992);
INSERT INTO track VALUES(2051,'Uns Dias',167,1,7,'Herbert Vianna',240796,7931552,0.989999999999999992);
INSERT INTO track VALUES(2055,'Brasília 5:31',167,1,7,'Herbert Vianna',178337,5857116,0.989999999999999992);
INSERT INTO track VALUES(2077,'Caleidoscópio',169,1,7,NULL,211330,7000017,0.989999999999999992);
INSERT INTO track VALUES(2063,'Nebulosa Do Amor',167,1,7,'Herbert Vianna',203415,6732496,0.989999999999999992);
INSERT INTO track VALUES(910,'Before You Accuse Me',73,1,6,'Eugene McDaniel',224339,7456807,0.989999999999999992);
INSERT INTO track VALUES(2064,'Caleidoscópio',167,1,7,'Herbert Vianna',256522,8484597,0.989999999999999992);
INSERT INTO track VALUES(895,'Crossroads',72,1,6,'Clapton/Robert Johnson Arr: Eric Clapton',253335,8273540,0.989999999999999992);
INSERT INTO track VALUES(1108,'Realce',73,1,7,'Gilberto Gil',264489,8847612,0.989999999999999992);
INSERT INTO track VALUES(891,'Layla',72,1,6,'Clapton/Gordon',430733,14115792,0.989999999999999992);
INSERT INTO track VALUES(2071,'Uma Brasileira',168,1,7,'Carlinhos Brown/Herbert Vianna',217573,7280574,0.989999999999999992);
INSERT INTO track VALUES(1112,'Beira Mar',73,1,7,'Gilberto Gil',295444,9597994,0.989999999999999992);
INSERT INTO track VALUES(2073,'Saber Amar',168,1,7,'Herbert Vianna',202788,6723733,0.989999999999999992);
INSERT INTO track VALUES(2075,'O Amor Nao Sabe Esperar',168,1,7,'Herbert Vianna',241084,8042534,0.989999999999999992);
INSERT INTO track VALUES(412,'Die Die My Darling',35,1,3,'Danzig',149315,4867667,0.989999999999999992);
INSERT INTO track VALUES(1117,'Aquele Abraço',73,1,7,'Gilberto Gil',263993,8805003,0.989999999999999992);
INSERT INTO track VALUES(2047,'Um Amor, Um Lugar',167,1,7,'Herbert Vianna',184555,6090334,0.989999999999999992);
INSERT INTO track VALUES(1120,'Sítio Do Pica-Pau Amarelo',73,1,7,'Gilberto Gil',218070,7217955,0.989999999999999992);
INSERT INTO playlisttrack VALUES(13,3489);
INSERT INTO playlisttrack VALUES(8,2063);
INSERT INTO playlisttrack VALUES(5,891);
INSERT INTO playlisttrack VALUES(5,1120);
INSERT INTO playlisttrack VALUES(5,895);
INSERT INTO playlisttrack VALUES(8,2071);
INSERT INTO playlisttrack VALUES(8,2073);
INSERT INTO playlisttrack VALUES(8,2075);
INSERT INTO playlisttrack VALUES(8,1108);
INSERT INTO playlisttrack VALUES(8,2077);
INSERT INTO playlisttrack VALUES(8,2047);
INSERT INTO playlisttrack VALUES(8,891);
INSERT INTO playlisttrack VALUES(8,1112);
INSERT INTO playlisttrack VALUES(5,2063);
INSERT INTO playlisttrack VALUES(8,2051);
INSERT INTO playlisttrack VALUES(8,1117);
INSERT INTO playlisttrack VALUES(8,2055);
INSERT INTO playlisttrack VALUES(8,1120);
INSERT INTO customer VALUES(2,'Leonie','Köhler',NULL,'Theodor-Heuss-Straße 34','Stuttgart',NULL,'Germany','70174','+49 0711 2842222',NULL,'leonekohler@surfeu.de',5);
INSERT INTO customer VALUES(3,'François','Tremblay',NULL,'1498 rue Bélanger','Montréal','QC','Canada','H2G 1A7','+1 (514) 721-4711',NULL,'ftremblay@gmail.com',3);
INSERT INTO customer VALUES(36,'Hannah','Schneider',NULL,'Tauentzienstraße 8','Berlin',NULL,'Germany','10789','+49 030 26550280',NULL,'hannah.schneider@yahoo.de',5);
INSERT INTO customer VALUES(37,'Fynn','Zimmermann',NULL,'Berger Straße 10','Frankfurt',NULL,'Germany','60316','+49 069 40598889',NULL,'fzimmermann@yahoo.de',3);
INSERT INTO customer VALUES(6,'Helena','Holý',NULL,'Rilská 3174/6','Prague',NULL,'Czech Republic','14300','+420 2 4177 0449',NULL,'hholy@gmail.com',5);
INSERT INTO customer VALUES(41,'Marc','Dubois',NULL,'11, Place Bellecour','Lyon',NULL,'France','69002','+33 04 78 30 30 30',NULL,'marc.dubois@hotmail.com',5);
INSERT INTO customer VALUES(10,'Eduardo','Martins','Woodstock Discos','Rua Dr. Falcão Filho, 155','São Paulo','SP','Brazil','01007-010','+55 (11) 3033-5446','+55 (11) 3033-4564','eduardo@woodstock.com.br',4);
INSERT INTO customer VALUES(48,'Johannes','Van der Berg',NULL,'Lijnbaansgracht 120bg','Amsterdam','VV','Netherlands','1016','+31 020 6223130',NULL,'johavanderberg@yahoo.nl',5);
INSERT INTO customer VALUES(17,'Jack','Smith','Microsoft Corporation','1 Microsoft Way','Redmond','WA','USA','98052-8300','+1 (425) 882-8080','+1 (425) 882-8081','jacksmith@microsoft.com',5);
INSERT INTO customer VALUES(50,'Enrique','Muñoz',NULL,'C/ San Bernardo 85','Madrid',NULL,'Spain','28015','+34 914 454 454',NULL,'enrique_munoz@yahoo.es',5);
INSERT INTO customer VALUES(19,'Tim','Goyer','Apple Inc.','1 Infinite Loop','Cupertino','CA','USA','95014','+1 (408) 996-1010','+1 (408) 996-1011','tgoyer@apple.com',3);
INSERT INTO customer VALUES(54,'Steve','Murray',NULL,'110 Raeburn Pl','Edinburgh ',NULL,'United Kingdom','EH4 1HH','+44 0131 315 3300',NULL,'steve.murray@yahoo.uk',5);
INSERT INTO customer VALUES(56,'Diego','Gutiérrez',NULL,'307 Macacha Güemes','Buenos Aires',NULL,'Argentina','1106','+54 (0)11 4311 4333',NULL,'diego.gutierrez@yahoo.ar',4);
INSERT INTO customer VALUES(57,'Luis','Rojas',NULL,'Calle Lira, 198','Santiago',NULL,'Chile',NULL,'+56 (0)2 635 4444',NULL,'luisrojas@yahoo.cl',5);
INSERT INTO customer VALUES(26,'Richard','Cunningham',NULL,'2211 W Berry Street','Fort Worth','TX','USA','76110','+1 (817) 924-7272',NULL,'ricunningham@hotmail.com',4);
INSERT INTO customer VALUES(27,'Patrick','Gray',NULL,'1033 N Park Ave','Tucson','AZ','USA','85719','+1 (520) 622-4200',NULL,'patrick.gray@aol.com',4);
INSERT INTO customer VALUES(30,'Edward','Francis',NULL,'230 Elgin Street','Ottawa','ON','Canada','K2P 1L7','+1 (613) 234-3322',NULL,'edfrancis@yachoo.ca',3);
INSERT INTO customer VALUES(31,'Martha','Silk',NULL,'194A Chain Lake Drive','Halifax','NS','Canada','B3S 1C5','+1 (902) 450-0450',NULL,'marthasilk@gmail.com',5);
INSERT INTO employee VALUES(1,'Adams','Andrew','General Manager',NULL,'1962-02-18 00:00:00','2002-08-14 00:00:00','11120 Jasper Ave NW','Edmonton','AB','Canada','T5K 2N1','+1 (780) 428-9482','+1 (780) 428-3457','andrew@chinookcorp.com');
INSERT INTO employee VALUES(2,'Edwards','Nancy','Sales Manager',1,'1958-12-08 00:00:00','2002-05-01 00:00:00','825 8 Ave SW','Calgary','AB','Canada','T2P 2T3','+1 (403) 262-3443','+1 (403) 262-3322','nancy@chinookcorp.com');
INSERT INTO employee VALUES(3,'Peacock','Jane','Sales Support Agent',2,'1973-08-29 00:00:00','2002-04-01 00:00:00','1111 6 Ave SW','Calgary','AB','Canada','T2P 5M5','+1 (403) 262-3443','+1 (403) 262-6712','jane@chinookcorp.com');
INSERT INTO employee VALUES(4,'Park','Margaret','Sales Support Agent',2,'1947-09-19 00:00:00','2003-05-03 00:00:00','683 10 Street SW','Calgary','AB','Canada','T2P 5G3','+1 (403) 263-4423','+1 (403) 263-4289','margaret@chinookcorp.com');
INSERT INTO employee VALUES(5,'Johnson','Steve','Sales Support Agent',2,'1965-03-03 00:00:00','2003-10-17 00:00:00','7727B 41 Ave','Calgary','AB','Canada','T3B 1Y7','1 (780) 836-9987','1 (780) 836-9543','steve@chinookcorp.com');
INSERT INTO employee VALUES(6,'Mitchell','Michael','IT Manager',1,'1973-07-01 00:00:00','2003-10-17 00:00:00','5827 Bowness Road NW','Calgary','AB','Canada','T3B 0C5','+1 (403) 246-9887','+1 (403) 246-9899','michael@chinookcorp.com');
INSERT INTO employee VALUES(7,'King','Robert','IT Staff',6,'1970-05-29 00:00:00','2004-01-02 00:00:00','590 Columbia Boulevard West','Lethbridge','AB','Canada','T1K 5N8','+1 (403) 456-9986','+1 (403) 456-8485','robert@chinookcorp.com');
INSERT INTO employee VALUES(8,'Callahan','Laura','IT Staff',6,'1968-01-09 00:00:00','2004-03-04 00:00:00','923 7 ST NW','Lethbridge','AB','Canada','T1H 1Y8','+1 (403) 467-3351','+1 (403) 467-8772','laura@chinookcorp.com');
INSERT INTO invoice VALUES(33,57,'2009-05-15 00:00:00','Calle Lira, 198','Santiago',NULL,'Chile',NULL,13.85999999999999944);
INSERT INTO invoice VALUES(354,26,'2013-04-05 00:00:00','2211 W Berry Street','Fort Worth','TX','USA','76110',8.910000000000000142);
INSERT INTO invoice VALUES(167,26,'2011-01-02 00:00:00','2211 W Berry Street','Fort Worth','TX','USA','76110',0.989999999999999992);
INSERT INTO invoice VALUES(168,27,'2011-01-15 00:00:00','1033 N Park Ave','Tucson','AZ','USA','85719',1.979999999999999983);
INSERT INTO invoice VALUES(170,31,'2011-01-16 00:00:00','194A Chain Lake Drive','Halifax','NS','Canada','B3S 1C5',3.959999999999999965);
INSERT INTO invoice VALUES(138,37,'2010-08-23 00:00:00','Berger Straße 10','Frankfurt',NULL,'Germany','60316',13.85999999999999944);
INSERT INTO invoice VALUES(299,26,'2012-08-05 00:00:00','2211 W Berry Street','Fort Worth','TX','USA','76110',23.85999999999999944);
INSERT INTO invoice VALUES(12,2,'2009-02-11 00:00:00','Theodor-Heuss-Straße 34','Stuttgart',NULL,'Germany','70174',13.85999999999999944);
INSERT INTO invoice VALUES(403,56,'2013-11-08 00:00:00','307 Macacha Güemes','Buenos Aires',NULL,'Argentina','1106',8.910000000000000142);
INSERT INTO invoice VALUES(244,31,'2011-12-09 00:00:00','194A Chain Lake Drive','Halifax','NS','Canada','B3S 1C5',0.989999999999999992);
INSERT INTO invoice VALUES(213,27,'2011-07-22 00:00:00','1033 N Park Ave','Tucson','AZ','USA','85719',5.94000000000000039);
INSERT INTO invoice VALUES(307,19,'2012-09-13 00:00:00','1 Infinite Loop','Cupertino','CA','USA','95014',1.989999999999999992);
INSERT INTO invoice VALUES(247,36,'2011-12-23 00:00:00','Tauentzienstraße 8','Berlin',NULL,'Germany','10789',3.959999999999999965);
INSERT INTO invoice VALUES(216,56,'2011-08-07 00:00:00','307 Macacha Güemes','Buenos Aires',NULL,'Argentina','1106',0.989999999999999992);
INSERT INTO invoice VALUES(152,54,'2010-10-24 00:00:00','110 Raeburn Pl','Edinburgh ',NULL,'United Kingdom','EH4 1HH',13.85999999999999944);
INSERT INTO invoice VALUES(346,41,'2013-03-02 00:00:00','11, Place Bellecour','Lyon',NULL,'France','69002',5.94000000000000039);
INSERT INTO invoice VALUES(381,54,'2013-08-04 00:00:00','110 Raeburn Pl','Edinburgh ',NULL,'United Kingdom','EH4 1HH',5.94000000000000039);
INSERT INTO invoice VALUES(224,36,'2011-09-20 00:00:00','Tauentzienstraße 8','Berlin',NULL,'Germany','10789',1.979999999999999983);
INSERT INTO invoiceline VALUES(911,168,2064,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(69,12,412,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(1873,346,891,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(910,167,2063,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(2062,381,2047,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(1328,244,1112,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(2064,381,2055,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(2063,381,2051,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(915,170,2071,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(916,170,2073,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(1333,247,1120,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(917,170,2075,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(183,33,1108,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(184,33,1117,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(918,170,2077,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(756,138,1112,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(1874,346,895,0.989999999999999992,1);
INSERT INTO invoiceline VALUES(1151,213,3489,0.989999999999999992,1);
