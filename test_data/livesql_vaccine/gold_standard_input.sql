CREATE TABLE `container`
(`containregistry` VARCHAR(1023),
`containmodel` VARCHAR(1023),
`volliters` BIGINT,
`masskg` DOUBLE,
`containflag` VARCHAR(1023),
`coolkind` VARCHAR(1023),
`coolmass` DOUBLE,
`coolremainpct` DOUBLE,
`coolrefills` BIGINT,
`refilllatest` DATE,
`refillnext` DATE,
`batterypct` DOUBLE,
`pwrfeed` VARCHAR(1023),
`pwrbackupflag` VARCHAR(1023),
`shipown` VARCHAR(1023));
CREATE TABLE `datalogger`
(`loggerreg` VARCHAR(1023),
`logflag` VARCHAR(1023),
`loginterval` BIGINT,
`transmitflag` VARCHAR(1023),
`datauptime` DATETIME,
`datapct` DOUBLE,
`batteryswap` DATE,
`firmvers` VARCHAR(1023),
`softupdate` VARCHAR(1023),
`syshealth` VARCHAR(1023),
`memusepct` BIGINT,
`storecapmb` BIGINT,
`storeremainmb` BIGINT,
`netsignal` VARCHAR(1023),
`commproto` VARCHAR(1023),
`syncflag` VARCHAR(1023),
`syncfreqhr` BIGINT,
`containlog` VARCHAR(1023),
`shiplog` VARCHAR(1023));
CREATE TABLE `regulatoryandmaintenance`
(`regmaintregistry` BIGINT,
`maintflag` VARCHAR(1023),
`maintdatelast` DATE,
`maintdatenext` DATE,
`calibflag` VARCHAR(1023),
`calibdatelast` DATE,
`calibdatenext` DATE,
`docuflag` VARCHAR(1023),
`compscore` DOUBLE,
`riskflag` VARCHAR(1023),
`incidents` BIGINT,
`resolveflag` VARCHAR(1023),
`respperson` VARCHAR(1023),
`contactno` VARCHAR(1023),
`contactemerg` VARCHAR(1023),
`inspectdatelast` DATE,
`inspectdatenext` DATE,
`inspectoutcome` VARCHAR(1023),
`correctactions` VARCHAR(1023),
`preventsteps` VARCHAR(1023),
`validflag` VARCHAR(1023),
`verifymethod` VARCHAR(1023),
`shipgov` VARCHAR(1023),
`vehgov` VARCHAR(1023));
CREATE TABLE `sensordata`
(`sensortrack` BIGINT,
`storetempc` DOUBLE,
`temptolc` DOUBLE,
`tempnowc` DOUBLE,
`tempdevcount` BIGINT,
`tempmaxc` DOUBLE,
`tempminc` DOUBLE,
`tempstabidx` DOUBLE,
`humiditypct` DOUBLE,
`presskpa` DOUBLE,
`shockflag` VARCHAR(1023),
`tiltflag` VARCHAR(1023),
`impactflag` VARCHAR(1023),
`vibelvlmms` DOUBLE,
`lightlux` BIGINT,
`acceldata` DOUBLE,
`handleevents` BIGINT,
`critevents` BIGINT,
`alerts` BIGINT,
`alerttime` DATETIME,
`alertkind` VARCHAR(1023),
`containlink` VARCHAR(1023),
`vehsenseref` VARCHAR(1023));
CREATE TABLE `shipments`
(`shipmentregistry` VARCHAR(1023),
`timemark` DATETIME,
`routealign` VARCHAR(1023),
`customsflag` VARCHAR(1023),
`imppermitref` VARCHAR(1023),
`exppermitref` VARCHAR(1023),
`regprofile` VARCHAR(1023),
`insureflag` VARCHAR(1023),
`insureref` VARCHAR(1023),
`qualcheck` VARCHAR(1023),
`integritymark` VARCHAR(1023),
`contamlevel` VARCHAR(1023),
`sterilemark` VARCHAR(1023),
`packagestate` VARCHAR(1023),
`sealflag` VARCHAR(1023),
`sealref` VARCHAR(1023),
`tampersign` VARCHAR(1023),
`handlingguide` VARCHAR(1023),
`storagepose` VARCHAR(1023),
`generalnote` VARCHAR(1023));
CREATE TABLE `transportinfo`
(`vehiclereg` VARCHAR(1023),
`vehiclekind` VARCHAR(1023),
`vehtempc` DOUBLE,
`speedkm` DOUBLE,
`distdonekm` DOUBLE,
`distleftkm` DOUBLE,
`eta` DATETIME,
`departsite` VARCHAR(1023),
`currentsite` VARCHAR(1023),
`destsite` VARCHAR(1023),
`gpsflag` VARCHAR(1023),
`latvalue` DOUBLE,
`lonvalue` DOUBLE,
`altmeter` DOUBLE,
`locupdatemin` BIGINT,
`locupdatemark` DATETIME,
`transmode` VARCHAR(1023),
`carrlabel` VARCHAR(1023),
`carrcert` VARCHAR(1023),
`shiptransit` VARCHAR(1023),
`containtransit` VARCHAR(1023));
CREATE TABLE `vaccinedetails`
(`vacregistry` BIGINT,
`vacvariant` VARCHAR(1023),
`mfgsource` VARCHAR(1023),
`batchlabel` VARCHAR(1023),
`prodday` DATE,
`expireday` DATE,
`lotmeasure` BIGINT,
`vialtally` BIGINT,
`dosepervial` BIGINT,
`dosetotal` BIGINT,
`shipinject` VARCHAR(1023),
`containvac` VARCHAR(1023));
INSERT INTO container VALUES ('C43627', 'Ultra-Low Freezer', 244, 55.7, 'Return', 'Phase Change Material', 14.5, 36.20, 1, '2025-02-18', '2025-02-24', 93, 'Battery', 'Not Available', 'VS658607');
INSERT INTO container VALUES ('C54126', 'Ultra-Low Freezer', 106, 125.2, 'In Transit', 'Dry Ice', 44.8, 40.30, 0, '2025-02-13', '2025-02-21', 96, 'Battery', 'Available', 'VS531166');
INSERT INTO container VALUES ('C17696', 'Cryo Container', 104, 151.3, 'Delivered', 'Liquid Nitrogen', 36.3, 22.50, 2, '2025-02-09', '2025-02-21', 40, 'External', 'In Use', 'VS728567');
INSERT INTO container VALUES ('C60207', 'Ultra-Low Freezer', 122, 43, 'Return', 'Liquid Nitrogen', 44.6, 44.90, 4, '2025-02-12', '2025-02-21', 40, 'External', 'In Use', 'VS387292');
INSERT INTO container VALUES ('C22268', 'Cryo Container', 412, 193.9, 'In Transit', 'Liquid Nitrogen', 50, 69.50, 2, '2025-02-16', '2025-02-24', 98, 'Battery', 'Available', 'VS935254');
INSERT INTO container VALUES ('C12271', 'Thermal Shipper', 485, 112.8, 'Active', 'Dry Ice', 48.1, 91.00, 0, '2025-02-16', '2025-02-23', 97, 'External', 'In Use', 'VS866412');
INSERT INTO container VALUES ('C33258', 'Cryo Container', 210, 170.5, 'In Transit', 'Phase Change Material', 49.2, 68.80, 4, '2025-02-19', '2025-02-24', 7, 'Battery', 'Available', 'VS286420');
INSERT INTO container VALUES ('C25228', 'Ultra-Low Freezer', 253, 123.6, 'Delivered', 'Phase Change Material', 28.7, 45.00, 0, '2025-02-13', '2025-02-24', 85, 'Battery', 'In Use', 'VS548410');
INSERT INTO container VALUES ('C78503', 'Ultra-Low Freezer', 399, 146.7, 'Return', 'Phase Change Material', 20.6, 97.50, 4, '2025-02-12', '2025-02-20', 41, 'Battery', 'Available', 'VS273096');
INSERT INTO container VALUES ('C59542', 'Cryo Container', 434, 104.4, 'In Transit', 'Liquid Nitrogen', 6.5, 32.20, 2, '2025-02-12', '2025-02-20', 60, 'Hybrid', 'Available', 'VS143586');
INSERT INTO container VALUES ('C79132', 'Thermal Shipper', 176, 45.9, 'In Transit', 'Liquid Nitrogen', 39.3, 20.10, 4, '2025-02-15', '2025-02-23', 72, 'Hybrid', 'Not Available', 'VS266384');
INSERT INTO container VALUES ('C94390', 'Cryo Container', 318, 30.7, 'In Transit', 'Dry Ice', 31.3, 46.10, 1, '2025-02-09', '2025-02-21', 16, 'Battery', 'In Use', 'VS558749');
INSERT INTO container VALUES ('C73439', 'Thermal Shipper', 297, 149.4, 'Active', 'Phase Change Material', 19.9, 77.30, 3, '2025-02-15', '2025-02-21', 31, 'External', 'Not Available', 'VS891781');
INSERT INTO container VALUES ('C81121', 'Cryo Container', 258, 70.3, 'Return', 'Dry Ice', 8.2, 61.60, 4, '2025-02-18', '2025-02-23', 29, 'Hybrid', 'Not Available', 'VS615999');
INSERT INTO container VALUES ('C77731', 'Cryo Container', 194, 121.2, 'Return', 'Dry Ice', 14.8, 86.40, 3, '2025-02-11', '2025-02-22', 91, 'Hybrid', 'Available', 'VS709844');
INSERT INTO container VALUES ('C83206', 'Cryo Container', 153, 141.3, 'In Transit', 'Phase Change Material', 5.8, 34.30, 1, '2025-02-18', '2025-02-21', 10, 'Battery', 'In Use', 'VS646149');
INSERT INTO container VALUES ('C21602', 'Cryo Container', 228, 86.6, 'Return', 'Liquid Nitrogen', 31, 95.10, 0, '2025-02-19', '2025-02-22', 22, 'External', 'In Use', 'VS758926');
INSERT INTO container VALUES ('C96014', 'Cryo Container', 340, 100.2, 'Active', 'Phase Change Material', 44.2, 74.70, 2, '2025-02-09', '2025-02-22', 86, 'Hybrid', 'In Use', 'VS328367');
INSERT INTO container VALUES ('C67762', 'Cryo Container', 131, 67.2, 'Active', 'Dry Ice', 25.5, 96.00, 3, '2025-02-16', '2025-02-21', 69, 'Battery', 'In Use', 'VS731801');
INSERT INTO container VALUES ('C77065', 'Ultra-Low Freezer', 371, 161.1, 'Delivered', 'Phase Change Material', 13.8, 29.70, 5, '2025-02-14', '2025-02-24', 40, 'External', 'Not Available', 'VS519544');
INSERT INTO container VALUES ('C54475', 'Cryo Container', 52, 59.6, 'In Transit', 'Phase Change Material', 8.7, 48.30, 5, '2025-02-09', '2025-02-20', 66, 'Hybrid', 'In Use', 'VS708160');
INSERT INTO container VALUES ('C60136', 'Ultra-Low Freezer', 232, 68.2, 'Active', 'Dry Ice', 10.7, 51.70, 2, '2025-02-14', '2025-02-23', 84, 'Hybrid', 'In Use', 'VS660105');
INSERT INTO container VALUES ('C57790', 'Ultra-Low Freezer', 279, 73.8, 'Active', 'Liquid Nitrogen', 45.3, 24.80, 5, '2025-02-11', '2025-02-23', 63, 'Hybrid', 'Available', 'VS432088');
INSERT INTO container VALUES ('C84212', 'Cryo Container', 380, 197.3, 'In Transit', 'Dry Ice', 27.9, 87.10, 4, '2025-02-15', '2025-02-23', 98, 'External', 'In Use', 'VS784282');
INSERT INTO container VALUES ('C38012', 'Thermal Shipper', 204, 69.2, 'In Transit', 'Phase Change Material', 26.4, 24.10, 1, '2025-02-09', '2025-02-23', 26, 'External', 'Not Available', 'VS417476');
INSERT INTO datalogger VALUES ('DL1976', 'Malfunction', 30, 'Real-time', '2025-02-19 08:07:08', 82.9, '2026-02-16', '3.9.3', 'Current', 'Fair', 89, 818, 629, 'Poor', 'Satellite', 'Success', 4, 'C64212', 'VS311427');
INSERT INTO datalogger VALUES ('DL8946', 'Active', 15, 'Delayed', '2025-02-19 07:39:08', 90.8, '2025-11-19', '1.2.0', 'Pending', 'Good', 8, 520, 30, 'Poor', 'Satellite', 'Pending', 1, 'C67576', 'VS540180');
INSERT INTO datalogger VALUES ('DL1459', 'Battery Low', 10, 'Delayed', '2025-02-19 08:23:08', 90.7, '2025-04-06', '5.8.2', 'Current', 'Fair', 37, 894, 738, 'Poor', 'Satellite', 'Pending', 12, 'C31796', 'VS409921');
INSERT INTO datalogger VALUES ('DL7174', 'Active', 1, 'Failed', '2025-02-19 08:08:08', 93.2, '2025-11-05', '4.7.4', 'Current', 'Good', 73, 36, 375, 'Good', 'Bluetooth', 'Failed', 12, 'C12271', 'VS866412');
INSERT INTO datalogger VALUES ('DL4528', 'Battery Low', 10, 'Delayed', '2025-02-19 08:13:08', 82.9, '2025-09-26', '4.2.0', 'Failed', 'Good', 19, 288, 498, 'Good', 'GSM', 'Pending', 12, 'C67056', 'VS328594');
INSERT INTO datalogger VALUES ('DL8008', 'Malfunction', 30, 'Real-time', '2025-02-19 08:19:08', 85.1, '2026-01-27', '1.7.7', 'Pending', 'Fair', 36, 733, 989, 'Excellent', 'GSM', 'Pending', 12, 'C94094', 'VS168782');
INSERT INTO datalogger VALUES ('DL8228', 'Active', 15, 'Delayed', '2025-02-19 08:22:08', 86.7, '2025-04-18', '5.8.3', 'Pending', 'Poor', 0, 968, 967, 'Poor', 'Satellite', 'Pending', 8, 'C53877', 'VS514111');
INSERT INTO datalogger VALUES ('DL4382', 'Battery Low', 10, 'Failed', '2025-02-19 07:59:08', 85, '2025-04-21', '4.8.3', 'Failed', 'Good', 96, 117, 126, 'Excellent', 'GSM', 'Pending', 1, 'C41298', 'VS820187');
INSERT INTO datalogger VALUES ('DL8171', 'Malfunction', 10, 'Real-time', '2025-02-19 08:08:08', 98.9, '2025-07-13', '5.4.9', 'Failed', 'Fair', 1, 117, 985, 'Good', 'Bluetooth', 'Success', 12, 'C22916', 'VS692043');
INSERT INTO datalogger VALUES ('DL7357', 'Malfunction', 1, 'Failed', '2025-02-19 08:22:08', 91.2, '2025-02-21', '4.9.8', 'Failed', 'Good', 47, 855, 946, 'None', 'Satellite', 'Failed', 24, 'C54576', 'VS540088');
INSERT INTO datalogger VALUES ('DL9034', 'Malfunction', 5, 'Real-time', '2025-02-19 08:19:08', 81.6, '2025-04-17', '2.9.8', 'Current', 'Good', 86, 656, 725, 'Excellent', 'Satellite', 'Failed', 4, 'C24557', 'VS990225');
INSERT INTO datalogger VALUES ('DL9982', 'Active', 30, 'Failed', '2025-02-19 07:42:08', 80.1, '2025-11-29', '3.3.8', 'Current', 'Good', 60, 345, 30, 'Good', 'Bluetooth', 'Pending', 8, 'C74265', 'VS560792');
INSERT INTO datalogger VALUES ('DL4863', 'Battery Low', 30, 'Failed', '2025-02-19 07:57:08', 80.5, '2025-12-22', '3.4.3', 'Current', 'Poor', 74, 552, 956, 'Good', 'GSM', 'Success', 8, 'C93590', 'VS418430');
INSERT INTO datalogger VALUES ('DL5824', 'Malfunction', 15, 'Real-time', '2025-02-19 07:39:08', 84.7, '2025-10-25', '3.4.1', 'Failed', 'Good', 39, 530, 497, 'Poor', 'Satellite', 'Failed', 12, 'C19477', 'VS709799');
INSERT INTO datalogger VALUES ('DL1312', 'Active', 5, 'Delayed', '2025-02-19 08:18:08', 81.7, '2025-06-26', '2.6.2', 'Current', 'Poor', 70, 842, 604, 'Poor', 'Bluetooth', 'Failed', 12, 'C20987', 'VS226654');
INSERT INTO datalogger VALUES ('DL2704', 'Active', 15, 'Delayed', '2025-02-19 07:39:08', 98.7, '2025-03-11', '4.7.7', 'Pending', 'Good', 0, 17, 925, 'Poor', 'GSM', 'Success', 8, 'C47047', 'VS317920');
INSERT INTO datalogger VALUES ('DL8383', 'Battery Low', 1, 'Real-time', '2025-02-19 08:24:08', 92.4, '2025-03-13', '4.6.2', 'Pending', 'Fair', 79, 598, 843, 'None', 'Satellite', 'Success', 4, 'C78135', 'VS969073');
INSERT INTO datalogger VALUES ('DL1591', 'Malfunction', 5, 'Delayed', '2025-02-19 07:35:08', 97.4, '2025-08-01', '2.6.1', 'Failed', 'Fair', 87, 212, 182, 'Excellent', 'Satellite', 'Failed', 8, 'C47844', 'VS229072');
INSERT INTO datalogger VALUES ('DL1052', 'Active', 30, 'Delayed', '2025-02-19 07:42:08', 84.4, '2025-05-12', '4.7.1', 'Failed', 'Good', 4, 217, 102, 'Poor', 'Satellite', 'Success', 1, 'C77024', 'VS271117');
INSERT INTO datalogger VALUES ('DL3562', 'Active', 10, 'Failed', '2025-02-19 07:57:08', 97.7, '2025-11-09', '5.7.4', 'Current', 'Poor', 37, 568, 911, 'Poor', 'Satellite', 'Pending', 8, 'C26225', 'VS314433');
INSERT INTO datalogger VALUES ('DL7072', 'Battery Low', 1, 'Failed', '2025-02-19 08:22:08', 94.5, '2026-02-02', '2.2.0', 'Current', 'Fair', 22, 942, 24, 'Poor', 'Bluetooth', 'Success', 4, 'C44998', 'VS696212');
INSERT INTO datalogger VALUES ('DL5453', 'Battery Low', 1, 'Real-time', '2025-02-19 07:39:08', 81.2, '2025-04-05', '3.0.0', 'Pending', 'Good', 51, 299, 616, 'Poor', 'RF', 'Success', 8, 'C78691', 'VS172451');
INSERT INTO datalogger VALUES ('DL4772', 'Active', 10, 'Real-time', '2025-02-19 08:24:08', 81.7, '2025-04-21', '4.8.0', 'Pending', 'Fair', 32, 259, 6, 'Good', 'GSM', 'Failed', 8, 'C91778', 'VS946125');
INSERT INTO datalogger VALUES ('DL6206', 'Battery Low', 15, 'Delayed', '2025-02-19 07:59:08', 87.4, '2025-11-13', '1.3.3', 'Failed', 'Fair', 41, 883, 660, 'Excellent', 'GSM', 'Pending', 1, 'C37674', 'VS414060');
INSERT INTO datalogger VALUES ('DL4852', 'Active', 5, 'Failed', '2025-02-19 08:16:08', 84.9, '2025-08-23', '3.4.4', 'Current', 'Fair', 15, 467, 585, 'Excellent', 'Satellite', 'Pending', 12, 'C68142', 'VS233766');
INSERT INTO regulatoryandmaintenance VALUES (9, 'Due', '2024-11-28', '2025-05-17', 'Valid', '2024-09-10', '2025-03-09', 'Missing', 83.3, 'High Risk', 5, 'Pending', 'Jennifer Webster', '2115453536', '+1-503-931-0504', '2025-01-31', '2025-02-26', 'Conditional', 'None Required', 'Implemented', 'In Process', 'Electronic', 'VS194886', 'V7932');
INSERT INTO regulatoryandmaintenance VALUES (281, 'Overdue', '2024-12-26', '2025-02-26', 'Expired', '2024-11-14', '2025-05-16', 'Missing', 65.1, 'High Risk', 4, 'Pending', 'Jessica Wilson', '758.798.4601', '728.930.7311x56588', '2025-01-23', '2025-02-27', 'Conditional', 'Completed', 'Under Review', 'Failed', 'Electronic', 'VS201432', 'V6550');
INSERT INTO regulatoryandmaintenance VALUES (557, 'Due', '2025-02-07', '2025-03-15', 'Expired', '2024-12-01', '2025-04-20', 'Partial', 94.5, 'High Risk', 4, 'Pending', 'Elizabeth Sherman', '461-325-3196x567', '671.442.8290x13222', '2025-02-07', '2025-03-15', 'Pass', 'None Required', 'Planned', 'In Process', 'Electronic', 'VS351901', 'V9753');
INSERT INTO regulatoryandmaintenance VALUES (698, 'Up to Date', '2025-01-30', '2025-03-11', 'Valid', '2024-09-28', '2025-06-29', 'Partial', 68, 'Low Risk', 2, 'Escalated', 'Juan Elliott II', '(361)228-5179x8645', '678-986-8701x88660', '2025-01-27', '2025-03-05', 'Fail', 'None Required', 'Under Review', 'Validated', 'Electronic', 'VS749041', 'V3337');
INSERT INTO regulatoryandmaintenance VALUES (430, 'Overdue', '2025-02-13', '2025-05-08', 'Valid', '2024-11-17', '2025-03-24', 'Missing', 70.9, 'Low Risk', 0, 'Resolved', 'Christopher Morrison', '(293)797-0380', '417.601.5233x91627', '2025-02-12', '2025-03-17', 'Fail', 'Completed', 'Under Review', 'Failed', 'Hybrid', 'VS785852', 'V2978');
INSERT INTO regulatoryandmaintenance VALUES (699, 'Due', '2024-12-21', '2025-03-05', 'Expired', '2024-09-13', '2025-05-26', 'Missing', 31.4, 'Low Risk', 4, 'Resolved', 'George Dominguez', '001-476-483-1005', '+1-278-912-1872x6636', '2025-01-28', '2025-03-08', 'Fail', 'Pending', 'Under Review', 'Failed', 'Hybrid', 'VS667321', 'V7228');
INSERT INTO regulatoryandmaintenance VALUES (855, 'Overdue', '2025-02-15', '2025-05-15', 'Due', '2024-10-17', '2025-04-26', 'Missing', 8.4, 'Low Risk', 5, 'Resolved', 'Robert Johns', '227-395-0110x412', '718.860.3251x59846', '2025-02-08', '2025-02-28', 'Conditional', 'Completed', 'Planned', 'In Process', 'Electronic', 'VS494681', 'V9771');
INSERT INTO regulatoryandmaintenance VALUES (873, 'Up to Date', '2024-12-13', '2025-03-12', 'Due', '2025-01-02', '2025-06-30', 'Partial', 17.9, 'High Risk', 1, 'Resolved', 'Ms. Lindsey Smith DVM', '749-731-3793x238', '001-325-405-6199x81931', '2025-02-14', '2025-03-09', 'Conditional', 'Completed', 'Under Review', 'Validated', 'Manual', 'VS667075', 'V7533');
INSERT INTO regulatoryandmaintenance VALUES (68, 'Up to Date', '2025-02-16', '2025-05-07', 'Valid', '2024-12-17', '2025-05-09', 'Partial', 7.2, 'Medium Risk', 1, 'Resolved', 'Meredith Strickland', '+1-584-463-4414', '(630)499-5416', '2025-02-04', '2025-02-28', 'Conditional', 'Pending', 'Under Review', 'In Process', 'Manual', 'VS409384', 'V6413');
INSERT INTO regulatoryandmaintenance VALUES (73, 'Up to Date', '2025-01-27', '2025-03-13', 'Expired', '2025-01-07', '2025-05-06', 'Complete', 22.3, 'High Risk', 5, 'Resolved', 'Jake Hansen', '804.625.6482x638', '001-210-845-5816x99581', '2025-02-02', '2025-02-28', 'Pass', 'Completed', 'Planned', 'Failed', 'Electronic', 'VS295482', 'V4217');
INSERT INTO regulatoryandmaintenance VALUES (336, 'Up to Date', '2024-12-30', '2025-04-13', 'Expired', '2024-11-10', '2025-07-19', 'Missing', 85.9, 'Low Risk', 1, 'Escalated', 'Crystal Payne', '495.500.5400x2256', '469-703-3352x924', '2025-02-13', '2025-02-21', 'Fail', 'None Required', 'Planned', 'In Process', 'Hybrid', 'VS615999', 'V3460');
INSERT INTO regulatoryandmaintenance VALUES (742, 'Overdue', '2024-12-31', '2025-05-10', 'Due', '2025-02-09', '2025-07-28', 'Partial', 55.3, 'Low Risk', 5, 'Escalated', 'Lisa Evans', '4509169920', '909.258.1801x7032', '2025-02-03', '2025-02-27', 'Fail', 'Completed', 'Under Review', 'In Process', 'Manual', 'VS696024', 'V5377');
INSERT INTO regulatoryandmaintenance VALUES (84, 'Up to Date', '2024-12-05', '2025-02-26', 'Due', '2025-02-02', '2025-06-04', 'Partial', 63.6, 'Low Risk', 1, 'Pending', 'Anthony Wagner', '(758)839-4833x69793', '357-576-5883', '2025-02-03', '2025-03-07', 'Pass', 'None Required', 'Under Review', 'Failed', 'Manual', 'VS568867', 'V9714');
INSERT INTO regulatoryandmaintenance VALUES (759, 'Up to Date', '2024-11-25', '2025-04-12', 'Expired', '2024-11-30', '2025-02-22', 'Missing', 15.6, 'Medium Risk', 2, 'Pending', 'Kimberly Fernandez', '4162077577', '489.917.8587x19913', '2025-02-11', '2025-03-08', 'Pass', 'Completed', 'Implemented', 'In Process', 'Electronic', 'VS136255', 'V4616');
INSERT INTO regulatoryandmaintenance VALUES (222, 'Overdue', '2025-01-17', '2025-04-26', 'Due', '2024-11-11', '2025-08-01', 'Partial', 96.1, 'High Risk', 5, 'Resolved', 'Connie Garcia', '(509)986-6323x5112', '330.433.8318x2735', '2025-01-27', '2025-02-26', 'Fail', 'Pending', 'Planned', 'Validated', 'Hybrid', 'VS329297', 'V4086');
INSERT INTO regulatoryandmaintenance VALUES (356, 'Up to Date', '2024-11-27', '2025-04-27', 'Due', '2024-12-26', '2025-03-25', 'Complete', 11.2, 'Low Risk', 1, 'Resolved', 'Sophia Villanueva', '837-521-1713x72389', '001-812-812-3579x42515', '2025-02-09', '2025-03-07', 'Conditional', 'None Required', 'Implemented', 'Validated', 'Electronic', 'VS328367', 'V4479');
INSERT INTO regulatoryandmaintenance VALUES (909, 'Due', '2024-11-27', '2025-04-03', 'Valid', '2024-10-08', '2025-05-23', 'Missing', 60.5, 'High Risk', 1, 'Escalated', 'Robert Benson', '001-723-939-9186x465', '(914)413-3199x265', '2025-02-04', '2025-03-01', 'Fail', 'Completed', 'Under Review', 'Validated', 'Manual', 'VS844916', 'V6593');
INSERT INTO regulatoryandmaintenance VALUES (233, 'Up to Date', '2025-01-13', '2025-04-15', 'Due', '2024-10-09', '2025-05-08', 'Complete', 69.6, 'Low Risk', 1, 'Pending', 'Donna Black', '001-568-622-3287x634', '403-206-2996x256', '2025-01-28', '2025-03-16', 'Fail', 'Pending', 'Under Review', 'Failed', 'Hybrid', 'VS578177', 'V3910');
INSERT INTO regulatoryandmaintenance VALUES (364, 'Up to Date', '2024-12-13', '2025-05-10', 'Expired', '2024-10-31', '2025-05-13', 'Partial', 1.4, 'Medium Risk', 3, 'Escalated', 'Kenneth Cook', '(585)763-6693x672', '+1-373-546-7578x8240', '2025-02-16', '2025-03-03', 'Pass', 'Completed', 'Implemented', 'Failed', 'Hybrid', 'VS808152', 'V6815');
INSERT INTO regulatoryandmaintenance VALUES (913, 'Due', '2025-01-15', '2025-02-21', 'Due', '2025-01-04', '2025-07-12', 'Missing', 98.4, 'High Risk', 5, 'Resolved', 'Robert Carr', '001-261-952-5241x6604', '(288)727-7028', '2025-01-30', '2025-03-01', 'Conditional', 'Completed', 'Planned', 'In Process', 'Electronic', 'VS766114', 'V6340');
INSERT INTO regulatoryandmaintenance VALUES (632, 'Overdue', '2025-01-11', '2025-03-19', 'Valid', '2024-08-28', '2025-07-31', 'Missing', 93.6, 'Low Risk', 0, 'Resolved', 'Tiffany Tyler', '207.307.2093x8312', '579.788.0325x769', '2025-01-26', '2025-03-13', 'Pass', 'Pending', 'Under Review', 'Validated', 'Manual', 'VS786448', 'V3139');
INSERT INTO regulatoryandmaintenance VALUES (636, 'Up to Date', '2025-01-26', '2025-05-15', 'Valid', '2024-11-22', '2025-07-10', 'Missing', 30, 'Low Risk', 0, 'Escalated', 'Mr. Benjamin Robinson', '562.271.0486', '+1-378-836-4657x46558', '2025-02-07', '2025-03-18', 'Conditional', 'Pending', 'Under Review', 'Failed', 'Hybrid', 'VS606588', 'V7425');
INSERT INTO regulatoryandmaintenance VALUES (789, 'Due', '2025-02-19', '2025-02-20', 'Expired', '2024-11-04', '2025-03-24', 'Complete', 0.1, 'Low Risk', 0, 'Resolved', 'Holly Oconnor', '2672224039', '417.363.4262', '2025-01-24', '2025-03-03', 'Conditional', 'Completed', 'Implemented', 'Failed', 'Manual', 'VS213626', 'V5629');
INSERT INTO regulatoryandmaintenance VALUES (650, 'Up to Date', '2025-01-10', '2025-04-14', 'Valid', '2024-10-16', '2025-05-08', 'Missing', 23.1, 'High Risk', 5, 'Escalated', 'Lee Maldonado', '834-425-7387', '775-811-8117x977', '2025-02-09', '2025-03-15', 'Fail', 'None Required', 'Under Review', 'Failed', 'Manual', 'VS196722', 'V9421');
INSERT INTO regulatoryandmaintenance VALUES (255, 'Up to Date', '2024-12-29', '2025-02-26', 'Due', '2025-02-07', '2025-08-11', 'Complete', 44.9, 'High Risk', 1, 'Escalated', 'Steven Johnson', '540.899.5756x6738', '356.420.3456', '2025-02-04', '2025-02-28', 'Fail', 'Pending', 'Implemented', 'In Process', 'Manual', 'VS947261', 'V6514');
INSERT INTO sensordata VALUES (396, -69.1, 2.6, -81.1, 3, -41.30, -87.90, 0.952, 26.9, 104.8, 'Triggered', 'Triggered', 'Triggered', 3.00, 976, 0.43, 15, 1, 7, '2025-02-18 19:32:08', 'Battery', 'C38565', 'V7908');
INSERT INTO sensordata VALUES (400, -66, 3.9, -72.5, 8, -53.00, -85.90, 0.986, 14.8, 95.4, 'Triggered', 'Triggered', 'Normal', 2.58, 83, 0.37, 6, 3, 8, '2025-02-18 11:32:08', 'GPS', 'C88424', 'V4250');
INSERT INTO sensordata VALUES (536, -89.2, 4.9, -69.1, 8, -44.60, -87.10, 0.822, 26.0, 100.4, 'Normal', 'Triggered', 'Malfunction', 0.40, 660, 0.66, 4, 1, 3, '2025-02-18 20:32:08', 'Temperature', 'C91263', 'V6424');
INSERT INTO sensordata VALUES (434, -79.6, 4.4, -61, 7, -46.40, -87.00, 0.841, 28.2, 105.1, 'Normal', 'Malfunction', 'Malfunction', 4.93, 289, 0.9, 16, 2, 4, '2025-02-19 01:32:08', 'Battery', 'C31088', 'V5657');
INSERT INTO sensordata VALUES (849, -72.2, 2.7, -73.8, 10, -45.80, -93.00, 0.886, 17.1, 105.2, 'Triggered', 'Triggered', 'Normal', 2.46, 281, 0.53, 17, 2, 3, '2025-02-19 02:32:08', 'Battery', 'C17825', 'V6462');
INSERT INTO sensordata VALUES (862, -75.6, 2.2, -86.9, 3, -43.90, -87.20, 0.92, 16.9, 97.2, 'Malfunction', 'Triggered', 'Triggered', 2.11, 111, 1.12, 3, 1, 3, '2025-02-19 08:32:08', 'Security', 'C91492', 'V2317');
INSERT INTO sensordata VALUES (721, -88.4, 2.1, -75.6, 8, -56.30, -91.40, 0.811, 23.6, 101.2, 'Triggered', 'Malfunction', 'Normal', 7.26, 669, 0.58, 3, 5, 8, '2025-02-18 14:32:08', 'Security', 'C19015', 'V5540');
INSERT INTO sensordata VALUES (317, -74.3, 3.5, -71.4, 5, -59.70, -90.00, 0.907, 25.6, 100.2, 'Normal', 'Triggered', 'Normal', 7.55, 11, 0.33, 8, 4, 5, '2025-02-18 16:32:08', 'N/A', 'C56201', 'V1320');
INSERT INTO sensordata VALUES (60, -72.8, 4.7, -78.6, 7, -45.20, -87.40, 0.99, 17.2, 99.8, 'Triggered', 'Malfunction', 'Normal', 3.00, 994, 0.94, 5, 0, 0, '2025-02-18 22:32:08', 'Security', 'C66474', 'V4009');
INSERT INTO sensordata VALUES (733, -64.5, 2.2, -73.4, 5, -48.00, -87.50, 0.85, 13.6, 90.3, 'Normal', 'Normal', 'Malfunction', 5.13, 549, 0.72, 4, 5, 5, '2025-02-18 21:32:08', 'GPS', 'C81719', 'V9412');
INSERT INTO sensordata VALUES (875, -89.6, 3.8, -68.7, 10, -53.90, -93.00, 0.914, 11.9, 109.7, 'Normal', 'Normal', 'Malfunction', 1.00, 984, 0.81, 14, 2, 5, '2025-02-18 09:32:08', 'N/A', 'C58096', 'V6811');
INSERT INTO sensordata VALUES (597, -88, 3.8, -84.9, 1, -45.70, -85.10, 0.856, 12.1, 105.2, 'Triggered', 'Triggered', 'Malfunction', 4.00, 851, 0.63, 0, 0, 5, '2025-02-18 21:32:08', 'N/A', 'C21440', 'V1624');
INSERT INTO sensordata VALUES (881, -72.3, 2.9, -68.7, 6, -50.70, -86.00, 0.887, 23.7, 97.4, 'Normal', 'Malfunction', 'Malfunction', 0.79, 913, 1.04, 2, 4, 3, '2025-02-18 19:32:08', 'Security', 'C46902', 'V7116');
INSERT INTO sensordata VALUES (880, -81.3, 4.2, -81.5, 1, -44.10, -89.30, 0.845, 25.9, 95.5, 'Malfunction', 'Triggered', 'Triggered', 6.87, 918, 0, 3, 1, 1, '2025-02-19 08:32:08', 'Security', 'C90449', 'V3625');
INSERT INTO sensordata VALUES (599, -66.3, 4.8, -76.3, 9, -48.40, -86.30, 0.845, 26.2, 104.7, 'Malfunction', 'Triggered', 'Malfunction', 2.03, 800, 1.6, 2, 4, 4, '2025-02-19 07:32:08', 'Security', 'C82848', 'V1964');
INSERT INTO sensordata VALUES (748, -68.7, 4.2, -82.9, 3, -51.50, -88.40, 0.863, 26.9, 92.4, 'Triggered', 'Normal', 'Normal', 0.88, 246, 0.39, 3, 4, 1, '2025-02-18 17:32:08', 'Security', 'C62839', 'V1203');
INSERT INTO sensordata VALUES (216, -61.7, 3.5, -73.2, 4, -41.80, -93.40, 0.916, 23.6, 104, 'Triggered', 'Triggered', 'Normal', 2.28, 209, 0.61, 13, 3, 7, '2025-02-18 22:32:08', 'GPS', 'C40282', 'V8485');
INSERT INTO sensordata VALUES (894, -64.8, 4.0, -87.6, 10, -45.70, -94.60, 0.826, 20.3, 92.4, 'Normal', 'Triggered', 'Normal', 4.45, 963, 1.68, 5, 5, 4, '2025-02-19 07:32:08', 'GPS', 'C23453', 'V8555');
INSERT INTO sensordata VALUES (349, -81.1, 3.2, -74.4, 9, -51.30, -86.80, 0.942, 24.1, 107.3, 'Malfunction', 'Triggered', 'Triggered', 6.76, 549, 0.63, 5, 2, 9, '2025-02-19 07:32:08', 'N/A', 'C14038', 'V3851');
INSERT INTO sensordata VALUES (763, -84.3, 2.6, -83.9, 2, -51.70, -92.60, 0.912, 27.0, 105.9, 'Triggered', 'Triggered', 'Normal', 4.51, 313, 1.25, 6, 0, 9, '2025-02-18 09:32:08', 'GPS', 'C58632', 'V1352');
INSERT INTO sensordata VALUES (779, -82.3, 3.1, -67, 1, -57.80, -89.00, 0.934, 21.4, 100.7, 'Triggered', 'Triggered', 'Malfunction', 5.94, 158, 1.6, 18, 2, 7, '2025-02-18 23:32:08', 'N/A', 'C40037', 'V6280');
INSERT INTO sensordata VALUES (378, -72.3, 2.8, -61.8, 4, -49.20, -86.60, 0.901, 29.9, 105.9, 'Triggered', 'Triggered', 'Triggered', 9.12, 290, 0.68, 1, 2, 9, '2025-02-18 17:32:08', 'N/A', 'C44089', 'V5102');
INSERT INTO sensordata VALUES (381, -84.8, 4.6, -85.5, 5, -52.80, -93.00, 0.918, 11.6, 92.3, 'Malfunction', 'Triggered', 'Normal', 1.37, 335, 0.49, 17, 1, 10, '2025-02-19 03:32:08', 'N/A', 'C94752', 'V6260');
INSERT INTO sensordata VALUES (517, -73.3, 2.2, -83.5, 9, -45.60, -87.70, 0.971, 25.7, 107.5, 'Triggered', 'Malfunction', 'Malfunction', 9.05, 136, 0.24, 7, 5, 9, '2025-02-18 18:32:08', 'Temperature', 'C96443', 'V8037');
INSERT INTO sensordata VALUES (390, -65.5, 4.1, -76, 1, -47.90, -91.70, 0.822, 13.2, 99.9, 'Triggered', 'Triggered', 'Normal', 5.73, 695, 0.95, 12, 5, 1, '2025-02-19 03:32:08', 'Temperature', 'C62813', 'V6964');
INSERT INTO shipments VALUES ('VS426009', '2024-03-28 18:25:40.421031', 'Compliant', 'Cleared', 'IP43076', 'EP28887', 'Non-Compliant', 'Active', 'INS72027', 'Passed', 'Under Investigation', 'Low', 'Unknown', 'Excellent', 'Broken', 'SEAL60581', 'None Detected', 'Special Care', 'Upright', '');
INSERT INTO shipments VALUES ('VS255467', '2024-07-17 11:50:00.095446', 'Under Review', 'In Process', 'IP48778', 'EP89571', 'Non-Compliant', 'Active', 'INS90844', 'Passed', 'Intact', 'Low', 'Compromised', 'Fair', 'Broken', 'SEAL28196', 'Suspected', 'Standard', 'Horizontal', '');
INSERT INTO shipments VALUES ('VS410186', '2024-05-20 06:37:32.195984', 'Under Review', 'Pending', 'IP42455', 'EP45815', 'Non-Compliant', 'Expired', 'INS24762', 'Pending', 'Under Investigation', 'Low', 'Unknown', 'Fair', 'Missing', 'SEAL68755', 'Suspected', 'Standard', 'Horizontal', '');
INSERT INTO shipments VALUES ('VS407480', '2024-06-10 09:46:53.105577', 'Compliant', 'Pending', 'IP67710', 'EP20972', 'Compliant', 'Expired', 'INS52498', 'Passed', 'Compromised', 'Low', 'Maintained', 'Excellent', 'Missing', 'SEAL38933', 'Suspected', 'Urgent', 'Horizontal', '');
INSERT INTO shipments VALUES ('VS325520', '2024-02-27 08:45:21.445351', 'Deviation', 'Cleared', 'IP66183', 'EP12891', 'Under Review', 'Active', 'INS42728', 'Failed', 'Under Investigation', 'High', 'Maintained', 'Excellent', 'Missing', 'SEAL14365', 'Suspected', 'Standard', 'Upright', '');
INSERT INTO shipments VALUES ('VS351642', '2024-10-30 09:43:19.390343', 'Deviation', 'Pending', 'IP69578', 'EP99919', 'Under Review', 'Expired', 'INS45343', 'Pending', 'Compromised', 'High', 'Unknown', 'Good', 'Intact', 'SEAL56161', 'Suspected', 'Standard', 'Upright', 'Along Democrat American land woman accept.');
INSERT INTO shipments VALUES ('VS967434', '2024-05-29 21:07:14.161445', 'Under Review', 'Pending', 'IP74280', 'EP57533', 'Under Review', 'Expired', 'INS19946', 'Passed', 'Under Investigation', 'Medium', 'Maintained', 'Poor', 'Intact', 'SEAL53473', 'None Detected', 'Urgent', 'Horizontal', 'Investment type sell according also painting imagine ahead.');
INSERT INTO shipments VALUES ('VS399724', '2024-09-14 04:52:05.330746', 'Compliant', 'In Process', 'IP93970', 'EP15370', 'Compliant', 'Active', 'INS80903', 'Pending', 'Compromised', 'Low', 'Compromised', 'Excellent', 'Intact', 'SEAL36779', 'Suspected', 'Urgent', 'Upright', '');
INSERT INTO shipments VALUES ('VS218316', '2024-04-21 21:21:50.396768', 'Deviation', 'Cleared', 'IP56756', 'EP76924', 'Under Review', 'Active', 'INS34166', 'Passed', 'Under Investigation', 'Low', 'Unknown', 'Good', 'Intact', 'SEAL48182', 'None Detected', 'Urgent', 'Horizontal', 'Exist education protect company article decade practice garden.');
INSERT INTO shipments VALUES ('VS400245', '2025-01-23 22:20:12.123347', 'Compliant', 'In Process', 'IP25041', 'EP40154', 'Non-Compliant', 'Pending', 'INS90554', 'Passed', 'Compromised', 'Medium', 'Unknown', 'Good', 'Intact', 'SEAL37416', 'Confirmed', 'Urgent', 'Upright', '');
INSERT INTO shipments VALUES ('VS669065', '2024-04-02 12:51:17.171684', 'Compliant', 'In Process', 'IP46061', 'EP91121', 'Under Review', 'Active', 'INS20795', 'Passed', 'Intact', 'Low', 'Maintained', 'Excellent', 'Intact', 'SEAL88388', 'None Detected', 'Standard', 'Horizontal', 'Week might describe various above address.');
INSERT INTO shipments VALUES ('VS529852', '2024-09-28 02:18:23.227384', 'Deviation', 'In Process', 'IP87583', 'EP75143', 'Compliant', 'Expired', 'INS25436', 'Failed', 'Intact', 'Low', 'Maintained', 'Excellent', 'Broken', 'SEAL37227', 'Suspected', 'Special Care', 'Horizontal', 'Military address like air line box.');
INSERT INTO shipments VALUES ('VS145015', '2024-11-01 08:42:39.172446', 'Deviation', 'Cleared', 'IP59008', 'EP34718', 'Under Review', 'Expired', 'INS29663', 'Passed', 'Compromised', 'Low', 'Compromised', 'Good', 'Missing', 'SEAL62458', 'Suspected', 'Standard', 'Horizontal', '');
INSERT INTO shipments VALUES ('VS485492', '2024-11-26 15:23:00.173447', 'Compliant', 'Cleared', 'IP30313', 'EP42776', 'Compliant', 'Pending', 'INS31641', 'Passed', 'Under Investigation', 'Medium', 'Compromised', 'Fair', 'Broken', 'SEAL83484', 'Confirmed', 'Urgent', 'Not Specified', 'Necessary surface gun.');
INSERT INTO shipments VALUES ('VS612725', '2024-02-25 17:02:33.174418', 'Compliant', 'In Process', 'IP49583', 'EP48133', 'Compliant', 'Active', 'INS73296', 'Passed', 'Compromised', 'Low', 'Compromised', 'Poor', 'Broken', 'SEAL28285', 'Confirmed', 'Special Care', 'Horizontal', '');
INSERT INTO shipments VALUES ('VS795327', '2024-11-23 23:40:07.349512', 'Under Review', 'In Process', 'IP93823', 'EP22441', 'Compliant', 'Pending', 'INS19268', 'Failed', 'Under Investigation', 'High', 'Maintained', 'Good', 'Missing', 'SEAL27250', 'Confirmed', 'Urgent', 'Horizontal', '');
INSERT INTO shipments VALUES ('VS867867', '2024-03-04 06:42:34.290354', 'Compliant', 'In Process', 'IP76635', 'EP54194', 'Compliant', 'Expired', 'INS17700', 'Pending', 'Intact', 'High', 'Compromised', 'Good', 'Broken', 'SEAL98297', 'Suspected', 'Standard', 'Upright', '');
INSERT INTO shipments VALUES ('VS532562', '2024-07-31 01:21:17.408893', 'Deviation', 'Pending', 'IP21828', 'EP64636', 'Under Review', 'Active', 'INS48037', 'Failed', 'Compromised', 'Medium', 'Maintained', 'Poor', 'Broken', 'SEAL40578', 'Suspected', 'Standard', 'Upright', 'Save sit one may western vote want radio.');
INSERT INTO shipments VALUES ('VS189904', '2024-12-15 09:16:21.234275', 'Deviation', 'Cleared', 'IP57346', 'EP68982', 'Under Review', 'Expired', 'INS64324', 'Failed', 'Under Investigation', 'High', 'Maintained', 'Fair', 'Missing', 'SEAL68199', 'None Detected', 'Urgent', 'Horizontal', '');
INSERT INTO shipments VALUES ('VS419378', '2024-06-19 04:16:44.181569', 'Deviation', 'Cleared', 'IP25775', 'EP14599', 'Compliant', 'Active', 'INS33868', 'Pending', 'Intact', 'Low', 'Unknown', 'Poor', 'Broken', 'SEAL58494', 'None Detected', 'Urgent', 'Horizontal', 'Computer accept difficult finally push force.');
INSERT INTO shipments VALUES ('VS648943', '2024-10-24 00:34:32.356077', 'Compliant', 'In Process', 'IP85477', 'EP43115', 'Under Review', 'Active', 'INS21825', 'Passed', 'Under Investigation', 'Low', 'Maintained', 'Excellent', 'Broken', 'SEAL76544', 'Confirmed', 'Special Care', 'Horizontal', '');
INSERT INTO shipments VALUES ('VS566335', '2024-11-03 13:47:24.36104', 'Deviation', 'Pending', 'IP93556', 'EP27462', 'Under Review', 'Active', 'INS20182', 'Passed', 'Compromised', 'Low', 'Compromised', 'Excellent', 'Missing', 'SEAL77327', 'Suspected', 'Urgent', 'Upright', '');
INSERT INTO shipments VALUES ('VS371165', '2024-08-13 20:00:04.243865', 'Under Review', 'In Process', 'IP53885', 'EP77534', 'Under Review', 'Pending', 'INS13677', 'Passed', 'Under Investigation', 'Medium', 'Maintained', 'Fair', 'Intact', 'SEAL34353', 'Confirmed', 'Standard', 'Horizontal', 'Wait question me Republican Republican majority.');
INSERT INTO shipments VALUES ('VS357223', '2024-06-18 08:34:42.299633', 'Under Review', 'In Process', 'IP34793', 'EP67135', 'Non-Compliant', 'Active', 'INS19570', 'Passed', 'Intact', 'Low', 'Maintained', 'Poor', 'Missing', 'SEAL51652', 'Confirmed', 'Urgent', 'Upright', '');
INSERT INTO shipments VALUES ('VS885146', '2024-09-06 10:26:55.189931', 'Under Review', 'Cleared', 'IP54705', 'EP90469', 'Compliant', 'Pending', 'INS69467', 'Passed', 'Intact', 'High', 'Maintained', 'Poor', 'Broken', 'SEAL78043', 'Confirmed', 'Urgent', 'Not Specified', 'Whether building detail condition buy threat.');
INSERT INTO transportinfo VALUES ('V9399', 'Cargo Aircraft', -79.2, 42, 150.00, 4238.00, '2025-02-19 10:32:08', 'Port Robertville', 'Brianside', 'Jeffreychester', 'Active', 9.654196, 159.074756, 2440.4, 5, '2025-02-19 08:17:08', 'Rail', 'Mayo, Morgan and Castaneda', 'GDP', 'VS315562', 'C71217');
INSERT INTO transportinfo VALUES ('V1623', 'Reefer Container', -75.6, 25, 8144.00, 4398.00, '2025-02-21 09:32:08', 'Lake Janice', 'Karashire', 'Port Alexisview', 'Limited', -85.342051, 130.447381, 3812.5, 30, '2025-02-19 08:17:08', 'Sea', 'Oneal PLC', 'ISO 9001', 'VS274311', 'C60389');
INSERT INTO transportinfo VALUES ('V6997', 'Refrigerated Truck', -64.6, 7, 5702.00, 2586.00, '2025-02-21 19:32:08', 'Lake Colleenbury', 'Bradmouth', 'North Robert', 'Limited', -16.298339, 148.715953, 442.8, 30, '2025-02-19 08:24:08', 'Rail', 'Noble Ltd', 'CEIV Pharma', 'VS415545', 'C73675');
INSERT INTO transportinfo VALUES ('V5170', 'Cargo Aircraft', -84.5, 87, 6926.00, 1254.00, '2025-02-19 20:32:08', 'North Amber', 'Josephport', 'Hannahton', 'Lost', -48.625598, 6.174154, 9908.6, 5, '2025-02-19 08:09:08', 'Sea', 'Anderson-Carter', 'GDP', 'VS769208', 'C46281');
INSERT INTO transportinfo VALUES ('V4321', 'Refrigerated Truck', -69.1, 66, 5924.00, 4353.00, '2025-02-22 03:32:08', 'West Kenneth', 'Williamsbury', 'Jackfurt', 'Active', 68.533949, 118.349586, 4924.6, 15, '2025-02-19 08:21:08', 'Road', 'White Group', 'GDP', 'VS672805', 'C30691');
INSERT INTO transportinfo VALUES ('V6475', 'Reefer Container', -76.1, 7, 4078.00, 2454.00, '2025-02-22 00:32:08', 'Smithmouth', 'Elizabethmouth', 'Ericburgh', 'Limited', -78.593621, 58.266119, 1041.5, 10, '2025-02-19 08:04:08', 'Rail', 'Nelson-Hayes', 'ISO 9001', 'VS199484', 'C13246');
INSERT INTO transportinfo VALUES ('V3694', 'Reefer Container', -62.4, 113, 693.00, 3285.00, '2025-02-21 20:32:08', 'Joannaland', 'East Patriciaberg', 'Colleenstad', 'Active', -35.921745, -87.734551, 899.2, 30, '2025-02-19 08:21:08', 'Sea', 'Randolph and Sons', 'CEIV Pharma', 'VS507739', 'C66183');
INSERT INTO transportinfo VALUES ('V3397', 'Refrigerated Truck', -81.2, 213, 1372.00, 4911.00, '2025-02-21 04:32:08', 'Lake Joshua', 'South Stevenhaven', 'Paulview', 'Active', 68.566429, -172.434929, 6508.5, 5, '2025-02-19 08:12:08', 'Air', 'Sanders-Lopez', 'ISO 9001', 'VS280120', 'C13653');
INSERT INTO transportinfo VALUES ('V6249', 'Refrigerated Truck', -75.3, 16, 8964.00, 3026.00, '2025-02-21 09:32:08', 'Erikaton', 'South Andrea', 'North Lisa', 'Active', -29.398629, -101.468462, 6918.8, 15, '2025-02-19 08:22:08', 'Sea', 'Mitchell-Alvarez', 'CEIV Pharma', 'VS273096', 'C78503');
INSERT INTO transportinfo VALUES ('V4629', 'Refrigerated Truck', -64.9, 100, 2100.00, 4980.00, '2025-02-21 01:32:08', 'Smithshire', 'Josechester', 'East Benjamin', 'Limited', -83.463893, -146.330879, 8602.4, 10, '2025-02-19 08:11:08', 'Sea', 'Anderson, Fields and Tucker', 'GDP', 'VS141866', 'C20425');
INSERT INTO transportinfo VALUES ('V9771', 'Cargo Aircraft', -80.6, 54, 4269.00, 1643.00, '2025-02-20 02:32:08', 'North Nancyberg', 'New Nicole', 'Port Jeffreybury', 'Active', -55.213747, -107.511536, 8527.4, 30, '2025-02-19 08:09:08', 'Road', 'Christian PLC', 'GDP', 'VS494681', 'C66720');
INSERT INTO transportinfo VALUES ('V9028', 'Reefer Container', -81.9, 2, 7053.00, 2825.00, '2025-02-19 19:32:08', 'North David', 'Michellebury', 'Lake George', 'Lost', -76.714451, -81.865964, 4099.7, 30, '2025-02-19 08:16:08', 'Sea', 'Jones-Dougherty', 'ISO 9001', 'VS459612', 'C87438');
INSERT INTO transportinfo VALUES ('V2374', 'Refrigerated Truck', -77.1, 47, 9451.00, 1892.00, '2025-02-22 04:32:08', 'Brownmouth', 'Youngstad', 'South Joshua', 'Lost', 55.055241, 33.772414, 7442.4, 10, '2025-02-19 08:25:08', 'Sea', 'Zimmerman-Andrews', 'CEIV Pharma', 'VS219567', 'C63546');
INSERT INTO transportinfo VALUES ('V4557', 'Refrigerated Truck', -74.6, 5, 1411.00, 4755.00, '2025-02-21 06:32:08', 'Shaneside', 'Randyview', 'Martinezmouth', 'Lost', -70.056247, -43.329168, 4730.7, 5, '2025-02-19 08:31:08', 'Road', 'Mcgee, Horne and Lewis', 'CEIV Pharma', 'VS271172', 'C34824');
INSERT INTO transportinfo VALUES ('V3625', 'Reefer Container', -68.7, 21, 3660.00, 4209.00, '2025-02-22 02:32:08', 'East Shawnton', 'Michaelmouth', 'Chrisbury', 'Lost', -73.860688, -140.088533, 4104.7, 5, '2025-02-19 08:10:08', 'Rail', 'Orozco, Foster and Carter', 'ISO 9001', 'VS713942', 'C90449');
INSERT INTO transportinfo VALUES ('V9798', 'Reefer Container', -61.9, 22, 9556.00, 632.00, '2025-02-22 04:32:08', 'Hensleyshire', 'New Scottville', 'Gibsonstad', 'Limited', -40.701728, 27.916937, 5572.8, 15, '2025-02-19 08:28:08', 'Sea', 'Duran, Thomas and Dalton', 'ISO 9001', 'VS667942', 'C79730');
INSERT INTO transportinfo VALUES ('V4395', 'Reefer Container', -88.4, 9, 234.00, 2807.00, '2025-02-20 11:32:08', 'Port Lauren', 'Port Tina', 'Pinedafurt', 'Active', -30.392997, -143.539851, 1738.9, 5, '2025-02-19 08:10:08', 'Sea', 'Kramer-Macdonald', 'CEIV Pharma', 'VS527954', 'C30772');
INSERT INTO transportinfo VALUES ('V7329', 'Cargo Aircraft', -69.1, 847, 160.00, 3963.00, '2025-02-20 00:32:08', 'Port Sarahton', 'Garciaberg', 'North Joseberg', 'Active', 49.290269, 145.62549, 2737.6, 5, '2025-02-19 08:22:08', 'Air', 'Murphy Inc', 'CEIV Pharma', 'VS709697', 'C24072');
INSERT INTO transportinfo VALUES ('V4115', 'Refrigerated Truck', -68.2, 113, 4073.00, 2626.00, '2025-02-21 18:32:08', 'South Angelatown', 'North Rebecca', 'East Kayla', 'Limited', 10.088187, 158.333693, 7913.8, 10, '2025-02-19 08:15:08', 'Sea', 'Young, White and Martinez', 'CEIV Pharma', 'VS857390', 'C32478');
INSERT INTO transportinfo VALUES ('V4218', 'Cargo Aircraft', -75, 97, 21.00, 1313.00, '2025-02-21 02:32:08', 'East Michaelberg', 'New Matthewville', 'West Anthonymouth', 'Active', -43.098397, 164.47984, 1485.3, 15, '2025-02-19 08:17:08', 'Rail', 'Martinez, Jones and Beltran', 'CEIV Pharma', 'VS520813', 'C22080');
INSERT INTO transportinfo VALUES ('V2301', 'Cargo Aircraft', -87.8, 2, 1845.00, 2218.00, '2025-02-20 23:32:08', 'Kaylaburgh', 'West Carrie', 'North Mariamouth', 'Limited', 89.045219, -142.380073, 6048.9, 15, '2025-02-19 08:07:08', 'Rail', 'Davis-Thompson', 'CEIV Pharma', 'VS194929', 'C27292');
INSERT INTO transportinfo VALUES ('V8450', 'Cargo Aircraft', -86.8, 116, 8476.00, 4020.00, '2025-02-20 13:32:08', 'Jamieton', 'Martinezfort', 'Lawrencemouth', 'Lost', -11.351791, 133.671634, 5105.5, 15, '2025-02-19 08:06:08', 'Road', 'Rodriguez-Thompson', 'GDP', 'VS637841', 'C76322');
INSERT INTO transportinfo VALUES ('V2439', 'Reefer Container', -75.8, 34, 4224.00, 2091.00, '2025-02-20 22:32:08', 'South Tinaville', 'North James', 'Lisashire', 'Lost', -63.133215, 49.779975, 1863.2, 15, '2025-02-19 08:30:08', 'Sea', 'Greene, Riggs and Jones', 'ISO 9001', 'VS150281', 'C76650');
INSERT INTO transportinfo VALUES ('V4790', 'Reefer Container', -87.2, 22, 3484.00, 3306.00, '2025-02-20 06:32:08', 'Josephville', 'Darrellfort', 'Rothberg', 'Lost', -34.769385, -6.03149, 1136, 15, '2025-02-19 08:02:08', 'Sea', 'Mcdowell LLC', 'CEIV Pharma', 'VS797261', 'C27123');
INSERT INTO transportinfo VALUES ('V2079', 'Refrigerated Truck', -85.7, 722, 5543.00, 3252.00, '2025-02-20 20:32:08', 'West Lucas', 'Lake Kellyhaven', 'New Alexisfort', 'Lost', -87.992143, -137.844324, 4296.3, 10, '2025-02-19 08:22:08', 'Air', 'Cruz-Vasquez', 'ISO 9001', 'VS335970', 'C95421');
INSERT INTO vaccinedetails VALUES (4, 'Viral Vector', 'Moderna', 'B41679', '2024-11-14', '2025-08-31', 23319, 7207, 10, 72070, 'VS947527', 'C68974');
INSERT INTO vaccinedetails VALUES (8, 'mRNA', 'BioNTech', 'B14635', '2024-11-15', '2026-06-15', 83066, 7665, 5, 38325, 'VS337175', 'C10510');
INSERT INTO vaccinedetails VALUES (270, 'mRNA', 'Novavax', 'B54196', '2024-12-03', '2026-05-05', 18656, 2064, 1, 2064, 'VS420480', 'C15997');
INSERT INTO vaccinedetails VALUES (535, 'mRNA', 'AstraZeneca', 'B40151', '2025-01-05', '2026-07-29', 53513, 4458, 5, 22290, 'VS288777', 'C47528');
INSERT INTO vaccinedetails VALUES (147, 'Viral Vector', 'Novavax', 'B63340', '2024-12-29', '2026-10-31', 32223, 2880, 5, 14400, 'VS833956', 'C19890');
INSERT INTO vaccinedetails VALUES (280, 'Viral Vector', 'BioNTech', 'B28093', '2024-12-02', '2026-02-02', 21679, 2322, 1, 2322, 'VS958347', 'C74107');
INSERT INTO vaccinedetails VALUES (158, 'Viral Vector', 'BioNTech', 'B90293', '2025-01-03', '2026-02-17', 62393, 8128, 10, 81280, 'VS271193', 'C22121');
INSERT INTO vaccinedetails VALUES (297, 'Viral Vector', 'Novavax', 'B36636', '2024-10-20', '2026-08-26', 48022, 2787, 10, 27870, 'VS917929', 'C31390');
INSERT INTO vaccinedetails VALUES (298, 'Inactivated', 'BioNTech', 'B64150', '2024-10-05', '2025-10-15', 98300, 264, 1, 264, 'VS549836', 'C49780');
INSERT INTO vaccinedetails VALUES (699, 'Viral Vector', 'Sinovac', 'B11557', '2024-12-09', '2026-11-14', 23587, 3687, 5, 18435, 'VS667321', 'C15477');
INSERT INTO vaccinedetails VALUES (561, 'Viral Vector', 'Novavax', 'B31646', '2024-09-12', '2026-02-09', 32160, 3445, 10, 34450, 'VS965398', 'C37621');
INSERT INTO vaccinedetails VALUES (569, 'Inactivated', 'Novavax', 'B90697', '2024-10-22', '2025-11-13', 62751, 6004, 5, 30020, 'VS623509', 'C56621');
INSERT INTO vaccinedetails VALUES (183, 'mRNA', 'AstraZeneca', 'B97842', '2025-01-08', '2026-01-23', 59715, 5865, 1, 5865, 'VS459612', 'C87438');
INSERT INTO vaccinedetails VALUES (862, 'Inactivated', 'BioNTech', 'B72139', '2024-12-18', '2025-10-28', 76318, 4092, 1, 4092, 'VS764508', 'C91492');
INSERT INTO vaccinedetails VALUES (866, 'mRNA', 'Novavax', 'B77182', '2025-01-10', '2026-02-19', 1051, 6183, 1, 6183, 'VS246704', 'C93510');
INSERT INTO vaccinedetails VALUES (581, 'Protein Subunit', 'Moderna', 'B92118', '2024-12-05', '2025-09-28', 64957, 2346, 5, 11730, 'VS355273', 'C42359');
INSERT INTO vaccinedetails VALUES (59, 'mRNA', 'Novavax', 'B19750', '2024-10-05', '2027-01-27', 13967, 4609, 1, 4609, 'VS641124', 'C43993');
INSERT INTO vaccinedetails VALUES (323, 'Viral Vector', 'AstraZeneca', 'B25056', '2024-11-05', '2026-02-27', 10380, 4139, 1, 4139, 'VS653050', 'C33460');
INSERT INTO vaccinedetails VALUES (199, 'Protein Subunit', 'Sinovac', 'B98029', '2024-11-06', '2026-02-18', 69441, 9450, 5, 47250, 'VS989808', 'C60851');
INSERT INTO vaccinedetails VALUES (207, 'Protein Subunit', 'Moderna', 'B19602', '2024-08-23', '2026-03-26', 90144, 6246, 1, 6246, 'VS477010', 'C16264');
INSERT INTO vaccinedetails VALUES (607, 'Protein Subunit', 'BioNTech', 'B73645', '2024-10-07', '2026-12-13', 98006, 9092, 10, 90920, 'VS905830', 'C51228');
INSERT INTO vaccinedetails VALUES (628, 'Inactivated', 'Moderna', 'B47524', '2024-09-25', '2026-10-13', 76433, 9413, 5, 47065, 'VS631050', 'C53026');
INSERT INTO vaccinedetails VALUES (366, 'Viral Vector', 'AstraZeneca', 'B84182', '2024-11-03', '2026-10-02', 28305, 8676, 10, 86760, 'VS674581', 'C59953');
INSERT INTO vaccinedetails VALUES (773, 'Inactivated', 'BioNTech', 'B54656', '2024-10-22', '2026-07-23', 75931, 3760, 1, 3760, 'VS632691', 'C96872');
INSERT INTO vaccinedetails VALUES (520, 'Protein Subunit', 'Novavax', 'B20614', '2024-12-09', '2026-09-24', 86701, 7642, 1, 7642, 'VS412628', 'C53757');
