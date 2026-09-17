CREATE TABLE `customers`
(`id` BIGINT,
`name` VARCHAR(1023));
CREATE TABLE `conway_gen_zero`
(`x` BIGINT,
`y` BIGINT,
`alive` BIGINT);
CREATE TABLE `web_devices`
(`day` PRIMARY,
`pc` BIGINT,
`tablet` BIGINT,
`phone` BIGINT);
CREATE TABLE `web_demographics`
(`day` PRIMARY,
`m_tw_cnt` BIGINT,
`m_tw_qty` BIGINT,
`m_fb_cnt` BIGINT,
`m_fb_qty` BIGINT,
`f_tw_cnt` BIGINT,
`f_tw_qty` BIGINT,
`f_fb_cnt` BIGINT,
`f_fb_qty` BIGINT);
CREATE TABLE `channels_dim`
(`id` BIGINT,
`name` VARCHAR(1023),
`shortcut` VARCHAR(1023));
CREATE TABLE `gender_dim`
(`letter` VARCHAR(1023),
`name` VARCHAR(1023));
CREATE TABLE `packaging`
(`id` BIGINT,
`name` VARCHAR(1023));
CREATE TABLE `product_groups`
(`id` BIGINT,
`name` VARCHAR(1023));
CREATE TABLE `breweries`
(`id` BIGINT,
`name` VARCHAR(1023));
CREATE TABLE `locations`
(`id` BIGINT,
`warehouse` BIGINT,
`aisle` VARCHAR(1023),
`position` BIGINT);
CREATE TABLE `stock`
(`symbol` VARCHAR(1023),
`company` VARCHAR(1023));
CREATE TABLE `web_apps`
(`id` BIGINT,
`name` VARCHAR(1023));
CREATE TABLE `server_heartbeat`
(`server` VARCHAR(1023),
`beat_time` VARCHAR(1023));
CREATE TABLE `id_name_type`
(`id` BIGINT,
`name` VARCHAR(1023));
CREATE TABLE `id_name_coll_type`
(`collection_id` BIGINT);
CREATE TABLE `id_name_coll_entries`
(`collection_id` BIGINT,
`id` BIGINT,
`name` VARCHAR(1023));
CREATE TABLE `favorite_coll_type`
(`id` BIGINT);
CREATE TABLE `packaging_relations`
(`packaging_id` BIGINT,
`contains_id` BIGINT,
`qty` BIGINT);
CREATE TABLE `products`
(`id` BIGINT,
`name` VARCHAR(1023),
`group_id` BIGINT);
CREATE TABLE `customer_favorites`
(`customer_id` BIGINT,
`favorite_list` VARCHAR(1023));
CREATE TABLE `customer_reviews`
(`customer_id` BIGINT,
`review_list` VARCHAR(1023));
CREATE TABLE `orders`
(`id` BIGINT,
`customer_id` BIGINT,
`ordered` VARCHAR(1023),
`delivery` VARCHAR(1023));
CREATE TABLE `ticker`
(`symbol` VARCHAR(1023),
`day` VARCHAR(1023),
`price` DOUBLE);
CREATE TABLE `web_pages`
(`app_id` BIGINT,
`page_no` BIGINT,
`friendly_url` VARCHAR(1023));
CREATE TABLE `monthly_sales`
(`product_id` BIGINT,
`mth` VARCHAR(1023),
`qty` BIGINT,
`CHECK` ();
CREATE TABLE `purchases`
(`id` BIGINT,
`purchased` VARCHAR(1023),
`brewery_id` BIGINT,
`product_id` BIGINT,
`qty` BIGINT,
`cost` DOUBLE);
CREATE TABLE `product_alcohol`
(`product_id` BIGINT,
`sales_volume` DOUBLE,
`abv` DOUBLE);
CREATE TABLE `orderlines`
(`id` BIGINT,
`order_id` BIGINT,
`product_id` BIGINT,
`qty` DOUBLE,
`amount` DOUBLE);
CREATE TABLE `monthly_budget`
(`product_id` BIGINT,
`mth` VARCHAR(1023),
`qty` DOUBLE,
`CHECK` ();
CREATE TABLE `product_minimums`
(`product_id` BIGINT,
`qty_minimum` DOUBLE,
`qty_purchase` DOUBLE);
CREATE TABLE `web_counter_hist`
(`app_id` BIGINT,
`page_no` BIGINT,
`day` VARCHAR(1023),
`counter` BIGINT);
CREATE TABLE `web_page_visits`
(`client_ip` VARCHAR(1023),
`visit_time` VARCHAR(1023),
`app_id` BIGINT,
`page_no` BIGINT);
CREATE TABLE `inventory`
(`id` BIGINT,
`location_id` BIGINT,
`product_id` BIGINT,
`purchase_id` BIGINT,
`qty` DOUBLE);
CREATE TABLE `employees`
(`id` BIGINT,
`name` VARCHAR(1023),
`title` VARCHAR(1023),
`supervisor_id` BIGINT);
CREATE TABLE `emp_hire_periods`
(`emp_id` BIGINT,
`start_` VARCHAR(1023),
`end_` VARCHAR(1023),
`title` VARCHAR(1023));
CREATE TABLE `picking_list`
(`id` BIGINT,
`created` VARCHAR(1023),
`picker_emp_id` BIGINT);
CREATE TABLE `picking_line`
(`picklist_id` BIGINT,
`line_no` BIGINT,
`location_id` BIGINT,
`order_id` BIGINT,
`product_id` BIGINT,
`qty` DOUBLE);
CREATE TABLE `picking_log`
(`picklist_id` BIGINT,
`log_time` VARCHAR(1023),
`activity` VARCHAR(1023),
`location_id` BIGINT,
`pickline_no` BIGINT,
`CHECK` ();
INSERT INTO customers VALUES(50042,'The White Hart');
INSERT INTO customers VALUES(50741,'Hygge og Humle');
INSERT INTO customers VALUES(51007,'Boom Beer Bar');
INSERT INTO customers VALUES(51069,'Der Wichtelmann');
INSERT INTO web_devices VALUES('2019-05-01',1042,812,1610);
INSERT INTO web_devices VALUES('2019-05-02',967,1102,2159);
INSERT INTO web_demographics VALUES('2019-05-01',1232,86,1017,64,651,76,564,68);
INSERT INTO web_demographics VALUES('2019-05-02',1438,142,1198,70,840,92,752,78);
INSERT INTO channels_dim VALUES(42,'Twitter','tw');
INSERT INTO channels_dim VALUES(44,'Facebook','fb');
INSERT INTO gender_dim VALUES('F','Female');
INSERT INTO gender_dim VALUES('M','Male');
INSERT INTO packaging VALUES(501,'Bottle 330cl');
INSERT INTO packaging VALUES(502,'Bottle 500cl');
INSERT INTO packaging VALUES(511,'Gift Carton');
INSERT INTO packaging VALUES(522,'Box Medium');
INSERT INTO packaging VALUES(523,'Box Small');
INSERT INTO packaging VALUES(524,'Gift Box');
INSERT INTO packaging VALUES(532,'Pallet of M');
INSERT INTO packaging VALUES(533,'Pallet Mix MS');
INSERT INTO product_groups VALUES(142,'Stout');
INSERT INTO product_groups VALUES(152,'Belgian');
INSERT INTO product_groups VALUES(202,'Wheat');
INSERT INTO product_groups VALUES(232,'IPA');
INSERT INTO breweries VALUES(518,'Balthazar Brauerei');
INSERT INTO breweries VALUES(523,'Happy Hoppy Hippo');
INSERT INTO breweries VALUES(536,'Brewing Barbarian');
INSERT INTO locations VALUES(165,2,'B',5);
INSERT INTO locations VALUES(231,2,'D',7);
INSERT INTO locations VALUES(9,1,'A',9);
INSERT INTO locations VALUES(77,1,'C',13);
INSERT INTO locations VALUES(46,1,'B',14);
INSERT INTO locations VALUES(186,2,'B',26);
INSERT INTO locations VALUES(29,1,'A',29);
INSERT INTO locations VALUES(158,2,'A',30);
INSERT INTO stock VALUES('BEER','Good Beer Trading Co');
INSERT INTO web_apps VALUES(542,'Webshop');
INSERT INTO server_heartbeat VALUES('10.0.0.100','2019-04-10 13:00');
INSERT INTO server_heartbeat VALUES('10.0.0.100','2019-04-10 13:05');
INSERT INTO server_heartbeat VALUES('10.0.0.100','2019-04-10 13:20');
INSERT INTO server_heartbeat VALUES('10.0.0.100','2019-04-10 13:35');
INSERT INTO server_heartbeat VALUES('10.0.0.100','2019-04-10 13:45');
INSERT INTO server_heartbeat VALUES('10.0.0.142','2019-04-10 13:20');
INSERT INTO server_heartbeat VALUES('10.0.0.142','2019-04-10 13:50');
INSERT INTO packaging_relations VALUES(511,501,3);
INSERT INTO packaging_relations VALUES(511,502,2);
INSERT INTO packaging_relations VALUES(522,501,36);
INSERT INTO packaging_relations VALUES(523,502,30);
INSERT INTO packaging_relations VALUES(524,511,8);
INSERT INTO packaging_relations VALUES(532,522,20);
INSERT INTO packaging_relations VALUES(533,522,10);
INSERT INTO packaging_relations VALUES(533,523,20);
INSERT INTO products VALUES(4040,'Coalminers Sweat',142);
INSERT INTO products VALUES(4160,'Reindeer Fuel',142);
INSERT INTO products VALUES(4280,'Hoppy Crude Oil',142);
INSERT INTO products VALUES(5310,'Monks and Nuns',152);
INSERT INTO products VALUES(5430,'Hercule Trippel',152);
INSERT INTO products VALUES(6520,'Der Helle Kumpel',202);
INSERT INTO products VALUES(6600,'Hazy Pink Cloud',202);
INSERT INTO products VALUES(7870,'Ghost of Hops',232);
INSERT INTO customer_favorites VALUES(50042,'4040,5310');
INSERT INTO customer_favorites VALUES(50741,'5430,7790,7870');
INSERT INTO customer_favorites VALUES(51007,NULL);
INSERT INTO customer_favorites VALUES(51069,'6520');
INSERT INTO customer_reviews VALUES(50042,'4040:A,6600:C,7950:B');
INSERT INTO customer_reviews VALUES(50741,'4160:A');
INSERT INTO customer_reviews VALUES(51007,NULL);
INSERT INTO customer_reviews VALUES(51069,'4280:B,7790:B');
INSERT INTO orders VALUES(421,50042,'2019-01-15',NULL);
INSERT INTO orders VALUES(422,51069,'2019-01-17',NULL);
INSERT INTO orders VALUES(425,51069,'2019-02-17',NULL);
INSERT INTO orders VALUES(426,50741,'2019-02-26',NULL);
INSERT INTO orders VALUES(427,50042,'2019-03-02',NULL);
INSERT INTO orders VALUES(428,50741,'2019-03-12',NULL);
INSERT INTO orders VALUES(430,50741,'2019-03-29',NULL);
INSERT INTO ticker VALUES('BEER','2019-04-01',14.90000000000000035);
INSERT INTO ticker VALUES('BEER','2019-04-05',15.59999999999999965);
INSERT INTO ticker VALUES('BEER','2019-04-08',14.80000000000000071);
INSERT INTO ticker VALUES('BEER','2019-04-10',14.0);
INSERT INTO ticker VALUES('BEER','2019-04-11',14.40000000000000035);
INSERT INTO ticker VALUES('BEER','2019-04-12',15.19999999999999929);
INSERT INTO ticker VALUES('BEER','2019-04-19',15.5);
INSERT INTO web_pages VALUES(542,1,'/Shop');
INSERT INTO web_pages VALUES(542,2,'/Categories');
INSERT INTO web_pages VALUES(542,3,'/Breweries');
INSERT INTO web_pages VALUES(542,4,'/About');
INSERT INTO monthly_sales VALUES(7870,'2018-10-01',44);
INSERT INTO monthly_sales VALUES(5310,'2018-02-01',50);
INSERT INTO monthly_sales VALUES(6600,'2017-07-01',12);
INSERT INTO monthly_sales VALUES(5310,'2018-09-01',26);
INSERT INTO monthly_sales VALUES(4160,'2017-05-01',0);
INSERT INTO monthly_sales VALUES(6520,'2016-02-01',16);
INSERT INTO monthly_sales VALUES(6600,'2016-07-01',18);
INSERT INTO purchases VALUES(729,'2018-02-26',518,6520,72,504.0);
INSERT INTO purchases VALUES(643,'2016-09-07',523,6600,35,168.0);
INSERT INTO purchases VALUES(740,'2018-04-29',523,7870,92,662.0);
INSERT INTO purchases VALUES(619,'2016-04-06',518,6520,90,590.0);
INSERT INTO purchases VALUES(688,'2017-06-15',518,5430,69,469.0);
INSERT INTO purchases VALUES(656,'2016-12-02',536,4160,53,351.0);
INSERT INTO purchases VALUES(658,'2016-12-05',518,5430,41,287.0);
INSERT INTO purchases VALUES(728,'2018-02-25',518,5430,89,640.0);
INSERT INTO product_alcohol VALUES(4160,500.0,6.0);
INSERT INTO product_alcohol VALUES(4280,330.0,7.0);
INSERT INTO product_alcohol VALUES(5310,330.0,5.0);
INSERT INTO product_alcohol VALUES(5430,330.0,6.5);
INSERT INTO product_alcohol VALUES(6520,500.0,4.5);
INSERT INTO product_alcohol VALUES(6600,500.0,4.0);
INSERT INTO product_alcohol VALUES(7870,330.0,4.5);
INSERT INTO orderlines VALUES(9122,421,6520,140.0,2250.0);
INSERT INTO orderlines VALUES(9234,422,6520,80.0,1275.0);
INSERT INTO orderlines VALUES(9279,425,5310,40.0,750.0);
INSERT INTO orderlines VALUES(9280,425,5430,60.0,1150.0);
INSERT INTO orderlines VALUES(9286,426,6520,40.0,680.0);
INSERT INTO orderlines VALUES(9287,426,6600,16.0,320.0);
INSERT INTO orderlines VALUES(9292,427,4280,60.0,1480.0);
INSERT INTO monthly_budget VALUES(6520,'2018-02-01',30.0);
INSERT INTO monthly_budget VALUES(6520,'2018-03-01',30.0);
INSERT INTO monthly_budget VALUES(6520,'2018-09-01',30.0);
INSERT INTO monthly_budget VALUES(6600,'2019-06-01',20.0);
INSERT INTO monthly_budget VALUES(6520,'2019-01-01',45.0);
INSERT INTO monthly_budget VALUES(6520,'2019-02-01',45.0);
INSERT INTO monthly_budget VALUES(6520,'2019-11-01',40.0);
INSERT INTO product_minimums VALUES(6520,100.0,400.0);
INSERT INTO product_minimums VALUES(6600,30.0,100.0);
INSERT INTO web_counter_hist VALUES(542,1,'2019-04-04',5237);
INSERT INTO web_counter_hist VALUES(542,4,'2019-04-15',524);
INSERT INTO web_counter_hist VALUES(542,1,'2019-04-10',5659);
INSERT INTO web_counter_hist VALUES(542,1,'2019-04-23',7542);
INSERT INTO web_counter_hist VALUES(542,3,'2019-04-28',3041);
INSERT INTO web_counter_hist VALUES(542,2,'2019-04-27',4588);
INSERT INTO web_counter_hist VALUES(542,4,'2019-04-05',468);
INSERT INTO web_page_visits VALUES('104.130.89.12','2019-04-20 08:28:55',542,4);
INSERT INTO web_page_visits VALUES('104.130.89.12','2019-04-20 08:55:02',542,4);
INSERT INTO web_page_visits VALUES('104.130.89.12','2019-04-20 09:17:50',542,2);
INSERT INTO web_page_visits VALUES('104.130.89.12','2019-04-20 09:43:46',542,2);
INSERT INTO web_page_visits VALUES('104.130.89.12','2019-04-20 14:45:10',542,1);
INSERT INTO web_page_visits VALUES('104.130.89.12','2019-04-20 15:02:44',542,2);
INSERT INTO web_page_visits VALUES('104.130.89.12','2019-04-20 15:04:01',542,2);
INSERT INTO inventory VALUES(1265,158,7870,740,44.0);
INSERT INTO inventory VALUES(1196,9,5430,728,41.0);
INSERT INTO inventory VALUES(1199,46,5430,728,48.0);
INSERT INTO inventory VALUES(1202,186,6520,729,24.0);
INSERT INTO inventory VALUES(1205,77,6520,729,20.0);
INSERT INTO inventory VALUES(1316,29,6520,729,14.0);
INSERT INTO inventory VALUES(1433,165,6520,729,14.0);
INSERT INTO employees VALUES(142,'Harold King','Managing Director',NULL);
INSERT INTO employees VALUES(144,'Axel de Proef','Product Director',142);
INSERT INTO employees VALUES(146,'Lim Tok Lo','Warehouse Manager',147);
INSERT INTO employees VALUES(147,'Ursula Mwbesi','Operations Chief',142);
INSERT INTO employees VALUES(149,'Kurt Zollman','Forklift Operator',146);
INSERT INTO employees VALUES(152,'Evelyn Smith','Forklift Operator',146);
INSERT INTO employees VALUES(155,'Susanne Hoff','Janitor',146);
INSERT INTO emp_hire_periods VALUES(142,'2010-07-01','2012-04-01','Product Director');
INSERT INTO emp_hire_periods VALUES(142,'2012-04-01',NULL,'Managing Director');
INSERT INTO emp_hire_periods VALUES(144,'2010-07-01','2013-07-01','Sales Manager');
INSERT INTO emp_hire_periods VALUES(146,'2014-10-01','2016-02-01','Forklift Operator');
INSERT INTO emp_hire_periods VALUES(146,'2017-03-01',NULL,'Warehouse Manager');
INSERT INTO emp_hire_periods VALUES(147,'2016-05-01','2017-03-01','Warehouse Manager');
INSERT INTO emp_hire_periods VALUES(147,'2016-11-01',NULL,'Operations Chief');
INSERT INTO picking_list VALUES(841,'2019-01-16 14:03:41',149);
INSERT INTO picking_list VALUES(842,'2019-01-19 15:57:42',152);
INSERT INTO picking_line VALUES(841,2,29,421,6520,14.0);
INSERT INTO picking_line VALUES(841,3,77,421,6520,20.0);
INSERT INTO picking_line VALUES(841,6,186,421,6520,24.0);
INSERT INTO picking_line VALUES(841,7,165,421,6520,14.0);
INSERT INTO picking_line VALUES(842,2,29,422,6520,14.0);
INSERT INTO picking_line VALUES(842,3,77,422,6520,20.0);
INSERT INTO picking_line VALUES(842,7,165,422,6520,14.0);
INSERT INTO picking_log VALUES(842,'2019-01-19 16:02:37','D',29,NULL);
INSERT INTO picking_log VALUES(841,'2019-01-16 14:06:27','P',29,2);
INSERT INTO picking_log VALUES(842,'2019-01-19 16:03:20','D',77,NULL);
INSERT INTO picking_log VALUES(841,'2019-01-16 14:10:13','A',186,NULL);
INSERT INTO picking_log VALUES(842,'2019-01-19 16:06:51','A',165,NULL);
INSERT INTO picking_log VALUES(841,'2019-01-16 14:14:41','A',NULL,NULL);
INSERT INTO picking_log VALUES(842,'2019-01-19 16:11:42','A',NULL,NULL);
