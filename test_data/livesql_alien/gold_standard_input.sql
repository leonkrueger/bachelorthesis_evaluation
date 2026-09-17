CREATE TABLE `observatories`
(`observstation` VARCHAR(1023),
`weathprofile` VARCHAR(1023),
`seeingprofile` VARCHAR(1023),
`atmostransparency` DOUBLE,
`lunarstage` VARCHAR(1023),
`lunardistdeg` DOUBLE,
`solarstatus` VARCHAR(1023),
`geomagstatus` VARCHAR(1023),
`sidereallocal` VARCHAR(1023),
`airtempc` DOUBLE,
`humidityrate` DOUBLE,
`windspeedms` DOUBLE,
`presshpa` DOUBLE);
CREATE TABLE `telescopes`
(`telescregistry` VARCHAR(1023),
`observstation` VARCHAR(1023),
`equipstatus` VARCHAR(1023),
`calibrstatus` VARCHAR(1023),
`pointaccarc` DOUBLE,
`trackaccarc` DOUBLE,
`focusquality` VARCHAR(1023),
`detecttempk` DOUBLE,
`coolsysstatus` VARCHAR(1023),
`powerstatus` VARCHAR(1023),
`datastorstatus` VARCHAR(1023),
`netstatus` VARCHAR(1023),
`bandusagepct` DOUBLE,
`procqueuestatus` VARCHAR(1023));
CREATE TABLE `signals`
(`signalregistry` VARCHAR(1023),
`timemark` DATETIME,
`telescref` VARCHAR(1023),
`detectinstr` VARCHAR(1023),
`signalclass` VARCHAR(1023),
`sigstrdb` DOUBLE,
`freqmhz` DOUBLE,
`bwhz` DOUBLE,
`centerfreqmhz` DOUBLE,
`freqdrifthzs` DOUBLE,
`doppshifthz` DOUBLE,
`sigdursec` DOUBLE,
`pulsepersec` DOUBLE,
`pulsewidms` DOUBLE,
`modtype` VARCHAR(1023),
`modindex` DOUBLE,
`carrierfreqmhz` DOUBLE,
`phaseshiftdeg` DOUBLE,
`polarmode` VARCHAR(1023),
`polarangledeg` DOUBLE,
`snrratio` DOUBLE,
`noisefloordbm` DOUBLE,
`interflvl` VARCHAR(1023),
`rfistat` VARCHAR(1023),
`atmointerf` VARCHAR(1023));
CREATE TABLE `observationalconditions`
(`signalref` VARCHAR(1023),
`obstime` TIME,
`obsdate` DATE,
`obsdurhrs` DOUBLE);
CREATE TABLE `researchprocess`
(`signalref` VARCHAR(1023),
`analysisprio` VARCHAR(1023),
`followstat` VARCHAR(1023),
`peerrevstat` VARCHAR(1023),
`pubstat` VARCHAR(1023),
`resprio` VARCHAR(1023),
`fundstat` VARCHAR(1023),
`collabstat` VARCHAR(1023),
`secclass` VARCHAR(1023),
`discstat` VARCHAR(1023),
`notesmemo` VARCHAR(1023));
CREATE TABLE `signaladvancedphenomena`
(`signalref` VARCHAR(1023),
`intermedeffects` VARCHAR(1023),
`gravlens` VARCHAR(1023),
`quanteffects` VARCHAR(1023),
`encryptevid` VARCHAR(1023),
`langstruct` VARCHAR(1023),
`msgcontent` VARCHAR(1023),
`cultsig` VARCHAR(1023),
`sciimpact` VARCHAR(1023));
CREATE TABLE `signalclassification`
(`signalref` VARCHAR(1023),
`sigclasstype` VARCHAR(1023),
`sigpattern` VARCHAR(1023),
`repeatcount` BIGINT,
`periodsec` DOUBLE,
`complexidx` DOUBLE,
`entropyval` DOUBLE,
`infodense` DOUBLE,
`classconf` DOUBLE);
CREATE TABLE `signaldecoding`
(`signalref` VARCHAR(1023),
`encodetype` VARCHAR(1023),
`compressratio` DOUBLE,
`errcorrlvl` VARCHAR(1023),
`decodeconf` DOUBLE,
`decodemethod` VARCHAR(1023),
`decodestat` VARCHAR(1023),
`decodeiters` BIGINT,
`proctimehrs` DOUBLE,
`compresources` VARCHAR(1023),
`analysisdp` VARCHAR(1023),
`veriflvl` VARCHAR(1023),
`confirmstat` VARCHAR(1023));
CREATE TABLE `signaldynamics`
(`signalref` VARCHAR(1023),
`sigintegrity` VARCHAR(1023),
`sigrecurr` VARCHAR(1023),
`sigevolve` VARCHAR(1023),
`tempstab` VARCHAR(1023),
`spatstab` VARCHAR(1023),
`freqstab` VARCHAR(1023),
`phasestab` VARCHAR(1023),
`ampstab` VARCHAR(1023),
`modstab` VARCHAR(1023),
`sigcoherence` VARCHAR(1023),
`sigdisp` VARCHAR(1023),
`sigscint` VARCHAR(1023));
CREATE TABLE `signalprobabilities`
(`signalref` VARCHAR(1023),
`falseposprob` DOUBLE,
`sigunique` DOUBLE,
`simindex` DOUBLE,
`corrscore` DOUBLE,
`anomscore` DOUBLE,
`techsigprob` DOUBLE,
`biosigprob` DOUBLE,
`natsrcprob` DOUBLE,
`artsrcprob` DOUBLE);
CREATE TABLE `sourceproperties`
(`signalref` VARCHAR(1023),
`sourceradeg` DOUBLE,
`sourcedecdeg` DOUBLE,
`sourcedistly` DOUBLE,
`gallong` DOUBLE,
`gallat` DOUBLE,
`celestobj` VARCHAR(1023),
`objtype` VARCHAR(1023),
`objmag` DOUBLE,
`objtempk` BIGINT,
`objmasssol` DOUBLE,
`objagegyr` DOUBLE,
`objmetal` DOUBLE,
`objpropmotion` DOUBLE,
`objradvel` DOUBLE);
INSERT INTO observatories VALUES ('Observatory-Pearsonstad', 'Clear', 'Poor', 0.250, 'Full', 100.56, 'Low', 'Quiet', '17.5804', -16.90, 67.700, 22.00, 1022.3);
INSERT INTO observatories VALUES ('Observatory-Williamsburgh', 'Partially Cloudy', 'Excellent', 0.530, 'First Quarter', 76.14, 'High', 'Storm', '18.364', -8.70, 55.000, 24.60, 1015.8);
INSERT INTO observatories VALUES ('Observatory-South Ricardo', 'Partially Cloudy', 'Poor', 0.440, 'New', 110.66, 'High', 'Storm', '13.4702', 6.10, 8.700, 21.50, 1010.6);
INSERT INTO observatories VALUES ('Observatory-Sanchezstad', 'Cloudy', 'Good', 0.870, 'Full', 16.36, 'Low', 'Active', '21.5382', 0.10, 24.600, 28.90, 998.0);
INSERT INTO observatories VALUES ('Observatory-North Paulabury', 'Clear', 'Good', 0.930, 'Full', 94.00, 'Low', 'Quiet', '17.9741', -3.70, 9.500, 5.80, 980.7);
INSERT INTO observatories VALUES ('Observatory-Lake Dana', 'Cloudy', 'Excellent', 0.590, 'Full', 161.75, 'Moderate', 'Quiet', '13.795', -16.00, 44.400, 22.80, 993.5);
INSERT INTO observatories VALUES ('Observatory-West Matthewberg', 'Clear', 'Excellent', 0.880, 'Full', 137.28, 'High', 'Quiet', '20.8516', -18.60, 34.200, 21.20, 981.5);
INSERT INTO observatories VALUES ('Observatory-Sotoville', 'Cloudy', 'Excellent', 0.110, 'Full', 23.10, 'Low', 'Active', '21.175', 21.10, 87.000, 28.20, 1017.3);
INSERT INTO observatories VALUES ('Observatory-West Heidi', 'Clear', 'Good', 0.950, 'Full', 160.64, 'Low', 'Quiet', '9.5095', 31.40, 32.900, 17.10, 991.3);
INSERT INTO observatories VALUES ('Observatory-Lake Michelleshire', 'Partially Cloudy', 'Good', 0.620, 'Full', 118.18, 'Low', 'Quiet', '12.13', 2.30, 19.000, 5.10, 986.2);
INSERT INTO observatories VALUES ('Observatory-Onealburgh', 'Clear', 'Poor', 0.430, 'First Quarter', 18.50, 'Low', 'Quiet', '0.9236', 15.90, 79.000, 18.10, 1028.5);
INSERT INTO observatories VALUES ('Observatory-Hineshaven', 'Cloudy', 'Good', 0.920, 'First Quarter', 2.24, 'Low', 'Active', '17.938', -4.00, 94.900, 0.50, 1024.1);
INSERT INTO observatories VALUES ('Observatory-Thomasville', 'Clear', 'Good', 0.390, 'First Quarter', 53.08, 'High', 'Quiet', '22.6331', 2.50, 72.400, 23.10, 990.8);
INSERT INTO observatories VALUES ('Observatory-Josephburgh', 'Partially Cloudy', 'Good', 0.730, 'First Quarter', 31.79, 'High', 'Storm', '12.0281', 6.00, 94.700, 11.20, 1023.9);
INSERT INTO observatories VALUES ('Observatory-Lindseymouth', 'Cloudy', 'Excellent', 0.670, 'Last Quarter', 114.72, 'High', 'Active', '17.4518', -8.20, 12.800, 27.10, 991.3);
INSERT INTO observatories VALUES ('Observatory-North Lydiaville', 'Clear', 'Excellent', 0.720, 'Full', 141.32, 'High', 'Active', '2.9197', -9.40, 63.400, 26.90, 1010.2);
INSERT INTO observatories VALUES ('Observatory-Andersonburgh', 'Clear', 'Good', 0.220, 'Last Quarter', 109.00, 'Low', 'Quiet', '13.2913', -18.40, 74.400, 2.40, 1026.3);
INSERT INTO telescopes VALUES ('T2931', 'Observatory-Andersonburgh', 'Degraded', 'Overdue', 2.70, 4.94, 'Good', 204.78, 'Critical', 'Main', 'Critical', 'Limited', 27.50, 'Empty');
INSERT INTO telescopes VALUES ('T3182', 'Observatory-Pearsonstad', 'Degraded', 'Due', 3.96, 1.58, 'Good', 94.66, 'Warning', 'Backup', 'Available', 'Disconnected', 8.50, 'Empty');
INSERT INTO telescopes VALUES ('T9479', 'Observatory-South Ricardo', 'Degraded', 'Overdue', 4.21, 0.36, 'Good', 77.40, 'Normal', 'Main', 'Critical', 'Limited', 50.00, 'Full');
INSERT INTO telescopes VALUES ('T3566', 'Observatory-North Paulabury', 'Operational', 'Current', 9.37, 9.36, 'Excellent', 279.00, 'Critical', 'Main', 'Low', 'Disconnected', 10.70, 'Full');
INSERT INTO telescopes VALUES ('T8919', 'Observatory-Lake Dana', 'Degraded', 'Overdue', 3.50, 0.62, 'Poor', 23.92, 'Critical', 'Backup', 'Low', 'Connected', 62.90, 'Empty');
INSERT INTO telescopes VALUES ('T2890', 'Observatory-West Matthewberg', 'Degraded', 'Current', 7.50, 3.51, 'Excellent', 25.12, 'Normal', 'Critical', 'Critical', 'Disconnected', 87.80, 'Normal');
INSERT INTO telescopes VALUES ('T7725', 'Observatory-Hineshaven', 'Operational', 'Due', 9.72, 0.87, 'Poor', 179.73, 'Critical', 'Main', 'Critical', 'Connected', 98.50, 'Normal');
INSERT INTO telescopes VALUES ('T6860', 'Observatory-West Heidi', 'Maintenance', 'Due', 1.39, 1.14, 'Good', 260.15, 'Normal', 'Critical', 'Available', 'Disconnected', 90.40, 'Empty');
INSERT INTO telescopes VALUES ('T3312', 'Observatory-North Lydiaville', 'Maintenance', 'Overdue', 3.78, 0.67, 'Poor', 34.21, 'Normal', 'Critical', 'Critical', 'Connected', 63.10, 'Normal');
INSERT INTO telescopes VALUES ('T3794', 'Observatory-Lake Michelleshire', 'Maintenance', 'Overdue', 5.98, 7.89, 'Excellent', 121.75, 'Normal', 'Main', 'Critical', 'Disconnected', 90.50, 'Normal');
INSERT INTO telescopes VALUES ('T5894', 'Observatory-Onealburgh', 'Maintenance', 'Due', 9.72, 4.73, 'Poor', 234.05, 'Warning', 'Backup', 'Available', 'Connected', 33.20, 'Full');
INSERT INTO telescopes VALUES ('T1130', 'Observatory-Williamsburgh', 'Degraded', 'Due', 8.68, 3.77, 'Good', 153.90, 'Normal', 'Main', 'Low', 'Connected', 42.10, 'Full');
INSERT INTO telescopes VALUES ('T7467', 'Observatory-Thomasville', 'Degraded', 'Current', 7.85, 9.86, 'Good', 74.23, 'Critical', 'Backup', 'Low', 'Connected', 55.50, 'Full');
INSERT INTO telescopes VALUES ('T9517', 'Observatory-Lindseymouth', 'Degraded', 'Current', 9.83, 9.92, 'Good', 175.19, 'Critical', 'Critical', 'Low', 'Disconnected', 20.20, 'Full');
INSERT INTO telescopes VALUES ('T8529', 'Observatory-Josephburgh', 'Operational', 'Current', 6.68, 9.80, 'Excellent', 61.72, 'Critical', 'Backup', 'Low', 'Limited', 2.20, 'Full');
INSERT INTO telescopes VALUES ('T6777', 'Observatory-Sotoville', 'Maintenance', 'Overdue', 5.76, 7.87, 'Good', 265.15, 'Critical', 'Main', 'Critical', 'Limited', 1.00, 'Full');
INSERT INTO signals VALUES ('AS215245', '2023-04-09 05:38:39.943339+08', 'T3312', 'Optical Telescope', 'Narrowband', -63.02, 71951.669, 327.000, 51634.419, 1.656, 424.94, 165.60, 5.076, 708.240, 'QAM', 0.6720, 11405.750, 41.93, 'Linear', 19.6, -2.38, -127.35, 'Low', 'Clean', 'Severe');
INSERT INTO signals VALUES ('AS348567', '2022-04-09 01:18:51.943339+08', 'T1130', 'Infrared Array', 'Continuous', -59.71, 8888.028, 900.400, 67276.946, -6.803, 291.55, 1383.42, 3.930, 708.900, 'PM', 0.1320, 86464.496, 252.51, 'Unknown', 18.8, 26.10, -123.22, 'Medium', 'Unknown', 'Severe');
INSERT INTO signals VALUES ('AS745021', '2022-06-15 16:04:26.868816+08', 'T3182', 'Optical Telescope', 'Broadband', -154.72, 43019.373, 316.030, 82505.882, 2.204, 777.42, 3513.05, 9.047, 695.240, 'Unknown', 0.5320, 81576.576, 343.61, 'Linear', 16.4, 18.01, -105.55, 'High', 'Contaminated', 'Moderate');
INSERT INTO signals VALUES ('AS563918', '2018-01-05 18:41:02.868816+08', 'T9479', 'Infrared Array', 'Narrowband', -100.17, 76558.861, 362.740, 23068.604, -7.356, 443, 2039.10, 8.259, 626.960, 'PM', 0.4900, 91961.250, 152.97, 'Elliptical', 103.6, -18.75, -159.5, 'High', 'Contaminated', 'Minimal');
INSERT INTO signals VALUES ('AS257418', '2022-04-17 11:07:25.895958+08', 'T2931', 'Infrared Array', 'Narrowband', -56.71, 67334.983, 300.320, 79670.294, -8.048, -584.95, 3586.84, 7.723, 123.700, 'QAM', 0.6770, 28477.148, 290.36, 'Elliptical', 18.2, -18.57, -90.73, NULL, 'Unknown', 'Minimal');
INSERT INTO signals VALUES ('AS691966', '2015-04-30 19:34:17.927207+08', 'T7725', 'Infrared Array', 'Pulsed', -102.09, 61969.834, 320.350, 73824.750, -9.196, 752.35, 1997.66, 9.032, 752.320, 'Unknown', 0.4640, 26033.389, 39.59, 'Unknown', 100.3, -14.54, -128.73, NULL, 'Contaminated', 'Moderate');
INSERT INTO signals VALUES ('AS748882', '2015-08-21 05:33:38.895958+08', 'T3566', 'Quantum Detector', 'Broadband', -109.04, 43618.812, 930.220, 44708.337, 4.448, 475.53, 175.91, 1.217, 701.830, 'PM', 0.3590, 57852.154, 194.41, 'Circular', 119.6, -8.69, -136.05, 'Medium', 'Unknown', 'Severe');
INSERT INTO signals VALUES ('AS846535', '2021-08-04 03:08:41.868816+08', 'T6860', 'Quantum Detector', 'Pulsed', -197.08, 8313.800, 841.320, 82213.395, 3.707, 740.91, 2287.44, 8.839, 418.600, 'FM', 0.9130, 2108.215, 156.35, 'Elliptical', 149.5, 15.12, -116.42, 'Medium', 'Unknown', 'Severe');
INSERT INTO signals VALUES ('AS177908', '2017-06-11 12:53:19.880324+08', 'T2890', 'Optical Telescope', 'Broadband', -183.71, 1094.390, 627.850, 42572.136, -6.179, 319.66, 1326.29, 0.285, 154.630, 'FM', 0.5770, 9001.890, 75.11, 'Elliptical', 68.8, -1.33, -138.64, 'High', 'Unknown', 'Severe');
INSERT INTO signals VALUES ('AS976795', '2017-05-03 04:14:40.927207+08', 'T9517', 'Quantum Detector', 'Continuous', -131.45, 20324.365, 396.830, 98820.541, -3.010, -642.13, 719.29, 6.312, 327.090, 'Unknown', 0.2650, 47332.157, 233.41, 'Circular', 167.5, 33.09, -146.22, 'Low', 'Contaminated', 'Minimal');
INSERT INTO signals VALUES ('AS637827', '2018-09-10 17:13:19.943339+08', 'T6777', 'Radio Telescope', 'Pulsed', -143.10, 32685.324, 291.350, 94888.113, -0.833, 538.48, 2026.42, 3.043, 401.280, 'FM', 0.1790, 13720.661, 205.94, 'Elliptical', 57.3, 34.77, -102.35, 'Medium', 'Contaminated', 'Severe');
INSERT INTO signals VALUES ('AS664916', '2019-03-30 07:53:16.868816+08', 'T5894', 'Radio Telescope', 'Broadband', -175.75, 30231.185, 422.300, 16314.700, 4.289, -724.55, 486.56, 3.395, 838.760, 'QAM', 0.6500, 92354.754, 4.23, 'Linear', 116.2, 10.88, -151.94, 'Low', 'Unknown', 'Minimal');
INSERT INTO signals VALUES ('AS543719', '2015-08-04 12:42:39.943339+08', 'T7725', 'Quantum Detector', 'Broadband', -182.70, 77146.771, 423.510, 54724.367, -5.847, 117.17, 3151.44, 8.963, 921.670, 'AM', 0.1940, 50059.808, 162.80, 'Elliptical', 47.4, 6.95, -122.17, 'Low', 'Unknown', 'Minimal');
INSERT INTO signals VALUES ('AS874183', '2016-09-15 06:13:27.911583+08', 'T8919', 'Optical Telescope', 'Pulsed', -148.23, 42843.913, 402.910, 61674.078, 9.706, -166.23, 1440.69, 3.035, 750.850, 'FM', 0.2300, 91566.594, 297.85, 'Circular', 167.9, 22.76, -110.61, 'Medium', 'Contaminated', 'Moderate');
INSERT INTO signals VALUES ('AS421846', '2021-12-28 15:10:30.895958+08', 'T3794', 'Quantum Detector', 'Modulated', -67.25, 10305.607, 183.480, 70861.183, -9.836, -261.36, 2865.80, 4.010, 979.170, 'Unknown', 0.1680, 75553.306, 68.77, 'Circular', 70.3, -11.81, -159.74, 'Low', 'Contaminated', 'Severe');
INSERT INTO signals VALUES ('AS406588', '2024-08-06 09:03:02.868816+08', 'T7467', 'Infrared Array', 'Modulated', -123.29, 62983.296, 594.980, 85078.217, -3.336, -232.08, 2723.58, 5.485, 985.650, 'PM', 0.7430, 55141.097, 250.88, 'Unknown', 174.3, 35.55, -166.81, 'Medium', 'Clean', 'Severe');
INSERT INTO observationalconditions VALUES ('AS215245', '00:00:00', '2021-04-11', 22.71);
INSERT INTO observationalconditions VALUES ('AS348567', '00:00:00', '2022-04-05', 9.75);
INSERT INTO observationalconditions VALUES ('AS745021', '00:00:00', '2024-09-02', 2.35);
INSERT INTO observationalconditions VALUES ('AS563918', '00:00:00', '2015-03-03', 14.75);
INSERT INTO observationalconditions VALUES ('AS257418', '00:00:00', '2019-12-18', 6.37);
INSERT INTO observationalconditions VALUES ('AS691966', '00:00:00', '2020-06-15', 10.22);
INSERT INTO observationalconditions VALUES ('AS748882', '00:00:00', '2024-08-01', 19.22);
INSERT INTO observationalconditions VALUES ('AS846535', '00:00:00', '2022-08-16', 18.64);
INSERT INTO observationalconditions VALUES ('AS177908', '00:00:00', '2016-06-09', 0.63);
INSERT INTO observationalconditions VALUES ('AS976795', '00:00:00', '2020-12-30', 12.03);
INSERT INTO observationalconditions VALUES ('AS637827', '00:00:00', '2022-04-24', 19.89);
INSERT INTO observationalconditions VALUES ('AS664916', '00:00:00', '2015-10-15', 7.42);
INSERT INTO observationalconditions VALUES ('AS543719', '00:00:00', '2015-10-12', 2.98);
INSERT INTO observationalconditions VALUES ('AS874183', '00:00:00', '2017-06-30', 17.46);
INSERT INTO observationalconditions VALUES ('AS421846', '00:00:00', '2024-10-22', 6.00);
INSERT INTO observationalconditions VALUES ('AS406588', '00:00:00', '2020-11-27', 6.30);
INSERT INTO researchprocess VALUES ('AS215245', 'Medium', 'Scheduled', 'Pending', 'Published', 'Medium', 'Funded', 'Solo', 'Public', 'Partial', NULL);
INSERT INTO researchprocess VALUES ('AS348567', 'Medium', 'Completed', 'In Progress', 'Submitted', 'Medium', 'Pending', 'Solo', 'Public', 'Full', 'Decade local with me.');
INSERT INTO researchprocess VALUES ('AS745021', 'Medium', 'Completed', 'In Progress', 'Published', 'Low', 'Pending', 'Team', 'Public', 'Full', NULL);
INSERT INTO researchprocess VALUES ('AS563918', 'High', 'Completed', 'In Progress', 'Submitted', 'High', 'Unfunded', 'Team', 'Classified', 'Partial', NULL);
INSERT INTO researchprocess VALUES ('AS257418', 'Urgent', 'Scheduled', 'In Progress', 'Published', 'Medium', 'Funded', 'International', 'Public', NULL, 'Then increase economy she church dark.');
INSERT INTO researchprocess VALUES ('AS691966', 'Low', 'Completed', 'Completed', 'Draft', 'Low', 'Funded', 'Solo', 'Classified', 'Full', 'Quickly best analysis people.');
INSERT INTO researchprocess VALUES ('AS748882', 'Low', 'Required', 'Completed', 'Published', 'Medium', 'Funded', 'International', 'Public', NULL, NULL);
INSERT INTO researchprocess VALUES ('AS846535', 'Urgent', 'Required', 'Completed', 'Published', 'Low', 'Pending', 'Solo', 'Public', NULL, NULL);
INSERT INTO researchprocess VALUES ('AS177908', 'Medium', 'Required', 'Completed', 'Draft', 'High', 'Pending', 'Team', 'Restricted', NULL, 'Soldier budget federal.');
INSERT INTO researchprocess VALUES ('AS976795', 'Medium', 'Completed', 'Pending', 'Submitted', 'Medium', 'Funded', 'Team', 'Restricted', 'Partial', 'In position start.');
INSERT INTO researchprocess VALUES ('AS637827', 'High', 'Completed', 'In Progress', 'Draft', 'High', 'Pending', 'Solo', 'Public', NULL, 'Act decade step.');
INSERT INTO researchprocess VALUES ('AS664916', 'High', 'Required', 'In Progress', 'Published', 'Medium', 'Pending', 'Team', 'Public', 'Partial', NULL);
INSERT INTO researchprocess VALUES ('AS543719', 'High', 'Required', 'Completed', 'Draft', 'Medium', 'Pending', 'Solo', 'Public', 'Full', NULL);
INSERT INTO researchprocess VALUES ('AS874183', 'Medium', 'Completed', 'In Progress', 'Submitted', 'High', 'Funded', 'Team', 'Public', 'Full', 'Story clear four for owner once treat.');
INSERT INTO researchprocess VALUES ('AS421846', 'Urgent', 'Required', 'In Progress', 'Published', 'Low', 'Unfunded', 'Solo', 'Public', 'Full', 'Explain several there.');
INSERT INTO researchprocess VALUES ('AS406588', 'Medium', 'Completed', 'Completed', 'Published', 'High', 'Funded', 'International', 'Public', 'Full', 'Will decide open final school reality.');
INSERT INTO signaladvancedphenomena VALUES ('AS215245', 'Minimal', 'Strong', 'Observed', 'Strong', 'Complex', 'Possible', 'High', 'Moderate');
INSERT INTO signaladvancedphenomena VALUES ('AS348567', 'Severe', 'Weak', 'Observed', 'Possible', NULL, NULL, 'Low', 'Moderate');
INSERT INTO signaladvancedphenomena VALUES ('AS745021', 'Minimal', NULL, 'Significant', 'Strong', 'Simple', NULL, NULL, 'Major');
INSERT INTO signaladvancedphenomena VALUES ('AS563918', 'Moderate', 'Weak', 'Significant', 'Strong', 'Complex', NULL, NULL, 'Major');
INSERT INTO signaladvancedphenomena VALUES ('AS257418', 'Minimal', 'Strong', 'Observed', 'Strong', 'Simple', 'Identified', NULL, 'Minor');
INSERT INTO signaladvancedphenomena VALUES ('AS691966', 'Minimal', 'Weak', 'Significant', 'Strong', 'Simple', NULL, 'Low', 'Moderate');
INSERT INTO signaladvancedphenomena VALUES ('AS748882', 'Severe', 'Weak', 'Observed', 'Possible', 'Simple', 'Identified', 'Low', 'Minor');
INSERT INTO signaladvancedphenomena VALUES ('AS846535', 'Minimal', NULL, NULL, 'Possible', 'Complex', 'Possible', 'Low', 'Minor');
INSERT INTO signaladvancedphenomena VALUES ('AS177908', 'Moderate', 'Strong', NULL, 'Strong', 'Simple', NULL, 'Low', 'Major');
INSERT INTO signaladvancedphenomena VALUES ('AS976795', 'Minimal', 'Weak', 'Observed', 'Strong', NULL, 'Possible', 'High', 'Moderate');
INSERT INTO signaladvancedphenomena VALUES ('AS637827', 'Minimal', 'Weak', 'Observed', NULL, NULL, 'Identified', 'Low', 'Major');
INSERT INTO signaladvancedphenomena VALUES ('AS664916', 'Minimal', NULL, 'Observed', 'Possible', 'Simple', 'Possible', 'Low', 'Minor');
INSERT INTO signaladvancedphenomena VALUES ('AS543719', 'Minimal', 'Weak', NULL, NULL, 'Complex', NULL, NULL, 'Major');
INSERT INTO signaladvancedphenomena VALUES ('AS874183', 'Minimal', 'Strong', NULL, NULL, 'Simple', 'Identified', 'Low', 'Major');
INSERT INTO signaladvancedphenomena VALUES ('AS421846', 'Moderate', NULL, NULL, 'Strong', 'Complex', NULL, 'Low', 'Minor');
INSERT INTO signaladvancedphenomena VALUES ('AS406588', 'Severe', 'Weak', 'Significant', 'Possible', NULL, NULL, 'Low', 'Moderate');
INSERT INTO signalclassification VALUES ('AS215245', 'Candidate', 'Random', 19, 60508.140, 0.625, 0.65, 0.234, 78.40);
INSERT INTO signalclassification VALUES ('AS348567', 'Candidate', 'Random', 51, 47612.520, 0.649, 1.43, 0.355, 10.50);
INSERT INTO signalclassification VALUES ('AS745021', 'Unknown', 'Unknown', 1, 11646.130, 0.189, 4.44, 0.922, 86.40);
INSERT INTO signalclassification VALUES ('AS563918', 'Unknown', 'Random', 45, 17339.330, 0.466, 5.55, 0.328, 86.70);
INSERT INTO signalclassification VALUES ('AS257418', 'Artificial', 'Random', 61, 22132.850, 0.179, 4.18, 0.605, 84.20);
INSERT INTO signalclassification VALUES ('AS691966', 'Candidate', 'Periodic', 72, 22406.180, 0.287, 5.92, 0.130, 35.30);
INSERT INTO signalclassification VALUES ('AS748882', 'Artificial', 'Random', 19, 53024.880, 0.451, 0.42, 0.366, 60.00);
INSERT INTO signalclassification VALUES ('AS846535', 'Unknown', 'Random', 84, 78360.370, 0.006, 6.62, 0.133, 75.30);
INSERT INTO signalclassification VALUES ('AS177908', 'Unknown', 'Unknown', 17, 34408.190, 0.231, 6.36, 0.757, 11.70);
INSERT INTO signalclassification VALUES ('AS976795', 'Candidate', 'Unknown', 72, 69576.800, 0.536, 5.50, 0.031, 29.00);
INSERT INTO signalclassification VALUES ('AS637827', 'Candidate', 'Structured', 20, 40053.320, 0.159, 5.85, 0.195, 74.60);
INSERT INTO signalclassification VALUES ('AS664916', 'Natural', 'Random', 65, 5871.790, 0.336, 6.55, 0.184, 83.40);
INSERT INTO signalclassification VALUES ('AS543719', 'Candidate', 'Structured', 62, 66503.500, 0.403, 5.49, 0.930, 18.90);
INSERT INTO signalclassification VALUES ('AS874183', 'Unknown', 'Random', 68, 7284.470, 0.774, 3.09, 0.735, 68.60);
INSERT INTO signalclassification VALUES ('AS421846', 'Natural', 'Random', 69, 47861.500, 0.381, 4.11, 0.244, 59.60);
INSERT INTO signalclassification VALUES ('AS406588', 'Unknown', 'Random', 15, 15511.340, 0.258, 6.32, 0.326, 3.40);
INSERT INTO signaldecoding VALUES ('AS215245', 'Tertiary', 7.890, 'Low', 93.70, 'FFT', 'Failed', 180, 171.88, 'High', 'Preliminary', 'Verified', 'Rejected');
INSERT INTO signaldecoding VALUES ('AS348567', 'Binary', 1.580, NULL, 66.90, 'Neural Network', 'Completed', 951, 561.01, 'Medium', 'Detailed', 'Partially', 'Rejected');
INSERT INTO signaldecoding VALUES ('AS745021', 'Unknown', 1.280, 'Medium', 76.30, 'FFT', 'In Progress', 684, 276.22, 'Low', 'Detailed', 'Partially', 'Confirmed');
INSERT INTO signaldecoding VALUES ('AS563918', 'Tertiary', 9.220, NULL, 9.40, 'Neural Network', 'In Progress', 987, 148.77, 'Extreme', 'Comprehensive', 'Unverified', 'Rejected');
INSERT INTO signaldecoding VALUES ('AS257418', 'Unknown', 7.810, 'Low', 82.70, 'FFT', 'In Progress', 183, 102.63, 'Low', 'Comprehensive', 'Unverified', 'Pending');
INSERT INTO signaldecoding VALUES ('AS691966', 'Binary', 2.970, 'Low', 47.20, 'Wavelet', 'Failed', 64, 57.06, 'Medium', 'Comprehensive', 'Unverified', 'Confirmed');
INSERT INTO signaldecoding VALUES ('AS748882', 'Tertiary', 7.590, NULL, 44.00, 'FFT', 'Completed', 93, 722.57, 'Medium', 'Detailed', 'Verified', 'Pending');
INSERT INTO signaldecoding VALUES ('AS846535', 'Complex', 5.160, 'Low', 19.60, 'Quantum', 'In Progress', 729, 768.79, 'Extreme', 'Comprehensive', 'Unverified', 'Confirmed');
INSERT INTO signaldecoding VALUES ('AS177908', 'Complex', 2.500, 'Low', 30.50, 'Neural Network', 'Completed', 765, 580.61, 'Extreme', 'Preliminary', 'Unverified', 'Rejected');
INSERT INTO signaldecoding VALUES ('AS976795', 'Unknown', 5.300, 'Medium', 76.50, 'Wavelet', 'Completed', 183, 280.92, 'Extreme', 'Preliminary', 'Partially', 'Rejected');
INSERT INTO signaldecoding VALUES ('AS637827', 'Unknown', 7.570, 'High', 20.30, 'Neural Network', 'In Progress', 279, 226.92, 'Medium', 'Preliminary', 'Partially', 'Pending');
INSERT INTO signaldecoding VALUES ('AS664916', 'Tertiary', 4.890, NULL, 50.40, 'Quantum', 'Failed', 735, 756.18, 'Extreme', 'Comprehensive', 'Verified', 'Rejected');
INSERT INTO signaldecoding VALUES ('AS543719', 'Unknown', 5.700, 'Low', 29.40, 'Wavelet', 'In Progress', 547, 455.01, 'High', 'Detailed', 'Unverified', 'Rejected');
INSERT INTO signaldecoding VALUES ('AS874183', 'Unknown', 4.070, 'Medium', 68.20, 'Wavelet', 'In Progress', 968, 629.12, 'High', 'Preliminary', 'Verified', 'Pending');
INSERT INTO signaldecoding VALUES ('AS421846', 'Tertiary', 8.170, 'Medium', 27.90, 'FFT', 'Completed', 929, 137.57, 'High', 'Detailed', 'Unverified', 'Pending');
INSERT INTO signaldecoding VALUES ('AS406588', 'Tertiary', 5.510, 'High', 40.90, 'Quantum', 'In Progress', 668, 11.56, 'Extreme', 'Detailed', 'Verified', 'Rejected');
INSERT INTO signaldynamics VALUES ('AS215245', '7.6', NULL, 'Unknown', '0.49', '0.812', '0.637', '0.084', '0.094', '0.519', '0.09', '870.56', '0.596');
INSERT INTO signaldynamics VALUES ('AS348567', '24.9', 'Sporadic', 'Static', '0.499', '0.714', '0.971', '0.468', '0.865', '0.646', '0.12', '789.94', '0.41');
INSERT INTO signaldynamics VALUES ('AS745021', '52.3', NULL, 'Static', '0.674', '0.762', '0.673', '0.485', '0.15', '0.241', '0.979', '514.79', '0.122');
INSERT INTO signaldynamics VALUES ('AS563918', '65.5', 'Sporadic', 'Dynamic', '0.178', '0.554', '0.069', '0.374', '0.177', '0.338', '0.331', '192.95', '0.907');
INSERT INTO signaldynamics VALUES ('AS257418', '13.4', 'Sporadic', 'Static', '0.958', '0.298', '0.555', '0.569', '0.92', '0.708', '0.662', '741.2', '0.465');
INSERT INTO signaldynamics VALUES ('AS691966', '29.0', 'Sporadic', 'Dynamic', '0.762', '0.007', '0.206', '0.718', '0.248', '0.963', '0.041', '189.39', '0.209');
INSERT INTO signaldynamics VALUES ('AS748882', '38.6', NULL, 'Static', '0.249', '0.371', '0.661', '0.181', '0.101', '0.188', '0.662', '453.35', '0.538');
INSERT INTO signaldynamics VALUES ('AS846535', '34.1', 'Regular', 'Dynamic', '0.687', '0.07', '0.599', '0.236', '0.098', '0.933', '0.166', '26.45', '0.21');
INSERT INTO signaldynamics VALUES ('AS177908', '32.6', 'Regular', 'Unknown', '0.187', '0.305', '0.358', '0.773', '0.855', '0.646', '0.373', '360.23', '0.159');
INSERT INTO signaldynamics VALUES ('AS976795', '85.2', 'Regular', 'Static', '0.733', '0.572', '0.664', '0.556', '0.494', '0.27', '0.311', '143.44', '0.997');
INSERT INTO signaldynamics VALUES ('AS637827', '50.5', 'Regular', 'Dynamic', '0.738', '0.072', '0.878', '0.947', '0.12', '0.83', '0.545', '521.87', '0.914');
INSERT INTO signaldynamics VALUES ('AS664916', '24.3', NULL, 'Dynamic', '0.983', '0.399', '0.244', '0.214', '0.043', '0.967', '0.54', '229.29', '0.602');
INSERT INTO signaldynamics VALUES ('AS543719', '12.3', 'Sporadic', 'Unknown', '0.172', '0.36', '0.234', '0.66', '0.949', '0.248', '0.439', '572.93', '0.43');
INSERT INTO signaldynamics VALUES ('AS874183', '19.9', 'Sporadic', 'Unknown', '0.881', '0.744', '0.841', '0.805', '0.521', '0.077', '0.201', '508.14', '0.247');
INSERT INTO signaldynamics VALUES ('AS421846', '52.0', 'Sporadic', 'Static', '0.118', '0.047', '0.457', '0.023', '0.985', '0.374', '0.106', '616.89', '0.543');
INSERT INTO signaldynamics VALUES ('AS406588', '94.9', 'Sporadic', 'Unknown', '0.676', '0.332', '0.697', '0.902', '0.742', '0.419', '0.83', '860.83', '0.801');
INSERT INTO signalprobabilities VALUES ('AS215245', 0.1890, 0.4070, 0.2200, 0.0390, 0.7, 0.9460, 0.44, 0.962, 0.3);
INSERT INTO signalprobabilities VALUES ('AS348567', 0.7880, 0.5780, 0.4520, -0.8140, 0.392, 0.3460, 0.80, 0.631, 0.4);
INSERT INTO signalprobabilities VALUES ('AS745021', 0.7580, 0.7440, 0.9860, -0.1090, 0.488, 0.1790, 0.00, 0.140, 0.9);
INSERT INTO signalprobabilities VALUES ('AS563918', 0.1800, 0.4950, 0.5810, 0.8750, 0.588, 0.4480, 0.81, 0.649, 0.4);
INSERT INTO signalprobabilities VALUES ('AS257418', 0.9980, 0.8580, 0.7530, 0.3420, 0.537, 0.1390, 0.49, 0.654, 0.1);
INSERT INTO signalprobabilities VALUES ('AS691966', 0.6500, 0.3050, 0.0370, 0.9370, 0.034, 0.9800, 0.34, 0.105, 0.9);
INSERT INTO signalprobabilities VALUES ('AS748882', 0.7090, 0.9070, 0.5880, 0.9890, 0.475, 0.2740, 0.75, 0.587, 0.1);
INSERT INTO signalprobabilities VALUES ('AS846535', 0.0360, 0.0170, 0.3660, -0.5220, 0.67, 0.9400, 0.63, 0.638, 0.5);
INSERT INTO signalprobabilities VALUES ('AS177908', 0.4770, 0.3670, 0.0240, -0.6340, 0.734, 0.8660, 0.73, 0.244, 0.6);
INSERT INTO signalprobabilities VALUES ('AS976795', 0.7940, 0.0910, 0.3130, -0.6380, 0.919, 0.7960, 0.97, 0.799, 0.6);
INSERT INTO signalprobabilities VALUES ('AS637827', 0.9050, 0.2190, 0.7870, -0.6110, 0.811, 0.0750, 0.05, 0.875, 0.9);
INSERT INTO signalprobabilities VALUES ('AS664916', 0.1560, 0.8300, 0.5850, 0.8580, 0.872, 0.5270, 0.18, 0.097, 0.4);
INSERT INTO signalprobabilities VALUES ('AS543719', 0.4760, 0.2630, 0.4420, -0.8120, 0.955, 0.4040, 0.41, 0.908, 0.4);
INSERT INTO signalprobabilities VALUES ('AS874183', 0.4560, 0.4010, 0.7970, -0.1950, 0.171, 0.6610, 0.50, 0.580, 0.7);
INSERT INTO signalprobabilities VALUES ('AS421846', 0.3070, 0.3130, 0.7180, 0.6250, 0.699, 0.1000, 0.45, 0.643, 0.4);
INSERT INTO sourceproperties VALUES ('AS215245', 171.3076, 61.4051, 699161.46, 330.43, -40.05, 'Galaxy', 'Main Sequence', 26.13, 12208, 83.027, 7.409, -1.158, 2.21, -833.88);
INSERT INTO sourceproperties VALUES ('AS348567', 2.9915, -57.3078, 504511.77, 355.66, -30.68, 'Unknown', 'Dwarf', 5.39, 7271, 24.970, 9.598, -2.158, 1.29, -193.49);
INSERT INTO sourceproperties VALUES ('AS745021', 217.7981, -40.7914, 847077.15, 75.22, 58.58, 'Star', 'Unknown', 18.29, 16409, 14.613, 1.428, -0.391, 2.59, -462.82);
INSERT INTO sourceproperties VALUES ('AS563918', 27.8032, 13.8810, 504657.03, 104.03, -21.51, 'Galaxy', 'Dwarf', -23.59, 19511, 9.433, 12.722, -1.398, 8.96, 416.20);
INSERT INTO sourceproperties VALUES ('AS257418', 306.1784, 62.4404, 834388.89, 335.93, 18.82, 'Planet', 'Dwarf', -25.28, 28775, 45.313, 7.557, -2.860, 7.33, 929.98);
INSERT INTO sourceproperties VALUES ('AS691966', 265.7550, -67.1333, 193420.71, 78.34, -75.02, 'Planet', 'Unknown', 24.16, 28590, 23.038, 6.447, -0.294, 0.41, -261.65);
INSERT INTO sourceproperties VALUES ('AS748882', 260.7683, -2.0470, 694065.67, 3.92, 10.18, 'Unknown', 'Main Sequence', 5.97, 6377, 14.930, 8.624, -0.647, 0.15, 119.85);
INSERT INTO sourceproperties VALUES ('AS846535', 332.4224, -32.3651, 342539.79, 83.87, -80.67, 'Star', 'Giant', 5.33, 19981, 5.750, 8.171, -0.106, 7.34, 195.48);
INSERT INTO sourceproperties VALUES ('AS177908', 59.0941, -59.0190, 502719.58, 236.55, 51.43, 'Star', 'Unknown', 13.60, 35888, 43.553, 4.479, 0.016, 7.57, -595.59);
INSERT INTO sourceproperties VALUES ('AS976795', 0.3944, 33.5105, 739292.83, 243.46, -70.75, 'Star', 'Unknown', 27.59, 23933, 98.566, 3.906, -2.832, 0.90, -659.51);
INSERT INTO sourceproperties VALUES ('AS637827', 116.9006, 68.8739, 822631.86, 240.79, -51.36, 'Planet', 'Dwarf', -6.36, 9909, 43.466, 8.203, 0.536, 0.29, 145.92);
INSERT INTO sourceproperties VALUES ('AS664916', 328.0163, 57.5095, 475639.97, 55.95, 79.89, 'Unknown', 'Giant', -17.83, 40038, 80.490, 4.047, -0.751, 3.08, 918.42);
INSERT INTO sourceproperties VALUES ('AS543719', 104.9676, 49.4080, 623652.48, 222.44, 61.63, 'Unknown', 'Main Sequence', -14.79, 32175, 21.902, 0.141, -2.561, 3.02, -300.42);
INSERT INTO sourceproperties VALUES ('AS874183', 303.0924, 75.4193, 312908.25, 247.53, 73.35, 'Unknown', 'Dwarf', -15.65, 33611, 80.595, 4.338, -0.335, 1.77, -997.40);
INSERT INTO sourceproperties VALUES ('AS421846', 345.2869, 57.0075, 182108.91, 217.09, 17.60, 'Unknown', 'Giant', -10.19, 16063, 90.069, 4.744, 0.886, 0.72, 560.89);
