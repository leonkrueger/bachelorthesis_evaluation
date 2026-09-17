CREATE TABLE `artifactscore`
(`artregistry` VARCHAR(1023),
`artname` VARCHAR(1023),
`artdynasty` VARCHAR(1023),
`artageyears` BIGINT,
`mattype` VARCHAR(1023),
`conservestatus` VARCHAR(1023));
CREATE TABLE `exhibitionhalls`
(`hallrecord` VARCHAR(1023),
`cctvcoverage` VARCHAR(1023),
`motiondetectstatus` VARCHAR(1023),
`alarmsysstatus` VARCHAR(1023),
`accessctrlstatus` VARCHAR(1023),
`visitorcountdaily` BIGINT,
`visitorflowrate` VARCHAR(1023),
`visitordwellmin` BIGINT,
`visitorbehaviornotes` VARCHAR(1023));
CREATE TABLE `artifactratings`
(`ratingrecordregistry` BIGINT,
`artref` VARCHAR(1023),
`histsignrating` BIGINT,
`researchvalrating` BIGINT,
`exhibitvalrating` BIGINT,
`cultscore` BIGINT,
`publicaccessrating` BIGINT,
`eduvaluerating` BIGINT,
`conservediff` VARCHAR(1023),
`treatcomplexity` VARCHAR(1023),
`matstability` VARCHAR(1023),
`deteriorrate` VARCHAR(1023));
CREATE TABLE `sensitivitydata`
(`sensitivityregistry` BIGINT,
`artref` VARCHAR(1023),
`envsensitivity` VARCHAR(1023),
`lightsensitivity` VARCHAR(1023),
`tempsensitivity` VARCHAR(1023),
`humiditysensitivity` VARCHAR(1023),
`vibrasensitivity` VARCHAR(1023),
`pollutantsensitivity` VARCHAR(1023),
`pestsensitivity` VARCHAR(1023),
`handlesensitivity` VARCHAR(1023),
`transportsensitivity` VARCHAR(1023),
`displaysensitivity` VARCHAR(1023),
`storagesensitivity` VARCHAR(1023));
CREATE TABLE `showcases`
(`showcasereg` VARCHAR(1023),
`hallref` VARCHAR(1023),
`airtightness` DOUBLE,
`showcasematerial` VARCHAR(1023),
`sealcondition` VARCHAR(1023),
`maintstatus` VARCHAR(1023),
`filterstatus` VARCHAR(1023),
`silicagelstatus` VARCHAR(1023),
`silicagelchangedate` DATE,
`humiditybuffercap` BIGINT,
`pollutantabsorbcap` DOUBLE,
`leakrate` DOUBLE,
`pressurepa` BIGINT,
`inertgassysstatus` VARCHAR(1023),
`firesuppresssys` VARCHAR(1023),
`empowerstatus` VARCHAR(1023),
`backupsysstatus` VARCHAR(1023));
CREATE TABLE `artifactsecurityaccess`
(`secrecordregistry` BIGINT,
`artref` VARCHAR(1023),
`ratingref` BIGINT,
`loanstatus` VARCHAR(1023),
`insvalueusd` DOUBLE,
`seclevel` VARCHAR(1023),
`accessrestrictions` VARCHAR(1023),
`docustatus` VARCHAR(1023),
`photodocu` VARCHAR(1023),
`condreportstatus` VARCHAR(1023),
`conserverecstatus` VARCHAR(1023),
`researchaccessstatus` VARCHAR(1023),
`digitalrecstatus` VARCHAR(1023));
CREATE TABLE `riskassessments`
(`riskassessregistry` BIGINT,
`artrefconcerned` VARCHAR(1023),
`hallrefconcerned` VARCHAR(1023),
`riskassesslevel` VARCHAR(1023),
`emergresponseplan` VARCHAR(1023),
`evacpriority` VARCHAR(1023),
`handlerestrictions` VARCHAR(1023),
`conservepriorityscore` BIGINT);
CREATE TABLE `environmentalreadingscore`
(`envreadregistry` BIGINT,
`monitorcode` VARCHAR(1023),
`readtimestamp` DATETIME,
`showcaseref` VARCHAR(1023),
`tempc` BIGINT,
`tempvar24h` DOUBLE,
`relhumidity` BIGINT,
`humvar24h` BIGINT,
`airpresshpa` DOUBLE);
CREATE TABLE `usagerecords`
(`usagerecordregistry` BIGINT,
`artrefused` VARCHAR(1023),
`showcaserefused` VARCHAR(1023),
`sensdatalink` BIGINT,
`displayrotatesched` VARCHAR(1023),
`displaydurmonths` BIGINT,
`restperiodmonths` BIGINT,
`displayreqs` VARCHAR(1023),
`storagereqs` VARCHAR(1023),
`handlingreqs` VARCHAR(1023),
`transportreqs` VARCHAR(1023),
`packingreqs` VARCHAR(1023),
`resaccessfreq` VARCHAR(1023),
`publicdispfreq` VARCHAR(1023),
`loanfreq` VARCHAR(1023),
`handlefreq` VARCHAR(1023),
`docufreq` VARCHAR(1023),
`monitorfreq` VARCHAR(1023),
`assessfreq` VARCHAR(1023),
`maintfreq` VARCHAR(1023),
`inspectfreq` VARCHAR(1023),
`calibfreq` VARCHAR(1023),
`certstatus` VARCHAR(1023),
`compliancestatus` VARCHAR(1023),
`auditstatus` VARCHAR(1023),
`qualityctrlstatus` VARCHAR(1023));
CREATE TABLE `airqualityreadings`
(`aqrecordregistry` BIGINT,
`envreadref` BIGINT,
`co2ppm` BIGINT,
`tvocppb` BIGINT,
`ozoneppb` BIGINT,
`so2ppb` BIGINT,
`no2ppb` BIGINT,
`pm25conc` DOUBLE,
`pm10conc` DOUBLE,
`hchoconc` DOUBLE,
`airexrate` DOUBLE,
`airvelms` DOUBLE);
CREATE TABLE `lightandradiationreadings`
(`lightradregistry` BIGINT,
`envreadref` BIGINT,
`lightlux` BIGINT,
`uvuwcm2` DOUBLE,
`irwm2` DOUBLE,
`visibleexplxh` BIGINT);
CREATE TABLE `surfaceandphysicalreadings`
(`surfphysregistry` BIGINT,
`envreadref` BIGINT,
`vibralvlmms2` DOUBLE,
`noisedb` BIGINT,
`dustaccummgm2` DOUBLE,
`microbialcountcfu` BIGINT,
`moldriskidx` DOUBLE,
`pestactivitylvl` VARCHAR(1023),
`pesttrapcount` BIGINT,
`pestspeciesdetected` VARCHAR(1023),
`surfaceph` DOUBLE,
`matmoistcontent` DOUBLE,
`saltcrystalrisk` VARCHAR(1023),
`metalcorroderate` DOUBLE,
`organicdegradidx` DOUBLE,
`colorchangedeltae` DOUBLE,
`surfacetempc` DOUBLE,
`surfacerh` DOUBLE,
`condenserisk` VARCHAR(1023),
`thermalimgstatus` VARCHAR(1023),
`structstability` VARCHAR(1023),
`crackmonitor` VARCHAR(1023),
`deformmm` DOUBLE,
`wtchangepct` DOUBLE,
`surfdustcoverage` BIGINT,
`o2concentration` DOUBLE,
`n2concentration` DOUBLE);
CREATE TABLE `conditionassessments`
(`conditionassessregistry` BIGINT,
`artrefexamined` VARCHAR(1023),
`showcaserefexamined` VARCHAR(1023),
`lightreadrefobserved` BIGINT,
`condassessscore` BIGINT,
`conserveassessdate` DATE,
`nextassessdue` DATE);
CREATE TABLE `conservationandmaintenance`
(`conservemaintregistry` BIGINT,
`artrefmaintained` VARCHAR(1023),
`hallrefmaintained` VARCHAR(1023),
`surfreadrefobserved` BIGINT,
`conservetreatstatus` VARCHAR(1023),
`treatpriority` VARCHAR(1023),
`lastcleaningdate` DATE,
`nextcleaningdue` DATE,
`cleanintervaldays` BIGINT,
`maintlog` VARCHAR(1023),
`incidentreportstatus` VARCHAR(1023),
`emergencydrillstatus` VARCHAR(1023),
`stafftrainstatus` VARCHAR(1023),
`budgetallocstatus` VARCHAR(1023),
`maintbudgetstatus` VARCHAR(1023),
`conservefreq` VARCHAR(1023),
`intervhistory` VARCHAR(1023),
`prevtreatments` BIGINT,
`treateffectiveness` VARCHAR(1023),
`reversibilitypotential` VARCHAR(1023));
INSERT INTO artifactscore VALUES ('ART48269', 'Conference Painting', 'Tang', 754, 'Wood', 'Fair');
INSERT INTO artifactscore VALUES ('ART75371', 'Also Vase', 'Tang', 1944, 'Wood', 'Poor');
INSERT INTO artifactscore VALUES ('ART75963', 'For Manuscript', 'Yuan', 2734, 'Paper', 'Fair');
INSERT INTO artifactscore VALUES ('ART79576', 'Personal Textile', 'Tang', 1954, 'Paper', 'Excellent');
INSERT INTO artifactscore VALUES ('ART58041', 'Prepare Manuscript', 'Ming', 2162, 'Jade', 'Excellent');
INSERT INTO artifactscore VALUES ('ART99181', 'Cover Sculpture', 'Yuan', 2512, 'Jade', 'Fair');
INSERT INTO artifactscore VALUES ('ART77111', 'Produce Vase', 'Tang', 639, 'Ceramic', 'Poor');
INSERT INTO artifactscore VALUES ('ART82500', 'Step Manuscript', 'Tang', 2439, 'Wood', 'Critical');
INSERT INTO artifactscore VALUES ('ART53309', 'Important Textile', 'Qing', 852, 'Wood', 'Fair');
INSERT INTO artifactscore VALUES ('ART72164', 'Late Manuscript', 'Ming', 1734, 'Stone', 'Excellent');
INSERT INTO artifactscore VALUES ('ART70622', 'Market Textile', 'Qing', 2897, 'Bronze', 'Poor');
INSERT INTO artifactscore VALUES ('ART13427', 'Claim Painting', 'Qing', 1816, 'Paper', 'Poor');
INSERT INTO artifactscore VALUES ('ART22236', 'Fly Vase', 'Qing', 2725, 'Wood', 'Fair');
INSERT INTO exhibitionhalls VALUES ('ART48269', 'Partial', 'Partial', 'Maintenance', 'Active', 431, 'Low', 4, 'Good');
INSERT INTO exhibitionhalls VALUES ('ART75371', 'Partial', 'Maintenance', 'Maintenance', 'Maintenance', 565, 'High', 5, 'Good');
INSERT INTO exhibitionhalls VALUES ('ART75963', 'Limited', 'Partial', 'Armed', 'Active', 429, 'High', 24, 'Fair');
INSERT INTO exhibitionhalls VALUES ('ART79576', 'Partial', 'Maintenance', 'Partial', 'Maintenance', 152, 'Low', 23, 'Good');
INSERT INTO exhibitionhalls VALUES ('ART58041', 'Full', 'Active', 'Partial', 'Active', 693, 'Low', 23, 'Poor');
INSERT INTO exhibitionhalls VALUES ('ART99181', 'Partial', 'Partial', 'Maintenance', 'Active', 738, 'Low', 3, 'Poor');
INSERT INTO exhibitionhalls VALUES ('ART77111', 'Full', 'Maintenance', 'Armed', 'Partial', 938, 'Medium', 29, 'Fair');
INSERT INTO exhibitionhalls VALUES ('ART82500', 'Limited', 'Active', 'Armed', 'Maintenance', 922, 'Low', 8, 'Good');
INSERT INTO exhibitionhalls VALUES ('ART53309', 'Full', 'Maintenance', 'Partial', 'Partial', 620, 'High', 23, 'Fair');
INSERT INTO exhibitionhalls VALUES ('ART72164', 'Partial', 'Partial', 'Partial', 'Maintenance', 764, 'Low', 20, 'Poor');
INSERT INTO exhibitionhalls VALUES ('ART70622', 'Limited', 'Active', 'Armed', 'Maintenance', 849, 'Low', 29, 'Good');
INSERT INTO exhibitionhalls VALUES ('ART13427', 'Limited', 'Active', 'Armed', 'Partial', 129, 'Low', 29, 'Good');
INSERT INTO exhibitionhalls VALUES ('ART22236', 'Full', 'Active', 'Maintenance', 'Active', 201, 'High', 6, 'Good');
INSERT INTO artifactratings VALUES (387, 'ART48269', 1, 4, 5, 78, 9, 7, 'High', 'Moderate', 'Moderate', 'Rapid');
INSERT INTO artifactratings VALUES (323, 'ART75371', 1, 4, 10, 99, 3, 3, 'Medium', 'Complex', 'Unstable', 'Slow');
INSERT INTO artifactratings VALUES (37, 'ART75963', 8, 2, 2, 23, 10, 7, 'Low', 'Simple', 'Stable', 'Slow');
INSERT INTO artifactratings VALUES (553, 'ART79576', 4, 4, 9, 80, 2, 4, 'High', 'Complex', 'Moderate', 'Rapid');
INSERT INTO artifactratings VALUES (522, 'ART58041', 9, 3, 10, 55, 9, 9, 'Low', 'Moderate', 'Moderate', 'Moderate');
INSERT INTO artifactratings VALUES (171, 'ART99181', 10, 8, 5, 84, 5, 1, 'Low', 'Moderate', 'Moderate', 'Slow');
INSERT INTO artifactratings VALUES (298, 'ART77111', 5, 2, 10, 3, 10, 10, 'Low', 'Complex', 'Moderate', 'Slow');
INSERT INTO artifactratings VALUES (671, 'ART82500', 10, 7, 8, 90, 3, 9, 'Medium', 'Complex', 'Unstable', 'Rapid');
INSERT INTO artifactratings VALUES (367, 'ART53309', 3, 1, 1, 16, 6, 9, 'High', 'Complex', 'Stable', 'Slow');
INSERT INTO artifactratings VALUES (948, 'ART72164', 5, 2, 1, 80, 6, 9, 'High', 'Complex', 'Stable', 'Rapid');
INSERT INTO artifactratings VALUES (951, 'ART70622', 7, 5, 4, 81, 10, 9, 'Low', 'Moderate', 'Unstable', 'Slow');
INSERT INTO artifactratings VALUES (733, 'ART13427', 8, 3, 6, 71, 4, 5, 'Low', 'Simple', 'Moderate', 'Slow');
INSERT INTO artifactratings VALUES (95, 'ART22236', 4, 7, 4, 93, 6, 9, 'High', 'Moderate', 'Unstable', 'Rapid');
INSERT INTO sensitivitydata VALUES (387, 'ART48269', 'Low', 'Medium', 'Medium', 'Low', 'Low', 'Medium', 'High', 'High', 'Medium', 'High', 'High');
INSERT INTO sensitivitydata VALUES (323, 'ART75371', 'Medium', 'High', 'Low', 'Low', 'High', 'High', 'High', 'High', 'Medium', 'Medium', 'Low');
INSERT INTO sensitivitydata VALUES (37, 'ART75963', 'High', 'High', 'Medium', 'High', 'Medium', 'High', 'High', 'Medium', 'High', 'High', 'High');
INSERT INTO sensitivitydata VALUES (522, 'ART58041', 'Low', 'Medium', 'Low', 'Low', 'Medium', 'Medium', 'High', 'Medium', 'High', 'Low', 'Medium');
INSERT INTO sensitivitydata VALUES (171, 'ART99181', 'Medium', 'Medium', 'High', 'Low', 'High', 'High', 'High', 'High', 'High', 'Medium', 'High');
INSERT INTO sensitivitydata VALUES (298, 'ART77111', 'Medium', 'Low', 'High', 'Medium', 'High', 'Medium', 'Medium', 'High', 'Low', 'High', 'Medium');
INSERT INTO sensitivitydata VALUES (671, 'ART82500', 'High', 'Low', 'Low', 'Low', 'High', 'High', 'Medium', 'Medium', 'Low', 'Medium', 'Low');
INSERT INTO sensitivitydata VALUES (367, 'ART53309', 'Low', 'Low', 'Low', 'High', 'Medium', 'Low', 'High', 'Low', 'Medium', 'Medium', 'Low');
INSERT INTO sensitivitydata VALUES (948, 'ART72164', 'Medium', 'Medium', 'High', 'Low', 'Medium', 'Medium', 'Low', 'Medium', 'Medium', 'Medium', 'Low');
INSERT INTO sensitivitydata VALUES (951, 'ART70622', 'Medium', 'High', 'Low', 'Medium', 'Medium', 'Medium', 'Low', 'Medium', 'Medium', 'Low', 'Low');
INSERT INTO sensitivitydata VALUES (733, 'ART13427', 'Medium', 'Low', 'Low', 'Medium', 'Low', 'Medium', 'Low', 'High', 'Medium', 'Low', 'High');
INSERT INTO sensitivitydata VALUES (95, 'ART22236', 'Low', 'High', 'High', 'Medium', 'Medium', 'Medium', 'High', 'High', 'Medium', 'Low', 'Low');
INSERT INTO showcases VALUES ('SC8459', 'ART48269', 92.6, 'Tempered Glass', 'Poor', 'Good', 'Clean', 'Active', '2024-12-07', 75, 70.60, 0.21, 1, 'Active', 'Standby', 'Active', 'Testing');
INSERT INTO showcases VALUES ('SC1214', 'ART75371', 96.6, 'Glass', 'Excellent', 'Overdue', 'Replace Soon', 'Replace Soon', '2025-01-12', 75, 82.90, 0.36, 2, 'Maintenance', 'Standby', 'Standby', 'Maintenance');
INSERT INTO showcases VALUES ('SC7973', 'ART75963', 92.7, 'Glass', 'Poor', 'Due', 'Clean', 'Replace Now', '2024-08-23', 79, 82.30, 0.11, 4, 'Standby', 'Standby', 'Standby', 'Maintenance');
INSERT INTO showcases VALUES ('SC1898', 'ART79576', 97.8, 'Tempered Glass', 'Fair', 'Good', 'Clean', 'Active', '2025-01-07', 86, 99.00, 0.15, -1, 'Maintenance', 'Active', 'Standby', 'Maintenance');
INSERT INTO showcases VALUES ('SC4542', 'ART58041', 96.8, 'Acrylic', 'Poor', 'Due', 'Replace Now', 'Replace Now', '2025-01-27', 97, 90.00, 0.2, -1, 'Active', 'Maintenance', 'Testing', 'Maintenance');
INSERT INTO showcases VALUES ('SC1934', 'ART99181', 91.3, 'Glass', 'Poor', 'Due', 'Replace Now', 'Active', '2025-01-27', 77, 89.90, 0.22, 4, 'Standby', 'Active', 'Active', 'Ready');
INSERT INTO showcases VALUES ('SC9074', 'ART77111', 95.6, 'Tempered Glass', 'Excellent', 'Overdue', 'Clean', 'Replace Soon', '2024-12-12', 84, 60.30, 0.44, -1, 'Maintenance', 'Active', 'Testing', 'Ready');
INSERT INTO showcases VALUES ('SC2476', 'ART82500', 95.9, 'Tempered Glass', 'Fair', 'Due', 'Clean', 'Active', '2025-02-14', 71, 62.20, 0.12, -4, 'Maintenance', 'Active', 'Testing', 'Ready');
INSERT INTO showcases VALUES ('SC3060', 'ART53309', 91.3, 'Tempered Glass', 'Good', 'Good', 'Replace Now', 'Active', '2024-12-19', 86, 84.60, 0.02, -1, 'Maintenance', 'Maintenance', 'Testing', 'Testing');
INSERT INTO showcases VALUES ('SC3546', 'ART72164', 99.6, 'Acrylic', 'Poor', 'Due', 'Replace Now', 'Replace Now', '2024-12-30', 97, 82.30, 0.24, 4, 'Active', 'Active', 'Testing', 'Ready');
INSERT INTO showcases VALUES ('SC8058', 'ART70622', 100, 'Acrylic', 'Fair', 'Due', 'Replace Soon', 'Replace Soon', '2025-01-11', 89, 99.00, 0.04, 1, 'Active', 'Standby', 'Active', 'Ready');
INSERT INTO showcases VALUES ('SC3682', 'ART13427', 99.8, 'Glass', 'Good', 'Good', 'Replace Now', 'Replace Soon', '2024-08-27', 81, 87.60, 0.44, -4, 'Standby', 'Standby', 'Standby', 'Testing');
INSERT INTO showcases VALUES ('SC6557', 'ART22236', 97.1, 'Glass', 'Fair', 'Good', 'Replace Soon', 'Replace Soon', '2024-11-22', 80, 99.70, 0.2, -4, 'Standby', 'Standby', 'Testing', 'Ready');
INSERT INTO artifactsecurityaccess VALUES (387, 'ART48269', 387, 'On Loan', 14764.00, 'Level 1', 'Limited', 'Updating', 'Recent', 'Overdue', 'Pending', 'Restricted', 'In Progress');
INSERT INTO artifactsecurityaccess VALUES (323, 'ART75371', 323, 'Not Available', 814515.00, 'Level 3', 'Restricted', 'Partial', 'Required', 'Current', 'Pending', 'Available', 'In Progress');
INSERT INTO artifactsecurityaccess VALUES (37, 'ART75963', 37, 'Available', 794125.00, 'Level 2', 'Limited', 'Updating', 'Required', 'Due', 'Pending', 'Available', 'Partial');
INSERT INTO artifactsecurityaccess VALUES (553, 'ART79576', 553, 'On Loan', 454877.00, 'Level 2', 'Limited', 'Partial', 'Outdated', 'Overdue', 'Review Required', 'Limited', 'Partial');
INSERT INTO artifactsecurityaccess VALUES (522, 'ART58041', 522, 'Not Available', 440665.00, 'Level 3', 'Restricted', 'Complete', 'Outdated', 'Current', 'Pending', 'Limited', 'Partial');
INSERT INTO artifactsecurityaccess VALUES (171, 'ART99181', 171, 'Not Available', 488390.00, 'Level 3', 'Limited', 'Partial', 'Recent', 'Current', 'Pending', 'Limited', 'Partial');
INSERT INTO artifactsecurityaccess VALUES (298, 'ART77111', 298, 'Available', 82911.00, 'Level 1', 'Limited', 'Complete', 'Recent', 'Overdue', 'Updated', 'Restricted', 'Complete');
INSERT INTO artifactsecurityaccess VALUES (671, 'ART82500', 671, 'Available', 251617.00, 'Level 3', 'Restricted', 'Partial', 'Outdated', 'Due', 'Review Required', 'Available', 'In Progress');
INSERT INTO artifactsecurityaccess VALUES (367, 'ART53309', 367, 'Not Available', 910783.00, 'Level 2', 'Limited', 'Partial', 'Required', 'Current', 'Review Required', 'Limited', 'In Progress');
INSERT INTO artifactsecurityaccess VALUES (948, 'ART72164', 948, 'Available', 779884.00, 'Level 3', 'Public', 'Updating', 'Outdated', 'Current', 'Pending', 'Available', 'Complete');
INSERT INTO artifactsecurityaccess VALUES (951, 'ART70622', 951, 'Not Available', 310838.00, 'Level 1', 'Public', 'Updating', 'Outdated', 'Current', 'Updated', 'Restricted', 'Complete');
INSERT INTO artifactsecurityaccess VALUES (733, 'ART13427', 733, 'Available', 978054.00, 'Level 2', 'Limited', 'Updating', 'Outdated', 'Overdue', 'Updated', 'Available', 'Complete');
INSERT INTO artifactsecurityaccess VALUES (95, 'ART22236', 95, 'On Loan', 838811.00, 'Level 1', 'Limited', 'Partial', 'Required', 'Overdue', 'Review Required', 'Limited', 'Complete');
INSERT INTO riskassessments VALUES (387, 'ART48269', 'ART48269', 'Medium', 'Updated', 'Priority 1', 'Strict', 83);
INSERT INTO riskassessments VALUES (323, 'ART75371', 'ART75371', 'High', 'Updated', 'Priority 3', 'Strict', 33);
INSERT INTO riskassessments VALUES (37, 'ART75963', 'ART75963', 'Low', 'Review Required', 'Priority 3', NULL, 87);
INSERT INTO riskassessments VALUES (522, 'ART58041', 'ART58041', 'Low', 'Updated', 'Priority 2', 'Minimal', 21);
INSERT INTO riskassessments VALUES (171, 'ART99181', 'ART99181', 'High', 'Under Revision', 'Priority 3', 'Minimal', 18);
INSERT INTO riskassessments VALUES (298, 'ART77111', 'ART77111', 'Low', 'Under Revision', 'Priority 2', 'Minimal', 16);
INSERT INTO riskassessments VALUES (671, 'ART82500', 'ART82500', 'High', 'Review Required', 'Priority 3', 'Minimal', 94);
INSERT INTO riskassessments VALUES (367, 'ART53309', 'ART53309', 'High', 'Updated', 'Priority 3', NULL, 64);
INSERT INTO riskassessments VALUES (948, 'ART72164', 'ART72164', 'High', 'Review Required', 'Priority 2', NULL, 54);
INSERT INTO riskassessments VALUES (951, 'ART70622', 'ART70622', 'High', 'Under Revision', 'Priority 3', 'Minimal', 65);
INSERT INTO riskassessments VALUES (733, 'ART13427', 'ART13427', 'Medium', 'Under Revision', 'Priority 2', NULL, 22);
INSERT INTO riskassessments VALUES (95, 'ART22236', 'ART22236', 'Low', 'Updated', 'Priority 3', 'Minimal', 88);
INSERT INTO environmentalreadingscore VALUES (387, 'MM499870', '2024-06-03 08:14:08.085567', 'SC8459', 18, 0.29, 52, 0, 1019.2);
INSERT INTO environmentalreadingscore VALUES (323, 'MM854406', '2024-07-25 08:51:56.073372', 'SC1214', 21, 0.24, 45, 2, 995.7);
INSERT INTO environmentalreadingscore VALUES (37, 'MM981891', '2024-10-28 10:53:05.053293', 'SC7973', 21, 1.29, 51, 0, 1017.6);
INSERT INTO environmentalreadingscore VALUES (553, 'MM418530', '2024-03-18 18:08:11.098242', 'SC1898', 20, 1.52, 47, 4, 1000);
INSERT INTO environmentalreadingscore VALUES (522, 'MM636919', '2024-05-24 00:17:10.095242', 'SC4542', 19, 1.16, 45, 1, 1007.7);
INSERT INTO environmentalreadingscore VALUES (171, 'MM957224', '2025-01-26 18:34:14.057862', 'SC1934', 21, 1.11, 48, 3, 1009.6);
INSERT INTO environmentalreadingscore VALUES (298, 'MM973498', '2024-04-02 05:41:48.073372', 'SC9074', 18, 0.66, 54, 1, 994.1);
INSERT INTO environmentalreadingscore VALUES (671, 'MM739892', '2025-01-13 11:11:51.100303', 'SC2476', 20, 0.04, 52, 3, 1017.8);
INSERT INTO environmentalreadingscore VALUES (367, 'MM925030', '2025-02-06 20:07:30.084058', 'SC3060', 19, 0.68, 49, 0, 995.6);
INSERT INTO environmentalreadingscore VALUES (948, 'MM888322', '2024-07-30 10:12:11.115936', 'SC3546', 21, 1.61, 50, 4, 983.9);
INSERT INTO environmentalreadingscore VALUES (951, 'MM398931', '2024-09-24 16:56:26.115936', 'SC8058', 21, 1.94, 54, 5, 1007.3);
INSERT INTO environmentalreadingscore VALUES (733, 'MM979903', '2025-01-13 08:15:24.100303', 'SC3682', 21, 0.89, 48, 1, 1002.7);
INSERT INTO environmentalreadingscore VALUES (95, 'MM743187', '2024-07-26 16:44:31.057862', 'SC6557', 18, 1.2, 54, 2, 1012.4);
INSERT INTO usagerecords VALUES (387, 'ART48269', 'SC8459', 387, 'Active', 8, 11, 'Custom', 'Standard', 'Special', 'Custom', 'Standard', 'Rare', 'Frequent', 'Occasional', 'Occasional', 'Rare', 'Weekly', 'Quarterly', 'Monthly', 'Monthly', 'Annually', 'Current', 'Partial', 'Passed', 'Passed');
INSERT INTO usagerecords VALUES (323, 'ART75371', 'SC1214', 323, 'Permanent', 8, 10, 'Custom', 'Custom', 'Standard', 'Custom', 'Special', 'Frequent', 'Occasional', 'Occasional', 'Rare', 'Occasional', 'Weekly', 'Annually', 'Weekly', 'Daily', 'Monthly', 'Expired', 'Partial', 'Passed', 'Passed');
INSERT INTO usagerecords VALUES (37, 'ART75963', 'SC7973', 37, 'Active', 5, 22, 'Custom', 'Custom', 'Special', 'Special', 'Standard', 'Frequent', 'Frequent', 'Frequent', 'Frequent', 'Frequent', 'Weekly', 'Monthly', 'Monthly', 'Weekly', 'Quarterly', 'Expired', 'Non-compliant', 'Failed', 'Failed');
INSERT INTO usagerecords VALUES (522, 'ART58041', 'SC4542', 522, 'Permanent', 4, 8, 'Standard', 'Standard', 'Standard', 'Special', 'Special', 'Frequent', 'Rare', 'Frequent', 'Occasional', 'Rare', 'Daily', 'Annually', 'Weekly', 'Weekly', 'Annually', 'Expired', 'Non-compliant', 'Pending', 'Passed');
INSERT INTO usagerecords VALUES (171, 'ART99181', 'SC1934', 171, 'Permanent', 9, 9, 'Special', 'Standard', 'Special', 'Standard', 'Custom', 'Occasional', 'Occasional', 'Rare', 'Occasional', 'Occasional', 'Daily', 'Annually', 'Monthly', 'Weekly', 'Annually', 'Pending', 'Non-compliant', 'Passed', 'Passed');
INSERT INTO usagerecords VALUES (298, 'ART77111', 'SC9074', 298, 'Resting', 4, 6, 'Special', 'Standard', 'Standard', 'Special', 'Special', 'Rare', 'Occasional', 'Frequent', 'Occasional', 'Frequent', 'Daily', 'Monthly', 'Quarterly', 'Weekly', 'Annually', 'Pending', 'Non-compliant', 'Failed', 'Failed');
INSERT INTO usagerecords VALUES (671, 'ART82500', 'SC2476', 671, 'Permanent', 11, 14, 'Standard', 'Custom', 'Custom', 'Custom', 'Standard', 'Occasional', 'Rare', 'Rare', 'Frequent', 'Frequent', 'Daily', 'Quarterly', 'Weekly', 'Monthly', 'Quarterly', 'Pending', 'Compliant', 'Failed', 'Failed');
INSERT INTO usagerecords VALUES (367, 'ART53309', 'SC3060', 367, 'Active', 5, 18, 'Special', 'Custom', 'Special', 'Standard', 'Special', 'Occasional', 'Frequent', 'Occasional', 'Occasional', 'Rare', 'Weekly', 'Monthly', 'Monthly', 'Monthly', 'Annually', 'Current', 'Non-compliant', 'Failed', 'Review');
INSERT INTO usagerecords VALUES (948, 'ART72164', 'SC3546', 948, 'Active', 5, 6, 'Custom', 'Custom', 'Custom', 'Standard', 'Standard', 'Frequent', 'Rare', 'Frequent', 'Rare', 'Occasional', 'Weekly', 'Annually', 'Quarterly', 'Daily', 'Quarterly', 'Current', 'Compliant', 'Passed', 'Passed');
INSERT INTO usagerecords VALUES (951, 'ART70622', 'SC8058', 951, 'Active', 3, 11, 'Custom', 'Standard', 'Custom', 'Special', 'Standard', 'Frequent', 'Occasional', 'Frequent', 'Frequent', 'Occasional', 'Daily', 'Quarterly', 'Weekly', 'Monthly', 'Monthly', 'Pending', 'Non-compliant', 'Passed', 'Failed');
INSERT INTO usagerecords VALUES (733, 'ART13427', 'SC3682', 733, 'Permanent', 2, 7, 'Custom', 'Custom', 'Standard', 'Special', 'Standard', 'Frequent', 'Frequent', 'Frequent', 'Rare', 'Occasional', 'Daily', 'Quarterly', 'Weekly', 'Weekly', 'Annually', 'Expired', 'Partial', 'Passed', 'Failed');
INSERT INTO usagerecords VALUES (95, 'ART22236', 'SC6557', 95, 'Permanent', 6, 21, 'Special', 'Special', 'Special', 'Standard', 'Special', 'Occasional', 'Occasional', 'Frequent', 'Occasional', 'Frequent', 'Daily', 'Monthly', 'Quarterly', 'Weekly', 'Quarterly', 'Pending', 'Partial', 'Failed', 'Passed');
INSERT INTO airqualityreadings VALUES (387, 387, 371, 108, 12, 14, 6, 15.9, 43.00, 0.0130, 7.0, 0.14);
INSERT INTO airqualityreadings VALUES (323, 323, 974, 195, 18, 8, 16, 11.5, 37.00, 0.0070, 7.5, 0.17);
INSERT INTO airqualityreadings VALUES (37, 37, 599, 165, 36, 15, 27, 29.3, 37.00, 0.0530, 5.8, 0.19);
INSERT INTO airqualityreadings VALUES (553, 553, 546, 92, 38, NULL, 23, 16.9, 40.10, 0.0490, 5.0, 0.25);
INSERT INTO airqualityreadings VALUES (522, 522, 400, 91, 22, 1, 10, 18.6, 31.50, 0.0540, 7.5, 0.23);
INSERT INTO airqualityreadings VALUES (171, 171, 519, 294, 33, 19, 20, 6.8, 9.20, 0.0950, 5.1, 0.20);
INSERT INTO airqualityreadings VALUES (298, 298, 598, 181, 50, 13, 3, 18, 18.30, 0.0420, 4.9, 0.17);
INSERT INTO airqualityreadings VALUES (671, 671, 829, 142, 17, 8, 1, 8.6, 10.50, 0.0090, 7.1, 0.13);
INSERT INTO airqualityreadings VALUES (367, 367, 702, 241, 2, 18, 18, 16.8, 10.30, 0.0400, 4.8, 0.25);
INSERT INTO airqualityreadings VALUES (948, 948, 744, 435, 28, 20, 12, 28.6, 0.10, 0.0700, 5.6, 0.11);
INSERT INTO airqualityreadings VALUES (951, 951, 799, 230, 28, 13, 21, 10, 32.40, 0.0180, 4.1, 0.28);
INSERT INTO airqualityreadings VALUES (733, 733, 907, 215, 4, 18, 22, 30.4, 26.60, 0.0090, 5.3, 0.18);
INSERT INTO airqualityreadings VALUES (95, 95, 427, 473, 28, 4, 17, 15.8, 33.00, 0.0510, 4.4, 0.23);
INSERT INTO lightandradiationreadings VALUES (387, 387, 149, 27.03, 9.82, 41549);
INSERT INTO lightandradiationreadings VALUES (323, 323, 97, 71.83, 4.20, 67368);
INSERT INTO lightandradiationreadings VALUES (37, 37, 96, 37.16, 1.48, 75519);
INSERT INTO lightandradiationreadings VALUES (522, 522, 136, 9.49, 7.47, 59187);
INSERT INTO lightandradiationreadings VALUES (171, 171, 59, 32.69, 5.26, 46591);
INSERT INTO lightandradiationreadings VALUES (298, 298, 189, 23.14, 8.50, 68880);
INSERT INTO lightandradiationreadings VALUES (671, 671, 126, 57.90, 2.73, 83239);
INSERT INTO lightandradiationreadings VALUES (367, 367, 131, 5.68, 9.42, 23111);
INSERT INTO lightandradiationreadings VALUES (948, 948, 97, 4.09, 6.72, 42704);
INSERT INTO lightandradiationreadings VALUES (951, 951, 170, 54.64, 1.49, 59372);
INSERT INTO lightandradiationreadings VALUES (733, 733, 102, 32.55, 8.66, 65859);
INSERT INTO lightandradiationreadings VALUES (95, 95, 70, 71.60, 2.43, 29385);
INSERT INTO surfaceandphysicalreadings VALUES (387, 387, 0.107, 46, 1.78, 23, 0.33, 'Medium', NULL, 'Booklice', 6.2, 6.50, 'Low', 0.10, 0.44, 0.23, 19.59, 51.0, 'Medium', 'Critical', 'Minor Issues', 'Minor Changes', 0.13, 0.02100, 3, 20.42, 78.84);
INSERT INTO surfaceandphysicalreadings VALUES (323, 323, 0.202, 43, 1.13, 63, 0.61, NULL, 10, 'Silverfish', 6.8, 9.40, 'High', 0.04, 0.64, 0.22, 21.43, 54.0, 'Low', 'Normal', 'Major Issues', 'Minor Changes', 0.45, 0.09400, 10, 20.64, 78.85);
INSERT INTO surfaceandphysicalreadings VALUES (37, 37, 0.008, 47, 1.50, 441, 0.07, 'High', 9, 'Moths', 7.5, 11.10, 'Low', 0.03, 0.67, 0.65, 20.89, 53.6, 'Medium', 'Normal', 'Minor Issues', 'No Changes', 0.26, 0.05800, 4, 20.42, 78.49);
INSERT INTO surfaceandphysicalreadings VALUES (522, 522, 0.046, 54, 2.63, 493, 0.80, 'Low', 5, 'Beetles', 7.5, 10.20, 'High', 0.05, 0.03, 0.25, 19.64, 50.7, 'High', 'Critical', 'Minor Issues', 'Significant Changes', 0.12, -0.09200, 2, 20.13, 78.17);
INSERT INTO surfaceandphysicalreadings VALUES (171, 171, 0.053, 35, 1.14, 233, 0.56, NULL, 7, 'Silverfish', 6.1, 6.90, 'Low', 0.06, 0.60, 1.91, 20.61, 51.6, 'Medium', 'Normal', 'Minor Issues', 'Significant Changes', 0.37, -0.07500, 7, 20.39, 78.34);
INSERT INTO surfaceandphysicalreadings VALUES (298, 298, 0.042, 33, 4.39, 91, 0.27, 'High', 7, NULL, 7.2, 7.60, 'High', 0.00, 0.94, 0.93, 18.02, 50.4, 'Medium', 'Normal', 'Major Issues', 'Minor Changes', 0.36, 0.04700, 0, 20.36, 78.38);
INSERT INTO surfaceandphysicalreadings VALUES (671, 671, 0.086, 54, 1.31, 414, 0.32, 'High', 10, 'Moths', 6.8, 10.50, 'Low', 0.10, 0.99, 1.4, 18.64, 48.7, 'Medium', 'Critical', 'Minor Issues', 'No Changes', 0.27, -0.06700, 3, 20.51, 78.68);
INSERT INTO surfaceandphysicalreadings VALUES (367, 367, 0.223, 30, 2.53, 265, 0.04, 'High', 4, 'Booklice', 6.1, 8.90, 'Medium', 0.06, 0.40, 0.74, 20.10, 47.5, 'High', 'Normal', 'Stable', 'No Changes', 0.39, 0.09500, 8, 20.66, 78.64);
INSERT INTO surfaceandphysicalreadings VALUES (948, 948, 0.399, 56, 1.71, 461, 0.78, NULL, 9, 'Moths', 6.8, 7.20, 'Medium', 0.05, 0.04, 1.91, 18.73, 48.4, 'Low', 'Normal', 'Minor Issues', 'Minor Changes', 0.29, 0.06800, 2, 20.56, 78.23);
INSERT INTO surfaceandphysicalreadings VALUES (951, 951, 0.237, 46, 0.34, 124, 0.77, 'High', 3, 'Moths', 7.7, 11.00, 'Low', 0.08, 0.38, 0.37, 21.61, 52.2, 'Medium', 'Normal', 'Major Issues', 'Minor Changes', 0.43, -0.07700, 9, 20.49, 78.32);
INSERT INTO surfaceandphysicalreadings VALUES (733, 733, 0.075, 38, 1.25, 299, 0.87, 'Low', 1, 'Moths', 6.9, 6.70, 'High', 0.07, 0.97, 1.94, 20.63, 53.3, NULL, 'Critical', 'Minor Issues', 'Minor Changes', 0.42, -0.09200, 7, 20.39, 78.01);
INSERT INTO surfaceandphysicalreadings VALUES (95, 95, 0.024, 31, 1.42, 369, 0.40, NULL, 4, NULL, 8.0, 7.10, 'Low', 0.00, 0.94, 0.01, 19.66, 48.1, 'High', 'Normal', 'Major Issues', 'Significant Changes', 0.47, -0.00600, 7, 20.42, 78.96);
INSERT INTO conditionassessments VALUES (387, 'ART48269', 'SC8459', 387, 62, '2024-07-24', '2025-04-23');
INSERT INTO conditionassessments VALUES (323, 'ART75371', 'SC1214', 323, 2, '2024-04-16', '2025-08-03');
INSERT INTO conditionassessments VALUES (37, 'ART75963', 'SC7973', 37, 2, '2024-06-10', '2025-10-04');
INSERT INTO conditionassessments VALUES (522, 'ART58041', 'SC4542', 522, 32, '2024-07-25', '2025-09-17');
INSERT INTO conditionassessments VALUES (171, 'ART99181', 'SC1934', 171, 72, '2024-10-19', '2026-01-29');
INSERT INTO conditionassessments VALUES (298, 'ART77111', 'SC9074', 298, 85, '2024-09-01', '2025-08-14');
INSERT INTO conditionassessments VALUES (671, 'ART82500', 'SC2476', 671, 25, '2024-04-15', '2025-08-04');
INSERT INTO conditionassessments VALUES (367, 'ART53309', 'SC3060', 367, 48, '2024-08-24', '2025-07-13');
INSERT INTO conditionassessments VALUES (948, 'ART72164', 'SC3546', 948, 4, '2025-02-05', '2025-02-24');
INSERT INTO conditionassessments VALUES (951, 'ART70622', 'SC8058', 951, 15, '2024-12-17', '2025-09-24');
INSERT INTO conditionassessments VALUES (733, 'ART13427', 'SC3682', 733, 80, '2024-11-02', '2025-10-07');
INSERT INTO conditionassessments VALUES (95, 'ART22236', 'SC6557', 95, 92, '2024-09-16', '2025-04-10');
INSERT INTO conservationandmaintenance VALUES (387, 'ART48269', 'ART48269', 387, 'Not Required', 'Urgent', '2024-12-23', '2025-02-26', 10, 'Pending', NULL, 'Overdue', 'Current', 'Insufficient', 'Limited', 'Rare', 'Minimal', 3, 'Medium', 'Low');
INSERT INTO conservationandmaintenance VALUES (323, 'ART75371', 'ART75371', 323, 'Not Required', 'Medium', '2024-12-22', '2025-03-29', 20, 'Updated', NULL, 'Overdue', 'Overdue', 'Review Required', 'Depleted', 'Frequent', 'Minimal', 10, 'High', 'High');
INSERT INTO conservationandmaintenance VALUES (37, 'ART75963', 'ART75963', 37, 'Scheduled', 'Urgent', '2025-01-15', '2025-05-09', 13, 'Review', NULL, 'Overdue', 'Current', 'Review Required', 'Limited', 'Rare', 'Minimal', 3, 'High', 'Medium');
INSERT INTO conservationandmaintenance VALUES (522, 'ART58041', 'ART58041', 522, 'Not Required', 'Urgent', '2024-12-08', '2025-04-27', 86, 'Review', NULL, 'Overdue', 'Overdue', 'Adequate', 'Depleted', 'Occasional', 'Extensive', 5, 'High', 'Low');
INSERT INTO conservationandmaintenance VALUES (171, 'ART99181', 'ART99181', 171, 'Scheduled', 'Medium', '2024-12-13', '2025-04-25', 8, 'Updated', 'Closed', 'Due', 'Overdue', 'Adequate', 'Limited', 'Frequent', 'Extensive', 4, 'Low', 'High');
INSERT INTO conservationandmaintenance VALUES (298, 'ART77111', 'ART77111', 298, 'Not Required', 'High', '2025-01-29', '2025-02-24', 51, 'Updated', NULL, 'Current', 'Current', 'Adequate', 'Limited', 'Occasional', 'Minimal', 5, 'Low', 'Low');
INSERT INTO conservationandmaintenance VALUES (671, 'ART82500', 'ART82500', 671, 'Not Required', 'High', '2024-12-05', '2025-03-13', 59, 'Pending', 'Open', 'Current', 'Due', 'Adequate', 'Limited', 'Occasional', 'Extensive', 4, 'Low', 'Low');
INSERT INTO conservationandmaintenance VALUES (367, 'ART53309', 'ART53309', 367, 'Scheduled', 'Low', '2024-12-08', '2025-04-05', 77, 'Review', 'Closed', 'Due', 'Current', 'Review Required', 'Limited', 'Rare', 'Extensive', 6, 'Low', 'Low');
INSERT INTO conservationandmaintenance VALUES (948, 'ART72164', 'ART72164', 948, 'Not Required', 'High', '2024-11-23', '2025-04-29', 84, 'Review', 'Open', 'Current', 'Due', 'Adequate', 'Available', 'Occasional', 'Extensive', 5, 'Medium', 'High');
INSERT INTO conservationandmaintenance VALUES (951, 'ART70622', 'ART70622', 951, 'In Progress', 'Low', '2024-12-08', '2025-04-05', 51, 'Review', NULL, 'Current', 'Overdue', 'Review Required', 'Limited', 'Rare', 'Extensive', 10, 'Low', 'Low');
INSERT INTO conservationandmaintenance VALUES (733, 'ART13427', 'ART13427', 733, 'Scheduled', 'Low', '2025-01-09', '2025-04-08', 56, 'Updated', 'Closed', 'Due', 'Overdue', 'Review Required', 'Available', 'Frequent', 'Moderate', 5, 'Medium', 'Medium');
INSERT INTO conservationandmaintenance VALUES (95, 'ART22236', 'ART22236', 95, 'In Progress', 'Low', '2025-02-02', '2025-04-27', 36, 'Review', 'Open', 'Due', 'Due', 'Insufficient', 'Depleted', 'Occasional', 'Minimal', 6, 'Low', 'High');
