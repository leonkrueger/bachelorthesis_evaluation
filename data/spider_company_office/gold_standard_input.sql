CREATE TABLE `buildings`
(`id` BIGINT,
`name` VARCHAR(1023),
`City` VARCHAR(1023),
`Height` BIGINT,
`Stories` BIGINT,
`Status` VARCHAR(1023));
INSERT INTO `buildings` VALUES(4,'Torre Reforma','Mexico City',330,57,'under construction');
INSERT INTO `buildings` VALUES(7,'Torre New York Life','Mexico City',50,6,'under construction');
INSERT INTO `buildings` VALUES(6,'Reforma 432','Mexico City',300,100,'under construction');
INSERT INTO `buildings` VALUES(2,'Torre Mitikah','Mexico City',210,60,'under construction');
INSERT INTO `buildings` VALUES(1,'Torre KOI','Monterrey',220,67,'under construction');
INSERT INTO `buildings` VALUES(5,'Corporativo BBVA Bancomer','Mexico City',220,50,'under construction');
INSERT INTO `buildings` VALUES(10,'Residencial Vidalta Torre Altaire 3','Mexico City',200,44,'on-hold');
INSERT INTO `buildings` VALUES(8,'LIU East','Monterrey',73,20,'under construction');
INSERT INTO `buildings` VALUES(9,'Residencial Vidalta Torre Altaire 2','Mexico City',150,44,'on-hold');
INSERT INTO `buildings` VALUES(12,'Ritz-Carlton Mexico City','Mexico City',100,34,'on-hold');
INSERT INTO `buildings` VALUES(3,'Punto Chapultepec','Mexico City',210,59,'proposed');
INSERT INTO `buildings` VALUES(11,'Reforma 90','Mexico City',200,42,'on-hold');
CREATE TABLE `Companies`
(`id` BIGINT,
`name` VARCHAR(1023),
`Headquarters` VARCHAR(1023),
`Industry` VARCHAR(1023),
`Sales_billion` DOUBLE,
`Profits_billion` DOUBLE,
`Assets_billion` DOUBLE,
`Market_Value_billion` VARCHAR(1023));
INSERT INTO `Companies` VALUES(10,'Citigroup','USA','Banking',111.5,10.59999999999999965,1913.90000000000009,'132.8');
INSERT INTO `Companies` VALUES(5,'Royal Dutch Shell','Netherlands','Oil and gas',369.1000000000000227,20.10000000000000143,317.1999999999999887,'212.9');
INSERT INTO `Companies` VALUES(7,'Industrial and Commercial Bank of China','China','Banking',69.20000000000000284,18.80000000000000071,1723.5,'239.5');
INSERT INTO `Companies` VALUES(14,'AT&T Inc.','USA','Telecommunications',124.2999999999999972,19.89999999999999857,268.5,'168.2');
INSERT INTO `Companies` VALUES(17,'China Construction Bank','China','Banking',58.20000000000000284,15.59999999999999965,1408.0,'224.8');
INSERT INTO `Companies` VALUES(18,'Walmart','USA','Retailing',421.8000000000000113,16.39999999999999857,180.6999999999999887,'187.3');
INSERT INTO `Companies` VALUES(16,'Chevron','USA','Oil and gas',189.5999999999999944,19.0,184.8000000000000113,'200.6');
INSERT INTO `Companies` VALUES(19,'Total','France','Oil and gas',188.0999999999999944,14.19999999999999929,192.8000000000000113,'138');
INSERT INTO `Companies` VALUES(12,'Wells Fargo','USA','Banking',93.2000000000000028,12.40000000000000035,1258.09999999999991,'170.6');
INSERT INTO `Companies` VALUES(6,'PetroChina','China','Oil and gas',222.3000000000000113,21.19999999999999929,251.3000000000000113,'320.8');
INSERT INTO `Companies` VALUES(9,'Petrobras','Brazil','Oil and gas',121.2999999999999972,21.19999999999999929,313.1999999999999887,'238.8');
INSERT INTO `Companies` VALUES(15,'Gazprom','Russia','Oil and gas',98.7000000000000028,25.69999999999999929,275.8999999999999773,'172.9');
INSERT INTO `Companies` VALUES(3,'General Electric','USA','Conglomerate',156.1999999999999887,11.59999999999999965,751.2000000000000454,'216.2');
INSERT INTO `Companies` VALUES(11,'BNP Paribas','France','Banking',130.4000000000000056,10.5,2680.699999999999819,'88');
INSERT INTO `Companies` VALUES(1,'JPMorgan Chase','USA','Banking',115.5,17.39999999999999857,2117.59999999999991,'182.2');
INSERT INTO `Companies` VALUES(8,'Berkshire Hathaway','USA','Conglomerate',136.1999999999999887,13.0,372.1999999999999887,'211');
INSERT INTO `Companies` VALUES(2,'HSBC','UK','Banking',103.2999999999999972,13.30000000000000071,2467.90000000000009,'186.5');
INSERT INTO `Companies` VALUES(4,'ExxonMobil','USA','Oil and gas',341.6000000000000227,30.5,302.5,'407.2');
INSERT INTO `Companies` VALUES(13,'Santander Group','Spain','Banking',109.7000000000000028,12.80000000000000071,1570.59999999999991,'94.7');
CREATE TABLE `Office_locations`
(`building_id` BIGINT,
`company_id` BIGINT,
`move_in_year` BIGINT);
INSERT INTO `Office_locations` VALUES(8,19,2022);
INSERT INTO `Office_locations` VALUES(1,1,2021);
INSERT INTO `Office_locations` VALUES(5,7,2026);
INSERT INTO `Office_locations` VALUES(7,4,2027);
INSERT INTO `Office_locations` VALUES(5,3,2025);
INSERT INTO `Office_locations` VALUES(3,9,2029);
INSERT INTO `Office_locations` VALUES(3,11,2020);
INSERT INTO `Office_locations` VALUES(3,2,2028);
INSERT INTO `Office_locations` VALUES(6,9,2022);
INSERT INTO `Office_locations` VALUES(11,5,2027);
INSERT INTO `Office_locations` VALUES(10,9,2031);
INSERT INTO `Office_locations` VALUES(2,2,2022);
INSERT INTO `Office_locations` VALUES(3,4,2023);
INSERT INTO `Office_locations` VALUES(4,3,2024);
INSERT INTO `Office_locations` VALUES(2,11,2025);
INSERT INTO `Office_locations` VALUES(9,10,2019);
