CREATE TABLE `categories`
(`categoryid` BIGINT,
`categoryname` VARCHAR(1023),
`description` VARCHAR(1023),
`picture` BLOB);
CREATE TABLE `customers`
(`customerid` VARCHAR(1023),
`companyname` VARCHAR(1023),
`contactname` VARCHAR(1023),
`contacttitle` VARCHAR(1023),
`address` VARCHAR(1023),
`city` VARCHAR(1023),
`region` VARCHAR(1023),
`postalcode` VARCHAR(1023),
`country` VARCHAR(1023),
`phone` VARCHAR(1023),
`fax` VARCHAR(1023));
CREATE TABLE `employees`
(`employeeid` BIGINT,
`lastname` VARCHAR(1023),
`firstname` VARCHAR(1023),
`title` VARCHAR(1023),
`titleofcourtesy` VARCHAR(1023),
`birthdate` DATE,
`hiredate` DATE,
`address` VARCHAR(1023),
`city` VARCHAR(1023),
`region` VARCHAR(1023),
`postalcode` VARCHAR(1023),
`country` VARCHAR(1023),
`homephone` VARCHAR(1023),
`extension` VARCHAR(1023),
`photo` BLOB,
`notes` VARCHAR(1023),
`reportsto` BIGINT,
`photopath` VARCHAR(1023));
CREATE TABLE `region`
(`regionid` BIGINT,
`regiondescription` VARCHAR(1023));
CREATE TABLE `shippers`
(`shipperid` BIGINT,
`companyname` VARCHAR(1023),
`phone` VARCHAR(1023));
CREATE TABLE `suppliers`
(`supplierid` BIGINT,
`companyname` VARCHAR(1023),
`contactname` VARCHAR(1023),
`contacttitle` VARCHAR(1023),
`address` VARCHAR(1023),
`city` VARCHAR(1023),
`region` VARCHAR(1023),
`postalcode` VARCHAR(1023),
`country` VARCHAR(1023),
`phone` VARCHAR(1023),
`fax` VARCHAR(1023),
`homepage` VARCHAR(1023));
CREATE TABLE `usstates`
(`stateid` BIGINT,
`statename` VARCHAR(1023),
`stateabbr` VARCHAR(1023),
`stateregion` VARCHAR(1023));
CREATE TABLE `customergroupthreshold`
(`groupname` VARCHAR(1023),
`rangebottom` DOUBLE,
`rangetop` DOUBLE);
CREATE TABLE `orders`
(`orderid` BIGINT,
`customerid` VARCHAR(1023),
`employeeid` BIGINT,
`orderdate` DATE,
`requireddate` DATE,
`shippeddate` DATE,
`shipvia` BIGINT,
`freight` DOUBLE,
`shipname` VARCHAR(1023),
`shipaddress` VARCHAR(1023),
`shipcity` VARCHAR(1023),
`shipregion` VARCHAR(1023),
`shippostalcode` VARCHAR(1023),
`shipcountry` VARCHAR(1023));
CREATE TABLE `products`
(`productid` BIGINT,
`productname` VARCHAR(1023),
`supplierid` BIGINT,
`categoryid` BIGINT,
`quantityperunit` VARCHAR(1023),
`unitprice` DOUBLE,
`unitsinstock` BIGINT,
`unitsonorder` BIGINT,
`reorderlevel` BIGINT,
`discontinued` BIGINT);
CREATE TABLE `territories`
(`territoryid` VARCHAR(1023),
`territorydescription` VARCHAR(1023),
`regionid` BIGINT);
CREATE TABLE `employeeterritories`
(`employeeid` BIGINT,
`territoryid` VARCHAR(1023));
CREATE TABLE `order_details`
(`orderid` BIGINT,
`productid` BIGINT,
`unitprice` DOUBLE,
`quantity` BIGINT,
`discount` DOUBLE);
INSERT INTO categories VALUES(1,'Beverages','Soft drinks, coffees, teas, beers, and ales','\x');
INSERT INTO categories VALUES(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings','\x');
INSERT INTO categories VALUES(3,'Confections','Desserts, candies, and sweet breads','\x');
INSERT INTO categories VALUES(4,'Dairy Products','Cheeses','\x');
INSERT INTO categories VALUES(5,'Grains/Cereals','Breads, crackers, pasta, and cereal','\x');
INSERT INTO categories VALUES(6,'Meat/Poultry','Prepared meats','\x');
INSERT INTO categories VALUES(7,'Produce','Dried fruit and bean curd','\x');
INSERT INTO categories VALUES(8,'Seafood','Seaweed and fish','\x');
INSERT INTO customers VALUES('REGGC','Reggiani Caseifici','Maurizio Moroni','Sales Associate','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy','0522-556721','0522-556722');
INSERT INTO customers VALUES('RICAR','Ricardo Adocicados','Janete Limeira','Assistant Sales Agent','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil','(21) 555-3412',NULL);
INSERT INTO customers VALUES('HILAA','HILARION-Abastos','Carlos Hernández','Sales Representative','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','5022','Venezuela','(5) 555-1340','(5) 555-1948');
INSERT INTO customers VALUES('HANAR','Hanari Carnes','Mario Pontes','Accounting Manager','Rua do Paço, 67','Rio de Janeiro','RJ','05454-876','Brazil','(21) 555-0091','(21) 555-8765');
INSERT INTO customers VALUES('BLONP','Blondesddsl père et fils','Frédérique Citeaux','Marketing Manager','24, place Kléber','Strasbourg',NULL,'67000','France','88.60.15.31','88.60.15.32');
INSERT INTO customers VALUES('BOLID','Bólido Comidas preparadas','Martín Sommer','Owner','C/ Araquil, 67','Madrid',NULL,'28023','Spain','(91) 555 22 82','(91) 555 91 99');
INSERT INTO customers VALUES('SPLIR','Split Rail Beer & Ale','Art Braunschweiger','Sales Manager','P.O. Box 555','Lander','WY','82520','USA','(307) 555-4680','(307) 555-6525');
INSERT INTO customers VALUES('LAZYK','Lazy K Kountry Store','John Steel','Marketing Manager','12 Orchestra Terrace','Walla Walla','WA','99362','USA','(509) 555-7969','(509) 555-6221');
INSERT INTO customers VALUES('LEHMS','Lehmanns Marktstand','Renate Messner','Sales Representative','Magazinweg 7','Frankfurt a.M.',NULL,'60528','Germany','069-0245984','069-0245874');
INSERT INTO customers VALUES('LILAS','LILA-Supermercado','Carlos González','Accounting Manager','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela','(9) 331-6954','(9) 331-7256');
INSERT INTO customers VALUES('LINOD','LINO-Delicateses','Felipe Izquierdo','Owner','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela','(8) 34-56-12','(8) 34-93-93');
INSERT INTO customers VALUES('BSBEV','B''s Beverages','Victoria Ashworth','Sales Representative','Fauntleroy Circus','London',NULL,'EC2 5NT','UK','(171) 555-1212',NULL);
INSERT INTO customers VALUES('DUMON','Du monde entier','Janine Labrune','Owner','67, rue des Cinquante Otages','Nantes',NULL,'44000','France','40.67.88.88','40.67.89.89');
INSERT INTO customers VALUES('MORGK','Morgenstern Gesundkost','Alexander Feuer','Marketing Assistant','Heerstr. 22','Leipzig',NULL,'04179','Germany','0342-023176',NULL);
INSERT INTO customers VALUES('OLDWO','Old World Delicatessen','Rene Phillips','Sales Representative','2743 Bering St.','Anchorage','AK','99508','USA','(907) 555-7584','(907) 555-2880');
INSERT INTO customers VALUES('FRANR','France restauration','Carine Schmitt','Marketing Manager','54, rue Royale','Nantes',NULL,'44000','France','40.32.21.21','40.32.21.20');
INSERT INTO customers VALUES('GODOS','Godos Cocina Típica','José Pedro Freyre','Sales Manager','C/ Romero, 33','Sevilla',NULL,'41101','Spain','(95) 555 82 82',NULL);
INSERT INTO customers VALUES('QUICK','QUICK-Stop','Horst Kloss','Accounting Manager','Taucherstraße 10','Cunewalde',NULL,'01307','Germany','0372-035188',NULL);
INSERT INTO employees VALUES(1,'Davolio','Nancy','Sales Representative','Ms.','1948-12-08','1992-05-01','507 - 20th Ave. E.\nApt. 2A','Seattle','WA','98122','USA','(206) 555-9857','5467','\x','Education includes a BA in psychology from Colorado State University in 1970.  She also completed The Art of the Cold Call.  Nancy is a member of Toastmasters International.',2,'http://accweb/emmployees/davolio.bmp');
INSERT INTO employees VALUES(2,'Fuller','Andrew','Vice President, Sales','Dr.','1952-02-19','1992-08-14','908 W. Capital Way','Tacoma','WA','98401','USA','(206) 555-9482','3457','\x','Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.',NULL,'http://accweb/emmployees/fuller.bmp');
INSERT INTO employees VALUES(3,'Leverling','Janet','Sales Representative','Ms.','1963-08-30','1992-04-01','722 Moss Bay Blvd.','Kirkland','WA','98033','USA','(206) 555-3412','3355','\x','Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992.',2,'http://accweb/emmployees/leverling.bmp');
INSERT INTO employees VALUES(4,'Peacock','Margaret','Sales Representative','Mrs.','1937-09-19','1993-05-03','4110 Old Redmond Rd.','Redmond','WA','98052','USA','(206) 555-8122','5176','\x','Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992.',2,'http://accweb/emmployees/peacock.bmp');
INSERT INTO employees VALUES(5,'Buchanan','Steven','Sales Manager','Mr.','1955-03-04','1993-10-17','14 Garrett Hill','London',NULL,'SW1 8JR','UK','(71) 555-4848','3453','\x','Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses Successful Telemarketing and International Sales Management.  He is fluent in French.',2,'http://accweb/emmployees/buchanan.bmp');
INSERT INTO employees VALUES(6,'Suyama','Michael','Sales Representative','Mr.','1963-07-02','1993-10-17','Coventry House\nMiner Rd.','London',NULL,'EC2 7JR','UK','(71) 555-7773','428','\x','Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses Multi-Cultural Selling and Time Management for the Sales Professional.  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.',5,'http://accweb/emmployees/davolio.bmp');
INSERT INTO employees VALUES(7,'King','Robert','Sales Representative','Mr.','1960-05-29','1994-01-02','Edgeham Hollow\nWinchester Way','London',NULL,'RG1 9SP','UK','(71) 555-5598','465','\x','Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course entitled Selling in Europe, he was transferred to the London office in March 1993.',5,'http://accweb/emmployees/davolio.bmp');
INSERT INTO employees VALUES(8,'Callahan','Laura','Inside Sales Coordinator','Ms.','1958-01-09','1994-03-05','4726 - 11th Ave. N.E.','Seattle','WA','98105','USA','(206) 555-1189','2344','\x','Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.',2,'http://accweb/emmployees/davolio.bmp');
INSERT INTO employees VALUES(9,'Dodsworth','Anne','Sales Representative','Ms.','1966-01-27','1994-11-15','7 Houndstooth Rd.','London',NULL,'WG2 7LT','UK','(71) 555-4444','452','\x','Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.',5,'http://accweb/emmployees/davolio.bmp');
INSERT INTO region VALUES(1,'Eastern');
INSERT INTO region VALUES(2,'Western');
INSERT INTO region VALUES(3,'Northern');
INSERT INTO region VALUES(4,'Southern');
INSERT INTO shippers VALUES(1,'Speedy Express','(503) 555-9831');
INSERT INTO shippers VALUES(2,'United Package','(503) 555-3199');
INSERT INTO shippers VALUES(3,'Federal Shipping','(503) 555-9931');
INSERT INTO shippers VALUES(4,'Alliance Shippers','1-800-222-0451');
INSERT INTO shippers VALUES(5,'UPS','1-800-782-7892');
INSERT INTO shippers VALUES(6,'DHL','1-800-225-5345');
INSERT INTO suppliers VALUES(3,'Grandma Kelly''s Homestead','Regina Murphy','Sales Representative','707 Oxford Rd.','Ann Arbor','MI','48104','USA','(313) 555-5735','(313) 555-3349',NULL);
INSERT INTO suppliers VALUES(4,'Tokyo Traders','Yoshi Nagase','Marketing Manager','9-8 Sekimai Musashino-shi','Tokyo',NULL,'100','Japan','(03) 3555-5011',NULL,NULL);
INSERT INTO suppliers VALUES(5,'Cooperativa de Quesos ''Las Cabras''','Antonio del Valle Saavedra','Export Administrator','Calle del Rosal 4','Oviedo','Asturias','33007','Spain','(98) 598 76 54',NULL,NULL);
INSERT INTO suppliers VALUES(6,'Mayumi''s','Mayumi Ohno','Marketing Representative','92 Setsuko Chuo-ku','Osaka',NULL,'545','Japan','(06) 431-7877',NULL,'Mayumi''s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#');
INSERT INTO suppliers VALUES(7,'Pavlova, Ltd.','Ian Devling','Marketing Manager','74 Rose St. Moonie Ponds','Melbourne','Victoria','3058','Australia','(03) 444-2343','(03) 444-6588',NULL);
INSERT INTO suppliers VALUES(9,'PB Knäckebröd AB','Lars Peterson','Sales Agent','Kaloadagatan 13','Göteborg',NULL,'S-345 67','Sweden','031-987 65 43','031-987 65 91',NULL);
INSERT INTO suppliers VALUES(11,'Heli Süßwaren GmbH & Co. KG','Petra Winkler','Sales Manager','Tiergartenstraße 5','Berlin',NULL,'10785','Germany','(010) 9984510',NULL,NULL);
INSERT INTO suppliers VALUES(12,'Plutzer Lebensmittelgroßmärkte AG','Martin Bein','International Marketing Mgr.','Bogenallee 51','Frankfurt',NULL,'60439','Germany','(069) 992755',NULL,'Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#');
INSERT INTO suppliers VALUES(15,'Norske Meierier','Beate Vileid','Marketing Manager','Hatlevegen 5','Sandvika',NULL,'1320','Norway','(0)2-953010',NULL,NULL);
INSERT INTO suppliers VALUES(16,'Bigfoot Breweries','Cheryl Saylor','Regional Account Rep.','3400 - 8th Avenue Suite 210','Bend','OR','97101','USA','(503) 555-9931',NULL,NULL);
INSERT INTO suppliers VALUES(17,'Svensk Sjöföda AB','Michael Björn','Sales Representative','Brovallavägen 231','Stockholm',NULL,'S-123 45','Sweden','08-123 45 67',NULL,NULL);
INSERT INTO suppliers VALUES(18,'Aux joyeux ecclésiastiques','Guylène Nodier','Sales Manager','203, Rue des Francs-Bourgeois','Paris',NULL,'75004','France','(1) 03.83.00.68','(1) 03.83.00.62',NULL);
INSERT INTO suppliers VALUES(20,'Leka Trading','Chandra Leka','Owner','471 Serangoon Loop, Suite #402','Singapore',NULL,'0512','Singapore','555-8787',NULL,NULL);
INSERT INTO suppliers VALUES(22,'Zaanse Snoepfabriek','Dirk Luchte','Accounting Manager','Verkoop Rijnweg 22','Zaandam',NULL,'9999 ZZ','Netherlands','(12345) 1212','(12345) 1210',NULL);
INSERT INTO suppliers VALUES(23,'Karkki Oy','Anne Heikkonen','Product Manager','Valtakatu 12','Lappeenranta',NULL,'53120','Finland','(953) 10956',NULL,NULL);
INSERT INTO suppliers VALUES(24,'G''day, Mate','Wendy Mackenzie','Sales Representative','170 Prince Edward Parade Hunter''s Hill','Sydney','NSW','2042','Australia','(02) 555-5914','(02) 555-4873','G''day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#');
INSERT INTO suppliers VALUES(25,'Ma Maison','Jean-Guy Lauzon','Marketing Manager','2960 Rue St. Laurent','Montréal','Québec','H1J 1C3','Canada','(514) 555-9022',NULL,NULL);
INSERT INTO suppliers VALUES(29,'Forêts d''érables','Chantal Goulet','Accounting Manager','148 rue Chasseur','Ste-Hyacinthe','Québec','J2S 7S8','Canada','(514) 555-2955','(514) 555-2921',NULL);
INSERT INTO usstates VALUES(1,'Alabama','AL','south');
INSERT INTO usstates VALUES(2,'Alaska','AK','north');
INSERT INTO usstates VALUES(4,'Arkansas','AR','south');
INSERT INTO usstates VALUES(38,'Oregon','OR','west');
INSERT INTO usstates VALUES(7,'Connecticut','CT','east');
INSERT INTO usstates VALUES(11,'Georgia','GA','south');
INSERT INTO usstates VALUES(44,'Texas','TX','west');
INSERT INTO usstates VALUES(13,'Idaho','ID','midwest');
INSERT INTO usstates VALUES(14,'Illinois','IL','midwest');
INSERT INTO usstates VALUES(47,'Virginia','VA','east');
INSERT INTO usstates VALUES(16,'Iowa','IO','midwest');
INSERT INTO usstates VALUES(17,'Kansas','KS','midwest');
INSERT INTO usstates VALUES(19,'Louisiana','LA','south');
INSERT INTO usstates VALUES(51,'Wyoming','WY','west');
INSERT INTO usstates VALUES(24,'Minnesota','MN','north');
INSERT INTO usstates VALUES(26,'Missouri','MO','south');
INSERT INTO usstates VALUES(28,'Nebraska','NE','midwest');
INSERT INTO usstates VALUES(30,'New Hampshire','NH','east');
INSERT INTO customergroupthreshold VALUES('Low',0,999.999900000000025);
INSERT INTO customergroupthreshold VALUES('Medium',1000,4999.999899999999798);
INSERT INTO customergroupthreshold VALUES('High',5000,9999.99990000000071);
INSERT INTO customergroupthreshold VALUES('Very High',10000,922337203685477.625);
INSERT INTO orders VALUES(10863,'HILAA',4,'1998-02-02','1998-03-02','1998-02-17',2,30.26000020000000034,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','5022','Venezuela');
INSERT INTO orders VALUES(10575,'MORGK',5,'1997-06-20','1997-07-04','1997-06-30',1,127.3399959999999993,'Morgenstern Gesundkost','Heerstr. 22','Leipzig',NULL,'04179','Germany');
INSERT INTO orders VALUES(10801,'BOLID',4,'1997-12-29','1998-01-26','1997-12-31',2,97.0899962999999957,'Bólido Comidas preparadas','C/ Araquil, 67','Madrid',NULL,'28023','Spain');
INSERT INTO orders VALUES(10482,'LAZYK',1,'1997-03-21','1997-04-18','1997-04-10',3,7.480000020000000304,'Lazy K Kountry Store','12 Orchestra Terrace','Walla Walla','WA','99362','USA');
INSERT INTO orders VALUES(10451,'QUICK',4,'1997-02-19','1997-03-05','1997-03-12',3,189.0899960000000136,'QUICK-Stop','Taucherstraße 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO orders VALUES(11059,'RICAR',2,'1998-04-29','1998-06-10',NULL,2,85.80000309999999786,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil');
INSERT INTO orders VALUES(10613,'HILAA',4,'1997-07-29','1997-08-26','1997-08-01',2,8.109999659999999722,'HILARION-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','5022','Venezuela');
INSERT INTO orders VALUES(10515,'QUICK',2,'1997-04-23','1997-05-07','1997-05-23',1,204.4700009999999964,'QUICK-Stop','Taucherstraße 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO orders VALUES(10997,'LILAS',8,'1998-04-03','1998-05-15','1998-04-13',2,73.9100037000000043,'LILA-Supermercado','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela');
INSERT INTO orders VALUES(10360,'BLONP',4,'1996-11-22','1996-12-20','1996-12-02',3,131.6999969999999963,'Blondel père et fils','24, place Kléber','Strasbourg',NULL,'67000','France');
INSERT INTO orders VALUES(10648,'RICAR',5,'1997-08-28','1997-10-09','1997-09-09',2,14.25,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil');
INSERT INTO orders VALUES(10945,'MORGK',4,'1998-03-12','1998-04-09','1998-03-18',1,10.22000030000000059,'Morgenstern Gesundkost','Heerstr. 22','Leipzig',NULL,'04179','Germany');
INSERT INTO orders VALUES(10779,'MORGK',3,'1997-12-16','1998-01-13','1998-01-14',2,58.1300011000000012,'Morgenstern Gesundkost','Heerstr. 22','Leipzig',NULL,'04179','Germany');
INSERT INTO orders VALUES(10369,'SPLIR',8,'1996-12-02','1996-12-30','1996-12-09',2,195.6799929999999961,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA');
INSERT INTO orders VALUES(10658,'QUICK',4,'1997-09-05','1997-10-03','1997-09-08',1,364.1499939999999925,'QUICK-Stop','Taucherstraße 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO orders VALUES(10691,'QUICK',2,'1997-10-03','1997-11-14','1997-10-22',2,810.0499879999999849,'QUICK-Stop','Taucherstraße 10','Cunewalde',NULL,'01307','Germany');
INSERT INTO orders VALUES(10436,'BLONP',3,'1997-02-05','1997-03-05','1997-02-11',2,156.6600039999999864,'Blondel père et fils','24, place Kléber','Strasbourg',NULL,'67000','France');
INSERT INTO orders VALUES(10629,'GODOS',4,'1997-08-12','1997-09-09','1997-08-20',3,85.45999910000000454,'Godos Cocina Típica','C/ Romero, 33','Sevilla',NULL,'41101','Spain');
INSERT INTO products VALUES(33,'Geitost',15,4,'500 g',2.5,112,0,20,0);
INSERT INTO products VALUES(34,'Sasquatch Ale',16,1,'24 - 12 oz bottles',14.0,111,0,15,0);
INSERT INTO products VALUES(37,'Gravad lax',17,8,'12 - 500 g pkgs.',26.0,11,50,25,0);
INSERT INTO products VALUES(71,'Flotemysost',15,4,'10 - 500 g pkgs.',21.5,26,0,0,0);
INSERT INTO products VALUES(8,'Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',40.0,6,0,0,0);
INSERT INTO products VALUES(73,'Röd Kaviar',17,8,'24 - 150 g jars',15.0,101,0,5,0);
INSERT INTO products VALUES(75,'Rhönbräu Klosterbier',12,1,'24 - 0.5 l bottles',7.75,125,0,25,0);
INSERT INTO products VALUES(76,'Lakkalikööri',23,1,'500 ml',18.0,57,0,20,0);
INSERT INTO products VALUES(77,'Original Frankfurter grüne Soße',12,2,'12 boxes',13.0,32,0,15,0);
INSERT INTO products VALUES(13,'Konbu',6,8,'2 kg box',6.0,24,0,5,0);
INSERT INTO products VALUES(44,'Gula Malacca',20,2,'20 - 2 kg bags',19.45000080000000154,27,0,15,0);
INSERT INTO products VALUES(12,'Queso Manchego La Pastora',5,4,'10 - 500 g pkgs.',38.0,86,0,0,0);
INSERT INTO products VALUES(49,'Maxilaku',23,3,'24 - 50 g pkgs.',20.0,10,60,15,0);
INSERT INTO products VALUES(52,'Filo Mix',24,5,'16 - 2 kg boxes',7.0,38,0,25,0);
INSERT INTO products VALUES(53,'Perth Pasties',24,6,'48 pieces',32.79999920000000201,0,0,0,1);
INSERT INTO products VALUES(26,'Gumbär Gummibärchen',11,3,'100 - 250 g bags',31.22999950000000168,15,0,0,0);
INSERT INTO products VALUES(28,'Rössle Sauerkraut',12,7,'25 - 825 g cans',45.59999849999999811,26,0,0,1);
INSERT INTO products VALUES(29,'Thüringer Rostbratwurst',12,6,'50 bags x 30 sausgs.',123.7900010000000037,0,0,0,1);
INSERT INTO territories VALUES('01581','Westboro',1);
INSERT INTO territories VALUES('01730','Bedford',1);
INSERT INTO territories VALUES('55113','Roseville',3);
INSERT INTO territories VALUES('60179','Hoffman Estates',2);
INSERT INTO territories VALUES('01833','Georgetow',1);
INSERT INTO territories VALUES('03049','Hollis',3);
INSERT INTO territories VALUES('08837','Edison',1);
INSERT INTO territories VALUES('10038','New York',1);
INSERT INTO territories VALUES('94105','San Francisco',2);
INSERT INTO territories VALUES('14450','Fairport',1);
INSERT INTO territories VALUES('19713','Neward',1);
INSERT INTO territories VALUES('20852','Rockville',1);
INSERT INTO territories VALUES('27403','Greensboro',1);
INSERT INTO territories VALUES('27511','Cary',1);
INSERT INTO territories VALUES('33607','Tampa',4);
INSERT INTO territories VALUES('44122','Beachwood',3);
INSERT INTO territories VALUES('48075','Southfield',3);
INSERT INTO territories VALUES('48084','Troy',3);
INSERT INTO employeeterritories VALUES(1,'19713');
INSERT INTO employeeterritories VALUES(2,'01581');
INSERT INTO employeeterritories VALUES(2,'01730');
INSERT INTO employeeterritories VALUES(7,'94105');
INSERT INTO employeeterritories VALUES(2,'01833');
INSERT INTO employeeterritories VALUES(8,'44122');
INSERT INTO employeeterritories VALUES(9,'03049');
INSERT INTO employeeterritories VALUES(3,'33607');
INSERT INTO employeeterritories VALUES(4,'20852');
INSERT INTO employeeterritories VALUES(4,'27403');
INSERT INTO employeeterritories VALUES(4,'27511');
INSERT INTO employeeterritories VALUES(9,'55113');
INSERT INTO employeeterritories VALUES(9,'48084');
INSERT INTO employeeterritories VALUES(5,'08837');
INSERT INTO employeeterritories VALUES(9,'48075');
INSERT INTO employeeterritories VALUES(5,'10038');
INSERT INTO employeeterritories VALUES(5,'14450');
INSERT INTO employeeterritories VALUES(7,'60179');
INSERT INTO order_details VALUES(10515,33,2.5,16,0.1500000059999999913);
INSERT INTO order_details VALUES(10369,29,99.0,20,0.0);
INSERT INTO order_details VALUES(11059,13,6.0,30,0.0);
INSERT INTO order_details VALUES(10613,75,7.75,40,0.0);
INSERT INTO order_details VALUES(10801,29,123.7900010000000037,20,0.25);
INSERT INTO order_details VALUES(10613,13,6.0,8,0.100000001000000005);
INSERT INTO order_details VALUES(10691,29,123.7900010000000037,40,0.0);
INSERT INTO order_details VALUES(10360,29,99.0,35,0.0);
INSERT INTO order_details VALUES(10360,28,36.40000150000000189,30,0.0);
INSERT INTO order_details VALUES(10360,49,16.0,35,0.0);
INSERT INTO order_details VALUES(10629,29,123.7900010000000037,20,0.0);
INSERT INTO order_details VALUES(10575,76,18.0,10,0.0);
INSERT INTO order_details VALUES(10945,13,6.0,20,0.0);
INSERT INTO order_details VALUES(10691,44,19.45000080000000154,24,0.0);
INSERT INTO order_details VALUES(10997,52,7.0,20,0.25);
INSERT INTO order_details VALUES(10436,75,6.199999809999999556,24,0.100000001000000005);
INSERT INTO order_details VALUES(10658,77,13.0,70,0.05000000069999999825);
INSERT INTO order_details VALUES(10451,77,10.39999959999999923,55,0.100000001000000005);
