CREATE TABLE `equipment`
(`equipmentcode` VARCHAR(1023),
`equipmenttype` VARCHAR(1023),
`equipmentmodel` VARCHAR(1023),
`manufacturer` VARCHAR(1023),
`servicelifeyears` BIGINT,
`equipmentutilizationpercent` DOUBLE,
`reliabilityindex` DOUBLE,
`performanceindex` DOUBLE,
`efficiencyindex` DOUBLE,
`safetyindex` DOUBLE,
`environmentalimpactindex` DOUBLE);
CREATE TABLE `location`
(`locationregistry` BIGINT,
`loceqref` VARCHAR(1023),
`Timestamp` DATETIME,
`stationname` VARCHAR(1023),
`locationtype` VARCHAR(1023),
`latitude` DOUBLE,
`longitude` DOUBLE,
`altitudem` DOUBLE);
CREATE TABLE `powerbattery`
(`powerbattregistry` BIGINT,
`pwrbatteqref` VARCHAR(1023),
`powerstatus` VARCHAR(1023),
`powersource` VARCHAR(1023),
`chargingstatus` VARCHAR(1023),
`powerconsumptionw` DOUBLE,
`energyefficiencypercent` DOUBLE,
`batterystatus` VARCHAR(1023));
CREATE TABLE `lightingandsafety`
(`lightregistry` BIGINT,
`lighteqref` VARCHAR(1023),
`lightingstatus` VARCHAR(1023),
`lightingintensitypercent` DOUBLE,
`externallightstatus` VARCHAR(1023),
`emergencylightstatus` VARCHAR(1023),
`emergencystopstatus` VARCHAR(1023),
`alarmstatus` VARCHAR(1023),
`safetysystemstatus` VARCHAR(1023),
`lifesupportstatus` VARCHAR(1023),
`oxygensupplystatus` VARCHAR(1023),
`medicalequipmentstatus` VARCHAR(1023),
`wastemanagementstatus` VARCHAR(1023),
`watersupplystatus` VARCHAR(1023),
`safetysensors` VARCHAR(1023));
CREATE TABLE `scientific`
(`sciregistry` BIGINT,
`scieqref` VARCHAR(1023),
`scientificequipmentstatus` VARCHAR(1023),
`dataloggingstatus` VARCHAR(1023),
`sensorstatus` VARCHAR(1023),
`calibrationstatus` VARCHAR(1023),
`measurementaccuracypercent` DOUBLE);
CREATE TABLE `waterandwaste`
(`waterregistry` BIGINT,
`watereqref` VARCHAR(1023),
`waterlevelpercent` DOUBLE,
`waterpressurekpa` DOUBLE,
`watertemperaturec` DOUBLE,
`waterflowlpm` DOUBLE,
`waterqualityindex` BIGINT,
`wastetanklevelpercent` DOUBLE);
CREATE TABLE `communication`
(`commregistry` BIGINT,
`commeqref` VARCHAR(1023),
`commlocref` BIGINT,
`radiofrequencymhz` DOUBLE,
`antennastatus` VARCHAR(1023),
`bluetoothstatus` VARCHAR(1023),
`commopmaintref` BIGINT,
`signalmetrics` VARCHAR(1023));
CREATE TABLE `engineandfluids`
(`engineregistry` BIGINT,
`engfluidseqref` VARCHAR(1023),
`engfluidspbref` BIGINT,
`enginespeedrpm` BIGINT,
`engineloadpercent` DOUBLE,
`enginetemperaturec` DOUBLE,
`enginehours` DOUBLE,
`engfluidsopmaintref` BIGINT,
`fluidmetrics` VARCHAR(1023));
CREATE TABLE `operationmaintenance`
(`opmaintregistry` BIGINT,
`opmainteqref` VARCHAR(1023),
`opmaintlocref` BIGINT,
`operationhours` DOUBLE,
`maintenancecyclehours` DOUBLE,
`lastmaintenancedate` DATE,
`nextmaintenancedue` DATE,
`operationalstatus` VARCHAR(1023),
`crewcertificationstatus` VARCHAR(1023),
`inspectionstatus` VARCHAR(1023),
`compliancestatus` VARCHAR(1023),
`documentationstatus` VARCHAR(1023),
`opmaintcommref` BIGINT,
`costmetrics` VARCHAR(1023));
CREATE TABLE `cabinenvironment`
(`cabinregistry` BIGINT,
`cabineqref` VARCHAR(1023),
`cabinlocref` BIGINT,
`emergencybeaconstatus` VARCHAR(1023),
`ventilationstatus` VARCHAR(1023),
`ventilationspeedpercent` DOUBLE,
`heaterstatus` VARCHAR(1023),
`heatertemperaturec` DOUBLE,
`defrosterstatus` VARCHAR(1023),
`windowstatus` VARCHAR(1023),
`doorstatus` VARCHAR(1023),
`hatchstatus` VARCHAR(1023),
`cabincommref` BIGINT,
`cabinclimate` VARCHAR(1023));
CREATE TABLE `transmission`
(`transregistry` BIGINT,
`transeqref` VARCHAR(1023),
`transengfluidsref` BIGINT,
`transmissiontemperaturec` DOUBLE,
`transmissionpressurekpa` DOUBLE,
`transmissiongear` BIGINT,
`differentialtemperaturec` DOUBLE,
`axletemperaturec` DOUBLE,
`transopmaintref` BIGINT);
CREATE TABLE `thermalsolarwindandgrid`
(`thermalregistry` BIGINT,
`thermaleqref` VARCHAR(1023),
`thermalcommref` BIGINT,
`thermalimagingstatus` VARCHAR(1023),
`insulationstatus` VARCHAR(1023),
`heatlossratekwh` DOUBLE,
`solarpanelstatus` VARCHAR(1023),
`windturbinestatus` VARCHAR(1023),
`powergridstatus` VARCHAR(1023),
`powerqualityindex` DOUBLE,
`backuppowerstatus` VARCHAR(1023),
`fuelcellstatus` VARCHAR(1023),
`fuelcelloutputw` DOUBLE,
`fuelcellefficiencypercent` DOUBLE,
`hydrogenlevelpercent` DOUBLE,
`oxygenlevelpercent` DOUBLE,
`thermalpowerref` BIGINT,
`renewablemetrics` VARCHAR(1023));
CREATE TABLE `weatherandstructure`
(`weatherregistry` BIGINT,
`weatherlocref` BIGINT,
`externaltemperaturec` DOUBLE,
`windspeedms` DOUBLE,
`winddirectiondegrees` DOUBLE,
`barometricpressurehpa` DOUBLE,
`solarradiationwm2` DOUBLE,
`snowdepthcm` BIGINT,
`icethicknesscm` DOUBLE,
`visibilitykm` DOUBLE,
`precipitationtype` VARCHAR(1023),
`precipitationratemmh` DOUBLE,
`snowloadkgm2` BIGINT,
`structuralloadpercent` DOUBLE,
`structuralintegritystatus` VARCHAR(1023),
`vibrationlevelmms2` DOUBLE,
`noiseleveldb` DOUBLE,
`weatheropmaintref` BIGINT);
CREATE TABLE `chassisandvehicle`
(`chassisregistry` BIGINT,
`chassiseqref` VARCHAR(1023),
`chassistransref` BIGINT,
`brakepadwearpercent` DOUBLE,
`brakefluidlevelpercent` DOUBLE,
`brakepressurekpa` BIGINT,
`tracktensionkn` DOUBLE,
`trackwearpercent` DOUBLE,
`suspensionheightmm` DOUBLE,
`vehiclespeedkmh` DOUBLE,
`vehicleloadkg` DOUBLE,
`vehicleangledegrees` DOUBLE,
`vehicleheadingdegrees` DOUBLE,
`chassisengref` BIGINT,
`tiremetrics` VARCHAR(1023));
INSERT INTO equipment VALUES ('PE518914', 'Communication', 'Model-865', 'Larsen Inc', 18, 49.00, 67.100, 10.50, 86.5, 87.400, 15.7);
INSERT INTO equipment VALUES ('PE287406', 'Generator', 'Model-581', 'Day, Hall and Roberts', 1, 54.00, 68.800, 97.60, 80.1, 50.600, 93.6);
INSERT INTO equipment VALUES ('PE350365', 'Scientific', 'Model-605', 'Grant-Kennedy', 4, 55.00, 56.000, 91.10, 46.4, 65.000, 25.6);
INSERT INTO equipment VALUES ('PE369481', 'Vehicle', 'Model-575', 'Jenkins-Brown', 6, 89.00, 27.000, 95.70, 61.5, 0.600, 60.2);
INSERT INTO equipment VALUES ('PE118820', 'Safety', 'Model-560', 'Lopez, Cook and Martin', 10, 98.00, 94.900, 89.80, 34.5, 8.500, 43.1);
INSERT INTO equipment VALUES ('PE146206', 'Scientific', 'Model-679', 'Schaefer, Hall and King', 19, 80.00, 73.400, 67.10, 77.5, 91.300, 13.3);
INSERT INTO equipment VALUES ('PE184344', 'Communication', 'Model-136', 'Mason, Harrison and Smith', 14, 0.00, 21.800, 32.70, 61.1, 61.900, 73.9);
INSERT INTO equipment VALUES ('PE312921', 'Communication', 'Model-775', 'Cruz-Shaw', 17, 94.00, 94.300, 9.60, 23.4, 77.700, 60.4);
INSERT INTO equipment VALUES ('PE914541', 'Generator', 'Model-562', 'Klein-Pierce', 1, 4.00, 6.200, 29.50, 79.9, 78.700, 53.4);
INSERT INTO equipment VALUES ('PE316033', 'Generator', 'Model-424', 'Trujillo, Compton and Fernandez', 13, 23.00, 86.400, 6.40, 35.5, 65.700, 45.4);
INSERT INTO equipment VALUES ('PE431726', 'Vehicle', 'Model-561', 'Reed-Reed', 19, 65.00, 98.500, 12.70, 68.6, 87.700, 16.3);
INSERT INTO equipment VALUES ('PE543051', 'Scientific', 'Model-368', 'Williams-Price', 17, 63.00, 66.200, 95.00, 22.3, 29.800, 62);
INSERT INTO equipment VALUES ('PE470955', 'Safety', 'Model-690', 'Christensen, Hill and Harrison', 7, 17.00, 51.300, 39.80, 32.5, 50.900, 25.3);
INSERT INTO location VALUES (389, 'PE518914', '2024-04-15 08:26:53.016768', 'Station-19', 'Arctic', 73.006728, 7.036191, 2501.00);
INSERT INTO location VALUES (169, 'PE287406', '2024-08-29 16:59:48.979478', 'Station-13', 'Antarctic', -89.799848, -84.898093, 3615.60);
INSERT INTO location VALUES (480, 'PE350365', '2024-10-09 02:47:40.032763', 'Station-18', 'Antarctic', -77.784657, 84.172426, 1939.50);
INSERT INTO location VALUES (336, 'PE369481', '2024-04-04 20:41:55.007701', 'Station-4', 'Antarctic', -80.672324, 65.034299, 3411.20);
INSERT INTO location VALUES (178, 'PE118820', '2024-02-20 12:53:30.980445', 'Station-10', 'Arctic', 65.165607, -25.922164, 380.80);
INSERT INTO location VALUES (628, 'PE146206', '2025-01-01 21:11:19.057082', 'Station-15', 'Arctic', 73.289637, -168.757881, 3496.30);
INSERT INTO location VALUES (181, 'PE184344', '2024-03-07 14:01:31.981352', 'Station-3', 'Arctic', 81.571202, -78.040305, 2028.30);
INSERT INTO location VALUES (247, 'PE312921', '2024-12-07 23:20:12.991266', 'Station-17', 'Antarctic', -70.416991, -112.787668, 3378.10);
INSERT INTO location VALUES (858, 'PE914541', '2024-09-28 15:31:48.093799', 'Station-9', 'Antarctic', -68.031025, 16.165801, 1581.90);
INSERT INTO location VALUES (283, 'PE316033', '2024-11-28 15:22:32.996706', 'Station-13', 'Antarctic', -80.615984, -145.584052, 153.90);
INSERT INTO location VALUES (989, 'PE431726', '2024-12-08 12:05:36.116586', 'Station-19', 'Arctic', 70.381521, 152.522953, 607.90);
INSERT INTO location VALUES (447, 'PE543051', '2025-01-03 14:49:04.026817', 'Station-5', 'Arctic', 66.860329, -75.510605, 1824.40);
INSERT INTO location VALUES (320, 'PE470955', '2024-05-07 05:06:53.004205', 'Station-18', 'Antarctic', -60.668585, -134.945475, 3204.60);
INSERT INTO powerbattery VALUES (447, 'PE543051', 'Sleep', 'Solar', 'Error', 3581.2000, 85.100, '{"cycles": 255, "current_a": 25.270, "voltage_v": 32.10, "level_percent": 97.00, "temperature_c": 9.2, "health_percent": 61.0}');
INSERT INTO powerbattery VALUES (389, 'PE518914', 'On', 'Battery', 'Charging', 3976.6000, 80.700, '{"cycles": 512, "current_a": 23.170, "voltage_v": 10.60, "level_percent": 21.00, "temperature_c": 19.7, "health_percent": 69.0}');
INSERT INTO powerbattery VALUES (336, 'PE369481', 'Sleep', 'Wind', 'Error', 4526.2000, 90.800, '{"cycles": 50, "current_a": 28.650, "voltage_v": 36.70, "level_percent": 51.00, "temperature_c": -6.7, "health_percent": 82.0}');
INSERT INTO powerbattery VALUES (178, 'PE118820', 'On', 'Battery', 'Not Charging', 737.6000, 90.300, '{"cycles": 474, "current_a": 4.720, "voltage_v": 31.80, "level_percent": 69.00, "temperature_c": 31.1, "health_percent": 89.0}');
INSERT INTO powerbattery VALUES (181, 'PE184344', 'Sleep', 'Hybrid', 'Not Charging', 2329.6000, 91.600, '{"cycles": 744, "current_a": 29.760, "voltage_v": 25.60, "level_percent": 26.00, "temperature_c": 13.9, "health_percent": 95.0}');
INSERT INTO powerbattery VALUES (247, 'PE312921', 'Off', 'Battery', 'Charging', 3707.6000, 81.200, '{"cycles": 263, "current_a": 2.980, "voltage_v": 33.80, "level_percent": 94.00, "temperature_c": -3.5, "health_percent": 88.0}');
INSERT INTO powerbattery VALUES (283, 'PE316033', 'Sleep', 'Solar', 'Not Charging', 3956.2000, 94.900, '{"cycles": 66, "current_a": 26.890, "voltage_v": 12.10, "level_percent": 75.00, "temperature_c": 38.3, "health_percent": 68.0}');
INSERT INTO powerbattery VALUES (628, 'PE146206', 'Charging', 'Hybrid', 'Full', 1500.6000, 87.700, '{"cycles": 862, "current_a": 8.560, "voltage_v": 4.30, "level_percent": 25.00, "temperature_c": 3.1, "health_percent": 70.0}');
INSERT INTO powerbattery VALUES (320, 'PE470955', 'Off', 'Diesel', 'Not Charging', 4681.7000, 72.900, '{"cycles": 77, "current_a": 3.170, "voltage_v": 36.60, "level_percent": 75.00, "temperature_c": 4.1, "health_percent": 98.0}');
INSERT INTO powerbattery VALUES (858, 'PE914541', 'On', 'Wind', 'Error', 3871.3000, 91.300, '{"cycles": 896, "current_a": 14.540, "voltage_v": 28.40, "level_percent": 80.00, "temperature_c": 2.6, "health_percent": 61.0}');
INSERT INTO powerbattery VALUES (989, 'PE431726', 'On', 'Solar', 'Error', 2730.5000, 78.300, '{"cycles": 582, "current_a": 39.130, "voltage_v": 23.50, "level_percent": 35.00, "temperature_c": 13.4, "health_percent": 71.0}');
INSERT INTO powerbattery VALUES (169, 'PE287406', 'On', 'Wind', 'Full', 955.6000, 88.700, '{"cycles": 860, "current_a": 14.060, "voltage_v": 5.20, "level_percent": 47.00, "temperature_c": 25.3, "health_percent": 79.0}');
INSERT INTO powerbattery VALUES (480, 'PE350365', 'Off', 'Diesel', 'Not Charging', 4183.5000, 73.200, '{"cycles": 662, "current_a": 39.650, "voltage_v": 15.80, "level_percent": 78.00, "temperature_c": -30.5, "health_percent": 92.0}');
INSERT INTO lightingandsafety VALUES (178, 'PE118820', 'On', 25.69, 'On', 'On', 'Activated', 'Warning', 'Fault', 'Normal', 'Warning', 'Warning', 'Warning', 'Normal', '{"co_detection": "Alert", "gas_detection": "Fault", "fire_detection": "Fault", "smoke_detection": "Normal"}');
INSERT INTO lightingandsafety VALUES (181, 'PE184344', 'Off', 29.10, 'Auto', 'On', 'Reset', 'Critical', 'Active', 'Critical', 'Warning', 'Critical', 'Normal', 'Critical', '{"co_detection": "Fault", "gas_detection": "Alert", "fire_detection": "Alert", "smoke_detection": "Fault"}');
INSERT INTO lightingandsafety VALUES (247, 'PE312921', 'On', 92.30, 'Off', 'Off', 'Reset', 'Normal', 'Standby', 'Warning', 'Warning', 'Normal', 'Normal', 'Critical', '{"co_detection": "Normal", "gas_detection": "Alert", "fire_detection": "Alert", "smoke_detection": "Fault"}');
INSERT INTO lightingandsafety VALUES (283, 'PE316033', 'Off', 0.76, 'Auto', 'Off', 'Reset', 'Critical', 'Standby', 'Warning', 'Critical', 'Warning', 'Normal', 'Warning', '{"co_detection": "Fault", "gas_detection": "Normal", "fire_detection": "Fault", "smoke_detection": "Fault"}');
INSERT INTO lightingandsafety VALUES (628, 'PE146206', 'Auto', 63.68, 'Off', 'Testing', 'Ready', 'Normal', 'Standby', 'Critical', 'Normal', 'Normal', 'Normal', 'Warning', '{"co_detection": "Fault", "gas_detection": "Normal", "fire_detection": "Normal", "smoke_detection": "Normal"}');
INSERT INTO lightingandsafety VALUES (447, 'PE543051', 'Auto', 24.69, 'Auto', 'On', 'Reset', 'Normal', 'Active', 'Normal', 'Warning', 'Warning', 'Warning', 'Critical', '{"co_detection": "Alert", "gas_detection": "Fault", "fire_detection": "Alert", "smoke_detection": "Fault"}');
INSERT INTO lightingandsafety VALUES (320, 'PE470955', 'Off', 19.45, 'On', 'Testing', 'Reset', 'Normal', 'Fault', 'Normal', 'Critical', 'Warning', 'Critical', 'Critical', '{"co_detection": "Alert", "gas_detection": "Fault", "fire_detection": "Alert", "smoke_detection": "Fault"}');
INSERT INTO lightingandsafety VALUES (480, 'PE350365', 'Auto', 96.63, 'Auto', 'Testing', 'Activated', 'Critical', 'Standby', 'Critical', 'Normal', 'Critical', 'Warning', 'Critical', '{"co_detection": "Alert", "gas_detection": "Normal", "fire_detection": "Normal", "smoke_detection": "Normal"}');
INSERT INTO lightingandsafety VALUES (858, 'PE914541', 'Auto', 88.10, 'Auto', 'Testing', 'Activated', 'Normal', 'Standby', 'Critical', 'Normal', 'Critical', 'Warning', 'Warning', '{"co_detection": "Fault", "gas_detection": "Fault", "fire_detection": "Fault", "smoke_detection": "Fault"}');
INSERT INTO lightingandsafety VALUES (389, 'PE518914', 'Off', 27.78, 'On', 'On', 'Reset', 'Critical', 'Fault', 'Warning', 'Normal', 'Critical', 'Warning', 'Normal', '{"co_detection": "Normal", "gas_detection": "Fault", "fire_detection": "Alert", "smoke_detection": "Fault"}');
INSERT INTO lightingandsafety VALUES (989, 'PE431726', 'Auto', 79.25, 'Off', 'Testing', 'Ready', 'Normal', 'Fault', 'Critical', 'Normal', 'Normal', 'Normal', 'Warning', '{"co_detection": "Normal", "gas_detection": "Normal", "fire_detection": "Fault", "smoke_detection": "Fault"}');
INSERT INTO lightingandsafety VALUES (169, 'PE287406', 'On', 50.14, 'Auto', 'Off', 'Ready', 'Warning', 'Fault', 'Normal', 'Critical', 'Warning', 'Normal', 'Critical', '{"co_detection": "Normal", "gas_detection": "Fault", "fire_detection": "Alert", "smoke_detection": "Fault"}');
INSERT INTO scientific VALUES (389, 'PE518914', 'Fault', 'Paused', 'Normal', 'Due', 0.64);
INSERT INTO scientific VALUES (169, 'PE287406', 'Fault', 'Paused', 'Warning', 'Valid', 11.04);
INSERT INTO scientific VALUES (480, 'PE350365', 'Operating', 'Paused', 'Normal', 'Expired', 38.8);
INSERT INTO scientific VALUES (178, 'PE118820', 'Fault', 'Paused', 'Error', 'Expired', 20.22);
INSERT INTO scientific VALUES (628, 'PE146206', 'Fault', 'Paused', 'Normal', 'Due', 92.8);
INSERT INTO scientific VALUES (181, 'PE184344', 'Operating', 'Error', 'Warning', 'Due', 88.63);
INSERT INTO scientific VALUES (247, 'PE312921', 'Fault', 'Active', 'Normal', 'Due', 43.13);
INSERT INTO scientific VALUES (858, 'PE914541', 'Operating', 'Error', 'Normal', 'Expired', 78.41);
INSERT INTO scientific VALUES (283, 'PE316033', 'Fault', 'Active', 'Warning', 'Expired', 30.88);
INSERT INTO scientific VALUES (989, 'PE431726', 'Operating', 'Paused', 'Error', 'Expired', 64.65);
INSERT INTO scientific VALUES (447, 'PE543051', 'Standby', 'Error', 'Normal', 'Expired', 29.47);
INSERT INTO scientific VALUES (320, 'PE470955', 'Fault', 'Active', 'Warning', 'Due', 14.98);
INSERT INTO waterandwaste VALUES (389, 'PE518914', 5.95, 408.56, 92.66, 793.362, 372, 62.66);
INSERT INTO waterandwaste VALUES (169, 'PE287406', 58.98, 249.98, 37.26, 408.328, 646, 14.73);
INSERT INTO waterandwaste VALUES (480, 'PE350365', 37.23, 875.85, -0.83, 881.649, 710, 64.86);
INSERT INTO waterandwaste VALUES (178, 'PE118820', 81.11, 511.79, 35.92, 7.923, 785, 72.59);
INSERT INTO waterandwaste VALUES (628, 'PE146206', 97.48, 137.26, 85.8, 416.197, 648, 12.23);
INSERT INTO waterandwaste VALUES (181, 'PE184344', 71.55, 683.54, 32.24, 527.431, 527, 36.63);
INSERT INTO waterandwaste VALUES (247, 'PE312921', 10.29, 932.54, 86.69, 269.698, 541, 83.59);
INSERT INTO waterandwaste VALUES (858, 'PE914541', 72.41, 971.69, 64.86, 373.690, 945, 32.75);
INSERT INTO waterandwaste VALUES (283, 'PE316033', 51.75, 634.61, 90.22, 408.655, 446, 63.04);
INSERT INTO waterandwaste VALUES (989, 'PE431726', 15.07, 68.44, 92.99, 192.441, 981, 83.34);
INSERT INTO waterandwaste VALUES (447, 'PE543051', 41.74, 976.68, 25.52, 993.915, 514, 20.17);
INSERT INTO waterandwaste VALUES (320, 'PE470955', 82.14, 886.63, 31.14, 905.383, 880, 59.51);
INSERT INTO communication VALUES (169, 'PE287406', 169, 367, 'Warning', 'Pairing', NULL, '{"latency_ms": 387.10, "gps_strength": "Weak", "data_rate_kbps": 952.4, "satellite_status": "Limited", "wifi_strength_dbm": -60.2, "radio_strength_dbm": -110.800}');
INSERT INTO communication VALUES (389, 'PE518914', 389, 597.5, 'Error', 'Error', NULL, '{"latency_ms": 415.30, "gps_strength": "Weak", "data_rate_kbps": 459.2, "satellite_status": "Disconnected", "wifi_strength_dbm": -80.2, "radio_strength_dbm": -88.200}');
INSERT INTO communication VALUES (336, 'PE369481', 336, 205.6, 'Warning', 'Error', NULL, '{"latency_ms": 884.20, "gps_strength": "Strong", "data_rate_kbps": 180.3, "satellite_status": "Disconnected", "wifi_strength_dbm": -56, "radio_strength_dbm": -105.400}');
INSERT INTO communication VALUES (178, 'PE118820', 178, 870.6, 'Normal', 'Off', NULL, '{"latency_ms": 142.50, "gps_strength": "Weak", "data_rate_kbps": 278.1, "satellite_status": "Disconnected", "wifi_strength_dbm": -85, "radio_strength_dbm": -84.000}');
INSERT INTO communication VALUES (181, 'PE184344', 181, 573.7, 'Error', 'Off', NULL, '{"latency_ms": 1881.90, "gps_strength": "Medium", "data_rate_kbps": 645.9, "satellite_status": "Connected", "wifi_strength_dbm": -46.7, "radio_strength_dbm": -117.100}');
INSERT INTO communication VALUES (247, 'PE312921', 247, 110, 'Normal', 'On', NULL, '{"latency_ms": 275.00, "gps_strength": "Weak", "data_rate_kbps": 893.1, "satellite_status": "Disconnected", "wifi_strength_dbm": -58.9, "radio_strength_dbm": -108.000}');
INSERT INTO communication VALUES (628, 'PE146206', 628, 116, 'Error', 'Pairing', NULL, '{"latency_ms": 1546.50, "gps_strength": "Medium", "data_rate_kbps": 23.1, "satellite_status": "Limited", "wifi_strength_dbm": -85, "radio_strength_dbm": -83.200}');
INSERT INTO communication VALUES (283, 'PE316033', 283, 376, 'Normal', 'Off', NULL, '{"latency_ms": 828.80, "gps_strength": "Medium", "data_rate_kbps": 437.1, "satellite_status": "Disconnected", "wifi_strength_dbm": -32.7, "radio_strength_dbm": -104.700}');
INSERT INTO communication VALUES (320, 'PE470955', 320, 408.3, 'Error', 'Off', NULL, '{"latency_ms": 1503.30, "gps_strength": "Strong", "data_rate_kbps": 331.7, "satellite_status": "Disconnected", "wifi_strength_dbm": -50.9, "radio_strength_dbm": -64.000}');
INSERT INTO communication VALUES (858, 'PE914541', 858, 495.3, 'Warning', 'Off', NULL, '{"latency_ms": 1786.70, "gps_strength": "Medium", "data_rate_kbps": 288, "satellite_status": "Connected", "wifi_strength_dbm": -76.7, "radio_strength_dbm": -94.900}');
INSERT INTO communication VALUES (989, 'PE431726', 989, 250.6, 'Error', 'On', NULL, '{"latency_ms": 1354.70, "gps_strength": "Medium", "data_rate_kbps": 579.8, "satellite_status": "Connected", "wifi_strength_dbm": -80.6, "radio_strength_dbm": -84.500}');
INSERT INTO communication VALUES (447, 'PE543051', 447, 294.8, 'Normal', 'Pairing', NULL, '{"latency_ms": 750.90, "gps_strength": "Medium", "data_rate_kbps": 491.8, "satellite_status": "Limited", "wifi_strength_dbm": -59.8, "radio_strength_dbm": -81.600}');
INSERT INTO communication VALUES (480, 'PE350365', 480, 721.7, 'Warning', 'Off', NULL, '{"latency_ms": 1347.50, "gps_strength": "Strong", "data_rate_kbps": 133.7, "satellite_status": "Disconnected", "wifi_strength_dbm": -47.6, "radio_strength_dbm": -102.500}');
INSERT INTO engineandfluids VALUES (169, 'PE287406', 169, 402, 23.17, -3.26, 101.1, 169, '{"oil": {"pressure_kpa": 1583, "level_percent": 69.63, "temperature_c": 58.48}, "fuel": {"pressure_kpa": 864, "level_percent": 94, "temperature_c": 23.2, "consumption_lh": 20.32}, "coolant": {"pressure_kpa": 1103, "level_percent": 9.74, "temperature_c": 65.78}, "hydraulic": {"pressure_kpa": 654.431, "level_percent": 5.43, "temperature_c": 74.28}}');
INSERT INTO engineandfluids VALUES (389, 'PE518914', 389, 7509, 35.59, 98.46, 4099.2, 389, '{"oil": {"pressure_kpa": 4346, "level_percent": 72.02, "temperature_c": 61.9}, "fuel": {"pressure_kpa": 600, "level_percent": 40, "temperature_c": 4.23, "consumption_lh": 14.46}, "coolant": {"pressure_kpa": 535, "level_percent": 48.37, "temperature_c": 46.38}, "hydraulic": {"pressure_kpa": 13.723, "level_percent": 85.70, "temperature_c": 117.76}}');
INSERT INTO engineandfluids VALUES (480, 'PE350365', 480, 6557, 51.21, 126.16, 4538.3, 480, '{"oil": {"pressure_kpa": 1323, "level_percent": 61.34, "temperature_c": 66.5}, "fuel": {"pressure_kpa": 15, "level_percent": 7, "temperature_c": 27.24, "consumption_lh": 32.12}, "coolant": {"pressure_kpa": 778, "level_percent": 40.49, "temperature_c": 31.42}, "hydraulic": {"pressure_kpa": 1415.257, "level_percent": 88.22, "temperature_c": 1.07}}');
INSERT INTO engineandfluids VALUES (178, 'PE118820', 178, 5973, 85.43, 3.03, 2217.6, 178, '{"oil": {"pressure_kpa": 2126, "level_percent": 26.5, "temperature_c": 101.3}, "fuel": {"pressure_kpa": 418, "level_percent": 4, "temperature_c": 2.25, "consumption_lh": 16.54}, "coolant": {"pressure_kpa": 630, "level_percent": 17.24, "temperature_c": 98.4}, "hydraulic": {"pressure_kpa": 352.713, "level_percent": 70.00, "temperature_c": 8.61}}');
INSERT INTO engineandfluids VALUES (181, 'PE184344', 181, 283, 53.38, 31.22, 2705.1, 181, '{"oil": {"pressure_kpa": 2579, "level_percent": 29.72, "temperature_c": 44.88}, "fuel": {"pressure_kpa": 827, "level_percent": 79, "temperature_c": -1.34, "consumption_lh": 15.54}, "coolant": {"pressure_kpa": 1938, "level_percent": 81.38, "temperature_c": 30.63}, "hydraulic": {"pressure_kpa": 1898.203, "level_percent": 58.08, "temperature_c": 25.58}}');
INSERT INTO engineandfluids VALUES (336, 'PE369481', 336, 3644, 65.49, 140.28, 3837.1, 336, '{"oil": {"pressure_kpa": 1477, "level_percent": 86.87, "temperature_c": 11.98}, "fuel": {"pressure_kpa": 837, "level_percent": 96, "temperature_c": 54.37, "consumption_lh": 3.97}, "coolant": {"pressure_kpa": 1180, "level_percent": 27.97, "temperature_c": -8.69}, "hydraulic": {"pressure_kpa": 658.416, "level_percent": 8.16, "temperature_c": 45.68}}');
INSERT INTO engineandfluids VALUES (628, 'PE146206', 628, 3793, 80.51, 11.56, 3510.4, 628, '{"oil": {"pressure_kpa": 3137, "level_percent": 73.08, "temperature_c": 44.99}, "fuel": {"pressure_kpa": 906, "level_percent": 47, "temperature_c": -16.91, "consumption_lh": 11.43}, "coolant": {"pressure_kpa": 1672, "level_percent": 74.47, "temperature_c": 67.26}, "hydraulic": {"pressure_kpa": 1435.019, "level_percent": 84.30, "temperature_c": 46.26}}');
INSERT INTO engineandfluids VALUES (247, 'PE312921', 247, 495, 18.06, -1.12, 456.6, 247, '{"oil": {"pressure_kpa": 3606, "level_percent": 83.34, "temperature_c": 31.91}, "fuel": {"pressure_kpa": 455, "level_percent": 2, "temperature_c": 26.19, "consumption_lh": 10.29}, "coolant": {"pressure_kpa": 626, "level_percent": 70.69, "temperature_c": -1.48}, "hydraulic": {"pressure_kpa": 540.608, "level_percent": 62.26, "temperature_c": 16.78}}');
INSERT INTO engineandfluids VALUES (858, 'PE914541', 858, 4420, 37.68, 73.13, 3698.5, 858, '{"oil": {"pressure_kpa": 2232, "level_percent": 77.06, "temperature_c": 104.07}, "fuel": {"pressure_kpa": 698, "level_percent": 87, "temperature_c": -5.21, "consumption_lh": 15.67}, "coolant": {"pressure_kpa": 1953, "level_percent": 50.58, "temperature_c": 2.24}, "hydraulic": {"pressure_kpa": 1934.409, "level_percent": 38.22, "temperature_c": 91.89}}');
INSERT INTO engineandfluids VALUES (283, 'PE316033', 283, 5298, 49.83, 21.45, 1013.4, 283, '{"oil": {"pressure_kpa": 3438, "level_percent": 93.53, "temperature_c": 81.46}, "fuel": {"pressure_kpa": 355, "level_percent": 83, "temperature_c": 36.11, "consumption_lh": 9.51}, "coolant": {"pressure_kpa": 1427, "level_percent": 28.94, "temperature_c": 77.67}, "hydraulic": {"pressure_kpa": 1897.692, "level_percent": 52.15, "temperature_c": 54.3}}');
INSERT INTO engineandfluids VALUES (989, 'PE431726', 989, 7123, 45.77, 149.34, 776.1, 989, '{"oil": {"pressure_kpa": 3881, "level_percent": 31.1, "temperature_c": 45.06}, "fuel": {"pressure_kpa": 448, "level_percent": 47, "temperature_c": 34.89, "consumption_lh": 28.72}, "coolant": {"pressure_kpa": 1188, "level_percent": 54.87, "temperature_c": 62.1}, "hydraulic": {"pressure_kpa": 1178.155, "level_percent": 22.38, "temperature_c": 7.8}}');
INSERT INTO engineandfluids VALUES (447, 'PE543051', 447, 2944, 15.22, 79.06, 839.3, 447, '{"oil": {"pressure_kpa": 2814, "level_percent": 78.61, "temperature_c": 53.8}, "fuel": {"pressure_kpa": 955, "level_percent": 71, "temperature_c": -8.75, "consumption_lh": 3.81}, "coolant": {"pressure_kpa": 121, "level_percent": 97.68, "temperature_c": 58.92}, "hydraulic": {"pressure_kpa": 705.279, "level_percent": 60.99, "temperature_c": 105.51}}');
INSERT INTO engineandfluids VALUES (320, 'PE470955', 320, 6518, 40.49, 114.41, 2049.5, 320, '{"oil": {"pressure_kpa": 4407, "level_percent": 92.97, "temperature_c": 88.73}, "fuel": {"pressure_kpa": 441, "level_percent": 41, "temperature_c": -17.43, "consumption_lh": 4.26}, "coolant": {"pressure_kpa": 900, "level_percent": 0.14, "temperature_c": 2.06}, "hydraulic": {"pressure_kpa": 1573.747, "level_percent": 22.59, "temperature_c": 0.98}}');
INSERT INTO operationmaintenance VALUES (178, 'PE118820', 178, 25754.000, 3506.00, '2024-04-20', '2026-02-02', 'Standby', 'Expired', 'Pending', 'Non-compliant', 'Updated', 178, '{"repair_usd": 2392.530, "operating_usd": 222.2100, "maintenance_usd": 9951.41}');
INSERT INTO operationmaintenance VALUES (181, 'PE184344', 181, 241.000, 2655.00, '2024-04-04', '2025-12-30', 'Standby', 'Pending', 'Pending', 'Non-compliant', 'Incomplete', 181, '{"repair_usd": 1299.490, "operating_usd": 90.9300, "maintenance_usd": 5449.69}');
INSERT INTO operationmaintenance VALUES (247, 'PE312921', 247, 23402.000, 1382.00, '2025-02-10', '2025-06-04', 'Standby', 'Expired', 'Pending', 'Non-compliant', 'Complete', 247, '{"repair_usd": 4132.180, "operating_usd": 136.1900, "maintenance_usd": 9454.16}');
INSERT INTO operationmaintenance VALUES (283, 'PE316033', 283, 6605.000, 2492.00, '2024-08-31', '2025-11-22', 'Repair', 'Valid', 'Failed', 'Non-compliant', 'Updated', 283, '{"repair_usd": 3823.830, "operating_usd": 288.3300, "maintenance_usd": 4401.38}');
INSERT INTO operationmaintenance VALUES (628, 'PE146206', 628, 19932.000, 3037.00, '2024-06-16', '2025-07-24', 'Maintenance', 'Pending', 'Pending', 'Review', 'Incomplete', 628, '{"repair_usd": 4896.850, "operating_usd": 665.9000, "maintenance_usd": 8346.17}');
INSERT INTO operationmaintenance VALUES (447, 'PE543051', 447, 4419.000, 571.00, '2025-02-06', '2025-04-18', 'Active', 'Valid', 'Passed', 'Compliant', 'Incomplete', 447, '{"repair_usd": 8.990, "operating_usd": 935.4500, "maintenance_usd": 3208.63}');
INSERT INTO operationmaintenance VALUES (320, 'PE470955', 320, 27031.000, 1782.00, '2024-09-22', '2025-12-28', 'Active', 'Valid', 'Pending', 'Review', 'Complete', 320, '{"repair_usd": 4966.920, "operating_usd": 635.5800, "maintenance_usd": 81.52}');
INSERT INTO operationmaintenance VALUES (480, 'PE350365', 480, 1204.000, 1399.00, '2024-08-27', '2026-01-11', 'Maintenance', 'Expired', 'Passed', 'Compliant', 'Updated', 480, '{"repair_usd": 4024.900, "operating_usd": 100.0300, "maintenance_usd": 789.55}');
INSERT INTO operationmaintenance VALUES (858, 'PE914541', 858, 25556.000, 364.00, '2024-04-06', '2025-12-02', 'Standby', 'Pending', 'Passed', 'Compliant', 'Updated', 858, '{"repair_usd": 1381.350, "operating_usd": 666.0200, "maintenance_usd": 1810.82}');
INSERT INTO operationmaintenance VALUES (389, 'PE518914', 389, 21845.000, 411.00, '2024-03-18', '2025-12-03', 'Repair', 'Pending', 'Passed', 'Review', 'Complete', 389, '{"repair_usd": 71.340, "operating_usd": 78.6700, "maintenance_usd": 1336.51}');
INSERT INTO operationmaintenance VALUES (989, 'PE431726', 989, 20501.000, 1491.00, '2024-03-11', '2025-11-08', 'Active', 'Pending', 'Pending', 'Non-compliant', 'Updated', 989, '{"repair_usd": 4923.550, "operating_usd": 807.2700, "maintenance_usd": 8454.33}');
INSERT INTO operationmaintenance VALUES (169, 'PE287406', 169, 4578.000, 3855.00, '2024-10-20', '2025-06-15', 'Maintenance', 'Expired', 'Passed', 'Review', 'Incomplete', 169, '{"repair_usd": 4676.510, "operating_usd": 175.7200, "maintenance_usd": 7712.62}');
INSERT INTO cabinenvironment VALUES (169, 'PE287406', 169, 'Standby', 'Auto', 47.70, 'Off', 10.19, 'Off', 'Open', 'Closed', 'Closed', 169, '{"co2_ppm": 528.6, "o2_percent": 15.39, "pressure_kpa": 1159, "temperature_c": -13.84, "humidity_percent": 84.8, "air_quality_index": 437.41}');
INSERT INTO cabinenvironment VALUES (336, 'PE369481', 336, 'Standby', 'Auto', 0.85, 'Off', 1.24, 'On', 'Open', 'Locked', 'Closed', 336, '{"co2_ppm": 3916.1, "o2_percent": 20.38, "pressure_kpa": 1073, "temperature_c": 38.63, "humidity_percent": 95.4, "air_quality_index": 172.63}');
INSERT INTO cabinenvironment VALUES (178, 'PE118820', 178, 'Testing', 'Off', 0.71, 'On', 20.04, 'On', 'Open', 'Open', 'Closed', 178, '{"co2_ppm": 3384.9, "o2_percent": 16.80, "pressure_kpa": 1169, "temperature_c": -16.79, "humidity_percent": 9.4, "air_quality_index": 190.71}');
INSERT INTO cabinenvironment VALUES (181, 'PE184344', 181, 'Testing', 'On', 5.68, 'Off', 9.2, 'On', 'Partial', 'Locked', 'Closed', 181, '{"co2_ppm": 756.4, "o2_percent": 15.39, "pressure_kpa": 1197, "temperature_c": -16.16, "humidity_percent": 31.7, "air_quality_index": 362.71}');
INSERT INTO cabinenvironment VALUES (628, 'PE146206', 628, 'Active', 'Off', 71.39, 'On', 18.71, 'Auto', 'Partial', 'Locked', 'Closed', 628, '{"co2_ppm": 404.8, "o2_percent": 17.57, "pressure_kpa": 1127, "temperature_c": -28.02, "humidity_percent": 27.9, "air_quality_index": 210.71}');
INSERT INTO cabinenvironment VALUES (247, 'PE312921', 247, 'Standby', 'On', 11.40, 'Off', 11.7, 'Auto', 'Closed', 'Locked', 'Open', 247, '{"co2_ppm": 1247.3, "o2_percent": 19.66, "pressure_kpa": 976, "temperature_c": -4.44, "humidity_percent": 2.9, "air_quality_index": 487.14}');
INSERT INTO cabinenvironment VALUES (283, 'PE316033', 283, 'Active', 'Auto', 18.84, 'On', 29.64, 'On', 'Closed', 'Closed', 'Closed', 283, '{"co2_ppm": 820.2, "o2_percent": 18.74, "pressure_kpa": 954, "temperature_c": 14.76, "humidity_percent": 44.9, "air_quality_index": 418.9}');
INSERT INTO cabinenvironment VALUES (858, 'PE914541', 858, 'Active', 'Auto', 6.06, 'Auto', 6.54, 'On', 'Closed', 'Closed', 'Closed', 858, '{"co2_ppm": 2096.1, "o2_percent": 18.09, "pressure_kpa": 1089, "temperature_c": -25.2, "humidity_percent": 5.4, "air_quality_index": 177.39}');
INSERT INTO cabinenvironment VALUES (320, 'PE470955', 320, 'Active', 'On', 41.88, 'Off', 13.81, 'On', 'Open', 'Closed', 'Locked', 320, '{"co2_ppm": 1433.1, "o2_percent": 12.51, "pressure_kpa": 943, "temperature_c": 2.62, "humidity_percent": 10.4, "air_quality_index": 159.76}');
INSERT INTO cabinenvironment VALUES (989, 'PE431726', 989, 'Testing', 'On', 94.58, 'Auto', 22.46, 'Auto', 'Closed', 'Locked', 'Locked', 989, '{"co2_ppm": 1972.6, "o2_percent": 14.71, "pressure_kpa": 806, "temperature_c": 38.92, "humidity_percent": 69.4, "air_quality_index": 137.83}');
INSERT INTO cabinenvironment VALUES (447, 'PE543051', 447, 'Testing', 'Off', 10.12, 'Auto', 18.44, 'On', 'Closed', 'Locked', 'Locked', 447, '{"co2_ppm": 4339.2, "o2_percent": 20.84, "pressure_kpa": 956, "temperature_c": -25.29, "humidity_percent": 12.4, "air_quality_index": 137.76}');
INSERT INTO cabinenvironment VALUES (480, 'PE350365', 480, 'Active', 'Auto', 27.56, 'Off', 0.59, 'Off', 'Partial', 'Open', 'Open', 480, '{"co2_ppm": 4555.9, "o2_percent": 17.70, "pressure_kpa": 975, "temperature_c": 2.86, "humidity_percent": 36.9, "air_quality_index": 360.17}');
INSERT INTO cabinenvironment VALUES (389, 'PE518914', 389, 'Standby', 'Off', 81.25, 'Off', 16.93, 'Auto', 'Partial', 'Locked', 'Open', 389, '{"co2_ppm": 4439.5, "o2_percent": 11.90, "pressure_kpa": 1031, "temperature_c": -15.07, "humidity_percent": 60.5, "air_quality_index": 425.42}');
INSERT INTO transmission VALUES (389, 'PE518914', 389, -2.56, 505.27, 2, 13.44, 108.68, 389);
INSERT INTO transmission VALUES (169, 'PE287406', 169, 78.19, 935.10, 1, 72.24, 57.96, 169);
INSERT INTO transmission VALUES (480, 'PE350365', 480, 32.48, 1023.52, 1, 94.7, 71.83, 480);
INSERT INTO transmission VALUES (336, 'PE369481', 336, 44.76, 473.85, 4, 98.21, 76.49, 336);
INSERT INTO transmission VALUES (178, 'PE118820', 178, 71.61, 905.86, 6, 77.3, 28.84, 178);
INSERT INTO transmission VALUES (628, 'PE146206', 628, 120.69, 1365.73, 8, 94.57, 115.81, 628);
INSERT INTO transmission VALUES (181, 'PE184344', 181, 47.51, 636.25, 6, 18.4, 52.63, 181);
INSERT INTO transmission VALUES (247, 'PE312921', 247, 112.81, 201.48, 6, 89.82, 34.34, 247);
INSERT INTO transmission VALUES (858, 'PE914541', 858, 12.2, 1530.72, 4, 62.43, 42.24, 858);
INSERT INTO transmission VALUES (283, 'PE316033', 283, 114.4, 1732.56, 10, 51.44, 23.44, 283);
INSERT INTO transmission VALUES (989, 'PE431726', 989, 25.45, 908.60, 3, 98.77, 90.44, 989);
INSERT INTO transmission VALUES (447, 'PE543051', 447, 10.29, 78.88, 10, 86.73, 41.83, 447);
INSERT INTO transmission VALUES (320, 'PE470955', 320, 77.2, 1959.25, 4, 23.16, 31.52, 320);
INSERT INTO thermalsolarwindandgrid VALUES (480, 'PE350365', 480, 'Critical', 'Good', 338.301, 'Inactive', 'Operating', 'Connected', 5.17, 'Fault', 'Fault', 1833.14, 50.0, 65.75, 38.35, 480, '{"wind": {"rpm": 1038, "output_w": 1469.03}, "solar": {"output_w": 1171.84, "temperature_c": 14.7, "efficiency_percent": 4.20}}');
INSERT INTO thermalsolarwindandgrid VALUES (389, 'PE518914', 389, 'Warning', 'Good', 101.818, 'Active', 'Operating', 'Disconnected', 4.28, 'Active', 'Operating', 599.72, 4.5, 41.72, 95.87, 389, '{"wind": {"rpm": 1148, "output_w": 67.34}, "solar": {"output_w": 473.54, "temperature_c": 53.96, "efficiency_percent": 87.93}}');
INSERT INTO thermalsolarwindandgrid VALUES (169, 'PE287406', 169, 'Critical', 'Good', 473.406, 'Active', 'Operating', 'Disconnected', 43.52, 'Fault', 'Fault', 666.5, 98.3, 80.79, 86.86, 169, '{"wind": {"rpm": 2690, "output_w": 1112.74}, "solar": {"output_w": 1908.14, "temperature_c": 90.31, "efficiency_percent": 10.57}}');
INSERT INTO thermalsolarwindandgrid VALUES (178, 'PE118820', 178, 'Warning', 'Good', 392.110, 'Fault', 'Stopped', 'Island Mode', 35.78, 'Fault', 'Standby', 2907.34, 25.9, 20.31, 51.25, 178, '{"wind": {"rpm": 1225, "output_w": 2287.76}, "solar": {"output_w": 449.43, "temperature_c": 79.67, "efficiency_percent": 20.62}}');
INSERT INTO thermalsolarwindandgrid VALUES (181, 'PE184344', 181, 'Normal', 'Poor', 490.589, 'Fault', 'Fault', 'Connected', 99.40, 'Active', 'Operating', 1104.42, 49.5, 76.84, 17.07, 181, '{"wind": {"rpm": 1487, "output_w": 2284.02}, "solar": {"output_w": 1312.16, "temperature_c": 61.51, "efficiency_percent": 88.75}}');
INSERT INTO thermalsolarwindandgrid VALUES (628, 'PE146206', 628, 'Normal', 'Poor', 216.558, 'Inactive', 'Stopped', 'Island Mode', 12.38, 'Active', 'Fault', 1217.94, 14.0, 20.66, 75.26, 628, '{"wind": {"rpm": 64, "output_w": 1062.89}, "solar": {"output_w": 1842.97, "temperature_c": 74.71, "efficiency_percent": 95.99}}');
INSERT INTO thermalsolarwindandgrid VALUES (247, 'PE312921', 247, 'Normal', 'Fair', 116.975, 'Fault', 'Stopped', 'Island Mode', 97.40, 'Active', 'Operating', 1748.2, 2.3, 1.05, 12.68, 247, '{"wind": {"rpm": 1920, "output_w": 2662.03}, "solar": {"output_w": 1576.24, "temperature_c": 88.77, "efficiency_percent": 6.28}}');
INSERT INTO thermalsolarwindandgrid VALUES (858, 'PE914541', 858, 'Warning', 'Poor', 69.054, 'Fault', 'Fault', 'Island Mode', 76.33, 'Active', 'Fault', 1578.36, 7.3, 58.02, 8.77, 858, '{"wind": {"rpm": 2990, "output_w": 2468.34}, "solar": {"output_w": 1193.49, "temperature_c": 85.52, "efficiency_percent": 97.73}}');
INSERT INTO thermalsolarwindandgrid VALUES (283, 'PE316033', 283, 'Normal', 'Fair', 130.674, 'Inactive', 'Stopped', 'Disconnected', 30.31, 'Fault', 'Operating', 1713.45, 84.8, 54.00, 2.43, 283, '{"wind": {"rpm": 284, "output_w": 12.66}, "solar": {"output_w": 1654.66, "temperature_c": 99.19, "efficiency_percent": 59.53}}');
INSERT INTO thermalsolarwindandgrid VALUES (989, 'PE431726', 989, 'Normal', 'Poor', 178.085, 'Active', 'Fault', 'Connected', 48.20, 'Fault', 'Fault', 1678.69, 70.8, 39.07, 11.81, 989, '{"wind": {"rpm": 1948, "output_w": 1150.63}, "solar": {"output_w": 1277.47, "temperature_c": 35.41, "efficiency_percent": 46.47}}');
INSERT INTO thermalsolarwindandgrid VALUES (447, 'PE543051', 447, 'Critical', 'Good', 114.576, 'Fault', 'Stopped', 'Connected', 3.05, 'Standby', 'Standby', 2869.63, 42.8, 10.62, 38.22, 447, '{"wind": {"rpm": 1800, "output_w": 851.75}, "solar": {"output_w": 956.15, "temperature_c": 86.64, "efficiency_percent": 95.12}}');
INSERT INTO thermalsolarwindandgrid VALUES (320, 'PE470955', 320, 'Warning', 'Fair', 34.601, 'Active', 'Stopped', 'Disconnected', 39.75, 'Standby', 'Fault', 925.95, 1.2, 98.35, 6.24, 320, '{"wind": {"rpm": 2138, "output_w": 262.48}, "solar": {"output_w": 63.56, "temperature_c": 67.7, "efficiency_percent": 6.07}}');
INSERT INTO weatherandstructure VALUES (389, 389, -17.73, 20.05, 15.8, 815.54, 837.714, 500, 15.67, 6.43, 'None', 76.748, 561, 80.13, 'Normal', 13.86, 17.30, 389);
INSERT INTO weatherandstructure VALUES (169, 169, -25.49, 4.38, 185.3, 987.79, 350.440, 18, 5.93, 10.05, 'Blowing Snow', 72.729, 718, 76.81, 'Critical', 9.33, 91.33, 169);
INSERT INTO weatherandstructure VALUES (480, 480, 23.44, 55.25, 153.2, 1008.60, 476.267, 288, 33.47, 31.55, 'None', 72.126, 644, 74.07, 'Warning', 22.58, 2.86, 480);
INSERT INTO weatherandstructure VALUES (178, 178, 35.61, 26.28, 9.2, 832.63, 473.940, 270, 44.49, 37.96, 'Snow', 90.496, 427, 7.61, 'Warning', 14.09, 53.51, 178);
INSERT INTO weatherandstructure VALUES (628, 628, 47.58, 55.53, 286.2, 1007.12, 780.294, 100, 53.87, 8.12, 'Ice', 37.267, 137, 57.01, 'Critical', 20.78, 106.15, 628);
INSERT INTO weatherandstructure VALUES (181, 181, 29.94, 6.67, 278.9, 871.03, 156.035, 410, 48.17, 48.63, 'Snow', 0.244, 856, 54.94, 'Normal', 33.59, 137.89, 181);
INSERT INTO weatherandstructure VALUES (247, 247, 9.29, 59.38, 33.6, 1015.05, 941.605, 266, 3.69, 4.22, 'Snow', 60.244, 454, 51.08, 'Warning', 14.73, 36.62, 247);
INSERT INTO weatherandstructure VALUES (858, 858, 16.99, 18.33, 338.5, 826.01, 1215.336, 311, 30.62, 44.18, 'Ice', 52.947, 445, 70.71, 'Normal', 46.81, 75.78, 858);
INSERT INTO weatherandstructure VALUES (283, 283, 44.28, 22, 54.7, 902.33, 979.076, 256, 49.25, 39.96, 'Blowing Snow', 44.826, 997, 94.14, 'Normal', 3.54, 75.40, 283);
INSERT INTO weatherandstructure VALUES (989, 989, -22.89, 30.66, 75.9, 830.55, 750.624, 30, 13.48, 38.04, 'Snow', 43.047, 54, 7.72, 'Normal', 12.51, 26.07, 989);
INSERT INTO weatherandstructure VALUES (447, 447, -4.09, 17.44, 82.8, 1016.31, 1037.609, 244, 53.04, 4.22, 'None', 55.080, 704, 41.16, 'Normal', 20.77, 77.28, 447);
INSERT INTO weatherandstructure VALUES (320, 320, -3.2, 1.97, 178.6, 1098.71, 970.686, 312, 80.90, 45.75, 'None', 80.561, 791, 95.92, 'Critical', 2.08, 44.36, 320);
INSERT INTO chassisandvehicle VALUES (169, 'PE287406', 169, 51, 24.78, 801, 42.861, 84.25, 99.1, 61.99, 2786.26, 60.36, 32.7, 169, '{"pressure_kpa": 224, "temperature_c": 29.45, "tread_depth_mm": 4.23}');
INSERT INTO chassisandvehicle VALUES (480, 'PE350365', 480, 86.4, 76.48, 1313, 29.308, 3.11, 429.4, 7.01, 2404.66, 56.36, 270.7, 480, '{"pressure_kpa": 142, "temperature_c": 96.39, "tread_depth_mm": 5.06}');
INSERT INTO chassisandvehicle VALUES (178, 'PE118820', 178, 22, 84.17, 2326, 14.815, 33.09, 584.9, 36.16, 4548.91, 100.72, 139.7, 178, '{"pressure_kpa": 163, "temperature_c": 13.11, "tread_depth_mm": 0.38}');
INSERT INTO chassisandvehicle VALUES (181, 'PE184344', 181, 0.6, 34.19, 2595, 4.371, 86.42, 302.4, 66.04, 3911.70, 61.27, 154.3, 181, '{"pressure_kpa": 79, "temperature_c": -3.33, "tread_depth_mm": 7.83}');
INSERT INTO chassisandvehicle VALUES (247, 'PE312921', 247, 56, 73.41, 1652, 15.148, 16.56, 457.8, 49.4, 4206.07, 160.34, 246.2, 247, '{"pressure_kpa": 60, "temperature_c": 78.18, "tread_depth_mm": 4.99}');
INSERT INTO chassisandvehicle VALUES (283, 'PE316033', 283, 40.9, 96.39, 269, 47.172, 78.69, 513.4, 89.68, 1537.63, 91.77, 223.3, 283, '{"pressure_kpa": 234, "temperature_c": 44.12, "tread_depth_mm": 5.95}');
INSERT INTO chassisandvehicle VALUES (628, 'PE146206', 628, 7.6, 71.69, 1587, 3.974, 24.28, 525.6, 70.77, 1188.07, 107.95, 119.8, 628, '{"pressure_kpa": 63, "temperature_c": 67.63, "tread_depth_mm": 6.20}');
INSERT INTO chassisandvehicle VALUES (447, 'PE543051', 447, 39.5, 35.52, 487, 32.973, 64.13, 996.9, 17.73, 1654.71, 63.62, 72.4, 447, '{"pressure_kpa": 267, "temperature_c": -18.52, "tread_depth_mm": 0.41}');
INSERT INTO chassisandvehicle VALUES (320, 'PE470955', 320, 49.7, 30.02, 1107, 20.252, 69.72, 334.5, 92, 4700.53, 160.51, 154.5, 320, '{"pressure_kpa": 188, "temperature_c": 16.96, "tread_depth_mm": 6.07}');
INSERT INTO chassisandvehicle VALUES (389, 'PE518914', 389, 30.6, 38.38, 1673, 44.015, 75.76, 432.3, 114.83, 3107.02, 66.47, 131.1, 389, '{"pressure_kpa": 286, "temperature_c": 39.73, "tread_depth_mm": 2.23}');
INSERT INTO chassisandvehicle VALUES (858, 'PE914541', 858, 4.3, 97.51, 1370, 20.455, 95.54, 286.2, 78.18, 2921.52, 28.44, 151.0, 858, '{"pressure_kpa": 61, "temperature_c": 54.2, "tread_depth_mm": 1.02}');
INSERT INTO chassisandvehicle VALUES (989, 'PE431726', 989, 23, 75.21, 1372, 3.766, 59.29, 492.0, 50.82, 1800.54, 103.12, 22.8, 989, '{"pressure_kpa": 157, "temperature_c": 65.02, "tread_depth_mm": 7.18}');
