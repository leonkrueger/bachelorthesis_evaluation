CREATE TABLE `account`
(`accindex` VARCHAR(1023),
`acctident` VARCHAR(1023),
`platident` VARCHAR(1023),
`plattype` VARCHAR(1023),
`acctcreatedate` DATE,
`acctagespan` BIGINT,
`acctstatus` VARCHAR(1023),
`acctcategory` VARCHAR(1023),
`authstatus` VARCHAR(1023));
CREATE TABLE `profile`
(`profkey` VARCHAR(1023),
`profaccref` VARCHAR(1023),
`profile_composition` VARCHAR(1023));
CREATE TABLE `sessionbehavior`
(`sessref` VARCHAR(1023),
`sessprofref` VARCHAR(1023),
`logintimepat` VARCHAR(1023),
`loginfreq` VARCHAR(1023),
`loginlocvar` DOUBLE,
`sesslenmean` DOUBLE,
`sesscount` BIGINT,
`actregval` DOUBLE,
`acttimedist` VARCHAR(1023));
CREATE TABLE `contentbehavior`
(`cntref` VARCHAR(1023),
`cntsessref` VARCHAR(1023),
`postnum` BIGINT,
`postfreq` DOUBLE,
`postintvar` DOUBLE,
`cntsimscore` DOUBLE,
`cntuniqscore` DOUBLE,
`cntdiverseval` DOUBLE,
`cntlangnum` VARCHAR(1023),
`cnttopicent` DOUBLE,
`hashusepat` VARCHAR(1023),
`hashratio` DOUBLE,
`mentionpat` VARCHAR(1023),
`mentionratio` DOUBLE,
`urlsharefreq` VARCHAR(1023),
`urldomdiv` DOUBLE,
`mediaupratio` DOUBLE,
`mediareratio` DOUBLE);
CREATE TABLE `networkmetrics`
(`netkey` VARCHAR(1023),
`netsessref` VARCHAR(1023),
`network_engagement_metrics` VARCHAR(1023));
CREATE TABLE `messaginganalysis`
(`msgkey` VARCHAR(1023),
`msgcntref` VARCHAR(1023),
`msgnetref` VARCHAR(1023),
`msgsimscore` DOUBLE,
`msgfreq` DOUBLE,
`msgtgtdiv` DOUBLE,
`resptimepat` VARCHAR(1023),
`convnatval` DOUBLE,
`sentvar` DOUBLE,
`langsoph` DOUBLE,
`txtuniq` DOUBLE,
`keypatmatch` VARCHAR(1023),
`topiccoh` DOUBLE);
CREATE TABLE `technicalinfo`
(`techkey` VARCHAR(1023),
`technetref` VARCHAR(1023),
`techmsgref` VARCHAR(1023),
`regip` VARCHAR(1023),
`iprepscore` DOUBLE,
`ipcountrynum` BIGINT,
`vpnratio` DOUBLE,
`proxycount` BIGINT,
`torflag` VARCHAR(1023),
`devtotal` BIGINT,
`devtypedist` VARCHAR(1023),
`browserdiv` DOUBLE,
`uaconsval` DOUBLE);
CREATE TABLE `securitydetection`
(`secdetkey` VARCHAR(1023),
`sectechref` VARCHAR(1023),
`detecttime` DATETIME,
`detectsource` VARCHAR(1023),
`lastupd` DATETIME,
`updfreqhrs` BIGINT,
`detection_score_profile` VARCHAR(1023));
CREATE TABLE `moderationaction`
(`modactkey` VARCHAR(1023),
`masedetref` VARCHAR(1023),
`macntref` VARCHAR(1023),
`abuserepnum` BIGINT,
`violtypedist` VARCHAR(1023),
`susphist` VARCHAR(1023),
`warnnum` BIGINT,
`appealnum` VARCHAR(1023),
`linkacctnum` BIGINT,
`clustsize` BIGINT,
`clustrole` VARCHAR(1023),
`netinflscore` DOUBLE,
`coordscore` DOUBLE,
`authenscore` DOUBLE,
`credscore` DOUBLE,
`reputscore` DOUBLE,
`trustval` DOUBLE,
`impactval` DOUBLE,
`monitorpriority` VARCHAR(1023),
`investstatus` VARCHAR(1023),
`actiontaken` VARCHAR(1023),
`reviewfreq` VARCHAR(1023),
`lastrevdate` DATE,
`nextrevdate` DATE);
INSERT INTO account VALUES ('FA626376', 'ACC3607412', 'PL867', 'Microblog', '2024-04-07', 282, 'Active', 'Hybrid', 'Unverified');
INSERT INTO account VALUES ('FA204500', 'ACC4416482', 'PL871', 'Forum', '2023-09-30', 540, 'Deleted', 'Hybrid', 'Pending');
INSERT INTO account VALUES ('FA454857', 'ACC6512784', 'PL920', 'Microblog', '2024-05-23', 573, 'Active', 'Business', 'Unverified');
INSERT INTO account VALUES ('FA746792', 'ACC1790037', 'PL514', 'Social Network', '2023-06-19', 469, 'Deleted', 'Bot', 'Pending');
INSERT INTO account VALUES ('FA506758', 'ACC4561516', 'PL332', 'Social Network', '2024-06-22', 382, 'Suspended', 'Bot', 'Suspicious');
INSERT INTO account VALUES ('FA492014', 'ACC8921271', 'PL641', 'Social Network', '2023-07-22', 48, 'Suspended', 'Hybrid', 'Suspicious');
INSERT INTO account VALUES ('FA604781', 'ACC3107961', 'PL686', 'Social Network', '2023-04-13', 462, 'Active', 'Business', 'Failed');
INSERT INTO account VALUES ('FA737292', 'ACC6817094', 'PL991', 'Social Network', '2023-10-25', 462, 'Suspended', 'Hybrid', 'Unverified');
INSERT INTO account VALUES ('FA150801', 'ACC8092193', 'PL154', 'Forum', '2024-10-01', 169, 'Dormant', 'Bot', 'Failed');
INSERT INTO account VALUES ('FA674915', 'ACC5707385', 'PL305', 'Video Platform', '2023-03-29', 130, 'Deleted', 'Business', 'Suspicious');
INSERT INTO account VALUES ('FA467524', 'ACC9404063', 'PL965', 'Social Network', '2023-12-03', 50, 'Suspended', 'Hybrid', 'Unverified');
INSERT INTO account VALUES ('FA345814', 'ACC7151326', 'PL759', 'Video Platform', '2024-12-11', 177, 'Active', 'Business', 'Suspicious');
INSERT INTO account VALUES ('FA332328', 'ACC2813343', 'PL275', 'Forum', '2025-01-09', 403, 'Active', 'Personal', 'Suspicious');
INSERT INTO account VALUES ('FA860915', 'ACC7473093', 'PL135', 'Forum', '2023-07-12', 153, 'Dormant', 'Business', 'Suspicious');
INSERT INTO account VALUES ('FA254719', 'ACC5956786', 'PL774', 'Microblog', '2023-07-29', 618, 'Active', 'Personal', 'Suspicious');
INSERT INTO account VALUES ('FA929167', 'ACC3347593', 'PL815', 'Microblog', '2024-01-17', 269, 'Suspended', 'Hybrid', 'Unverified');
INSERT INTO account VALUES ('FA564257', 'ACC9440053', 'PL263', 'Microblog', '2023-07-28', 373, 'Deleted', 'Business', 'Failed');
INSERT INTO account VALUES ('FA483620', 'ACC3657060', 'PL835', 'Forum', '2024-03-15', 371, 'Suspended', 'Business', 'Pending');
INSERT INTO account VALUES ('FA244890', 'ACC8351362', 'PL403', 'Forum', '2025-02-10', 52, 'Deleted', 'Hybrid', 'Pending');
INSERT INTO account VALUES ('FA925303', 'ACC7813817', 'PL309', 'Forum', '2024-08-08', 17, 'Active', 'Hybrid', 'Unverified');
INSERT INTO profile VALUES ('FA626376', 'FA626376', '{"bio": {"biolang": "mixed", "biospan": 164, "biolinknum": "2", "biokeycheck": "Spam"}, "contact": {"phnumstate": "VOIP", "maildomainfmt": "Unknown"}, "picture": {"picscval": 0.4, "picformat": "AI Generated"}, "location": {"locgiven": "Yes", "locshiftnum": 9}, "username": {"usrlen": 10, "usrpatn": "Meaningful", "usrentval": 0.5140, "profnametag": "Random"}, "completeness": 0.99, "display_name": {"dispnameshift": 0}}');
INSERT INTO profile VALUES ('FA204500', 'FA204500', '{"bio": {"biolang": "mixed", "biospan": 36, "biolinknum": "4", "biokeycheck": "Spam"}, "contact": {"phnumstate": "Invalid", "maildomainfmt": "Free"}, "picture": {"picscval": 0.9, "picformat": "AI Generated"}, "location": {"locgiven": "No", "locshiftnum": 7}, "username": {"usrlen": 10, "usrpatn": "Random", "usrentval": 0.7410, "profnametag": "Template"}, "completeness": 0.64, "display_name": {"dispnameshift": 8}}');
INSERT INTO profile VALUES ('FA454857', 'FA454857', '{"bio": {"biolang": "unknown", "biospan": 121, "biolinknum": "0", "biokeycheck": "Suspicious"}, "contact": {"phnumstate": "Invalid", "maildomainfmt": "Free"}, "picture": {"picscval": 0.6, "picformat": "Real"}, "location": {"locgiven": "No", "locshiftnum": 10}, "username": {"usrlen": 9, "usrpatn": "Generated", "usrentval": 0.0170, "profnametag": "Natural"}, "completeness": 0.66, "display_name": {"dispnameshift": 5}}');
INSERT INTO profile VALUES ('FA746792', 'FA746792', '{"bio": {"biolang": "multiple", "biospan": 139, "biolinknum": "5", "biokeycheck": "Promo"}, "contact": {"phnumstate": "VOIP", "maildomainfmt": "Free"}, "picture": {"picscval": 0.9, "picformat": "Stock"}, "location": {"locgiven": "Yes", "locshiftnum": 8}, "username": {"usrlen": 14, "usrpatn": "Generated", "usrentval": 0.2790, "profnametag": "Random"}, "completeness": 0.38, "display_name": {"dispnameshift": 2}}');
INSERT INTO profile VALUES ('FA506758', 'FA506758', '{"bio": {"biolang": "en", "biospan": 48, "biolinknum": "2", "biokeycheck": "Spam"}, "contact": {"phnumstate": "Valid", "maildomainfmt": "Unknown"}, "picture": {"picscval": 0.7, "picformat": "Real"}, "location": {"locgiven": "No", "locshiftnum": 6}, "username": {"usrlen": 11, "usrpatn": "Random", "usrentval": 0.7870, "profnametag": "Sequential"}, "completeness": 0.86, "display_name": {"dispnameshift": 2}}');
INSERT INTO profile VALUES ('FA492014', 'FA492014', '{"bio": {"biolang": "multiple", "biospan": 48, "biolinknum": "5", "biokeycheck": "Suspicious"}, "contact": {"phnumstate": "Invalid", "maildomainfmt": "Free"}, "picture": {"picscval": 1.0, "picformat": "AI Generated"}, "location": {"locgiven": "Multiple", "locshiftnum": 3}, "username": {"usrlen": 19, "usrpatn": "Generated", "usrentval": 0.3620, "profnametag": "Natural"}, "completeness": 0.13, "display_name": {"dispnameshift": 0}}');
INSERT INTO profile VALUES ('FA604781', 'FA604781', '{"bio": {"biolang": "mixed", "biospan": 57, "biolinknum": "0", "biokeycheck": "Normal"}, "contact": {"phnumstate": "Invalid", "maildomainfmt": "Disposable"}, "picture": {"picscval": 0.3, "picformat": "Celebrity"}, "location": {"locgiven": "Fake", "locshiftnum": 5}, "username": {"usrlen": 11, "usrpatn": "Meaningful", "usrentval": 0.7470, "profnametag": "Template"}, "completeness": 0.81, "display_name": {"dispnameshift": 9}}');
INSERT INTO profile VALUES ('FA737292', 'FA737292', '{"bio": {"biolang": "mixed", "biospan": 181, "biolinknum": "0", "biokeycheck": "Suspicious"}, "contact": {"phnumstate": "VOIP", "maildomainfmt": "Free"}, "picture": {"picscval": 0.3, "picformat": "Stock"}, "location": {"locgiven": "Multiple", "locshiftnum": 2}, "username": {"usrlen": 14, "usrpatn": "Generated", "usrentval": 0.4710, "profnametag": "Sequential"}, "completeness": 0.60, "display_name": {"dispnameshift": 6}}');
INSERT INTO profile VALUES ('FA150801', 'FA150801', '{"bio": {"biolang": "unknown", "biospan": 189, "biolinknum": "2", "biokeycheck": "Spam"}, "contact": {"phnumstate": "Valid", "maildomainfmt": "Disposable"}, "picture": {"picscval": 0.2, "picformat": "Real"}, "location": {"locgiven": "Fake", "locshiftnum": 5}, "username": {"usrlen": 15, "usrpatn": "Meaningful", "usrentval": 0.3340, "profnametag": "Natural"}, "completeness": 0.17, "display_name": {"dispnameshift": 6}}');
INSERT INTO profile VALUES ('FA674915', 'FA674915', '{"bio": {"biolang": "multiple", "biospan": 82, "biolinknum": "1", "biokeycheck": "Suspicious"}, "contact": {"phnumstate": "Invalid", "maildomainfmt": "Free"}, "picture": {"picscval": 0.5, "picformat": "Celebrity"}, "location": {"locgiven": "Fake", "locshiftnum": 9}, "username": {"usrlen": 7, "usrpatn": "AlphaNum", "usrentval": 0.7440, "profnametag": "Template"}, "completeness": 0.81, "display_name": {"dispnameshift": 7}}');
INSERT INTO profile VALUES ('FA467524', 'FA467524', '{"bio": {"biolang": "mixed", "biospan": 115, "biolinknum": "0", "biokeycheck": "Normal"}, "contact": {"phnumstate": "Invalid", "maildomainfmt": "Disposable"}, "picture": {"picscval": 0.9, "picformat": "Stock"}, "location": {"locgiven": "Multiple", "locshiftnum": 4}, "username": {"usrlen": 11, "usrpatn": "AlphaNum", "usrentval": 0.1050, "profnametag": "Random"}, "completeness": 0.95, "display_name": {"dispnameshift": 3}}');
INSERT INTO profile VALUES ('FA345814', 'FA345814', '{"bio": {"biolang": "unknown", "biospan": 183, "biolinknum": "0", "biokeycheck": "Promo"}, "contact": {"phnumstate": "VOIP", "maildomainfmt": "Disposable"}, "picture": {"picscval": 0.8, "picformat": "Stock"}, "location": {"locgiven": "No", "locshiftnum": 10}, "username": {"usrlen": 14, "usrpatn": "Meaningful", "usrentval": 0.5130, "profnametag": "Natural"}, "completeness": 0.60, "display_name": {"dispnameshift": 1}}');
INSERT INTO profile VALUES ('FA332328', 'FA332328', '{"bio": {"biolang": "en", "biospan": 157, "biolinknum": "2", "biokeycheck": "Spam"}, "contact": {"phnumstate": "Invalid", "maildomainfmt": "Unknown"}, "picture": {"picscval": 0.0, "picformat": "AI Generated"}, "location": {"locgiven": "Yes", "locshiftnum": 6}, "username": {"usrlen": 19, "usrpatn": "Meaningful", "usrentval": 0.7190, "profnametag": "Natural"}, "completeness": 0.70, "display_name": {"dispnameshift": 1}}');
INSERT INTO profile VALUES ('FA860915', 'FA860915', '{"bio": {"biolang": "en", "biospan": 56, "biolinknum": "1", "biokeycheck": "Spam"}, "contact": {"phnumstate": "VOIP", "maildomainfmt": "Unknown"}, "picture": {"picscval": 0.8, "picformat": "Real"}, "location": {"locgiven": "No", "locshiftnum": 4}, "username": {"usrlen": 10, "usrpatn": "AlphaNum", "usrentval": 0.3850, "profnametag": "Sequential"}, "completeness": 0.43, "display_name": {"dispnameshift": 2}}');
INSERT INTO profile VALUES ('FA254719', 'FA254719', '{"bio": {"biolang": "multiple", "biospan": 100, "biolinknum": "0", "biokeycheck": "Promo"}, "contact": {"phnumstate": "Valid", "maildomainfmt": "Custom"}, "picture": {"picscval": 0.3, "picformat": "AI Generated"}, "location": {"locgiven": "No", "locshiftnum": 9}, "username": {"usrlen": 8, "usrpatn": "Meaningful", "usrentval": 0.9500, "profnametag": "Sequential"}, "completeness": 0.87, "display_name": {"dispnameshift": 2}}');
INSERT INTO profile VALUES ('FA929167', 'FA929167', '{"bio": {"biolang": "en", "biospan": 30, "biolinknum": "2", "biokeycheck": "Normal"}, "contact": {"phnumstate": "Valid", "maildomainfmt": "Unknown"}, "picture": {"picscval": 0.4, "picformat": "Stock"}, "location": {"locgiven": "Fake", "locshiftnum": 4}, "username": {"usrlen": 13, "usrpatn": "Generated", "usrentval": 0.1560, "profnametag": "Natural"}, "completeness": 0.24, "display_name": {"dispnameshift": 1}}');
INSERT INTO profile VALUES ('FA564257', 'FA564257', '{"bio": {"biolang": "unknown", "biospan": 16, "biolinknum": "5", "biokeycheck": "Suspicious"}, "contact": {"phnumstate": "Invalid", "maildomainfmt": "Unknown"}, "picture": {"picscval": 0.4, "picformat": "Celebrity"}, "location": {"locgiven": "Multiple", "locshiftnum": 10}, "username": {"usrlen": 13, "usrpatn": "Meaningful", "usrentval": 0.5670, "profnametag": "Natural"}, "completeness": 0.65, "display_name": {"dispnameshift": 2}}');
INSERT INTO profile VALUES ('FA483620', 'FA483620', '{"bio": {"biolang": "unknown", "biospan": 167, "biolinknum": "3", "biokeycheck": "Spam"}, "contact": {"phnumstate": "Invalid", "maildomainfmt": "Unknown"}, "picture": {"picscval": 0.2, "picformat": "AI Generated"}, "location": {"locgiven": "Multiple", "locshiftnum": 5}, "username": {"usrlen": 13, "usrpatn": "Meaningful", "usrentval": 0.4680, "profnametag": "Sequential"}, "completeness": 0.90, "display_name": {"dispnameshift": 8}}');
INSERT INTO profile VALUES ('FA244890', 'FA244890', '{"bio": {"biolang": "mixed", "biospan": 187, "biolinknum": "2", "biokeycheck": "Promo"}, "contact": {"phnumstate": "VOIP", "maildomainfmt": "Free"}, "picture": {"picscval": 0.4, "picformat": "Celebrity"}, "location": {"locgiven": "Yes", "locshiftnum": 2}, "username": {"usrlen": 9, "usrpatn": "Generated", "usrentval": 0.2640, "profnametag": "Sequential"}, "completeness": 0.66, "display_name": {"dispnameshift": 8}}');
INSERT INTO profile VALUES ('FA925303', 'FA925303', '{"bio": {"biolang": "multiple", "biospan": 43, "biolinknum": "3", "biokeycheck": "Suspicious"}, "contact": {"phnumstate": "Invalid", "maildomainfmt": "Unknown"}, "picture": {"picscval": 0.4, "picformat": "Stock"}, "location": {"locgiven": "Yes", "locshiftnum": 0}, "username": {"usrlen": 14, "usrpatn": "Meaningful", "usrentval": 0.0570, "profnametag": "Template"}, "completeness": 0.52, "display_name": {"dispnameshift": 1}}');
INSERT INTO sessionbehavior VALUES ('SESS_CYLMN', 'FA626376', 'Bot-like', 'High', 88.3, 8599.52, 742086, 84.24, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_NA3I3', 'FA204500', 'Bot-like', 'High', 15.5, 8527.87, 924546, 92.38, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_M0U50', 'FA454857', 'Random', 'High', 24.3, 1994.03, 476673, 86.81, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_RS5DK', 'FA746792', 'Random', 'Suspicious', 2.5, 3332.99, 764301, 34.91, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_F4K1L', 'FA506758', 'Random', 'Medium', 90.8, 3161.17, 494351, 25.63, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_FFB8T', 'FA492014', 'Burst', 'High', 81.0, 4321.40, 77077, 31.59, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_4PNCO', 'FA604781', 'Random', 'Medium', 28.3, 9535.27, 422434, 60.41, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_ZOJ44', 'FA737292', 'Bot-like', 'Suspicious', 93.2, 1738.50, 64363, 80.45, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_QQOE9', 'FA150801', 'Regular', 'Medium', 99.0, 4083.18, 600632, 52.86, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_3B46T', 'FA674915', 'Burst', 'Low', 90.8, 2759.46, 448324, 38.45, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_XPE3K', 'FA467524', 'Burst', 'High', 58.9, 2506.44, 805705, 19.06, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_XDAOQ', 'FA345814', 'Regular', 'Suspicious', 28.2, 4548.75, 388213, 39.56, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_ZQKKF', 'FA332328', 'Bot-like', 'Low', 87.3, 6822.34, 939975, 43.90, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_ZDPBJ', 'FA860915', 'Regular', 'High', 9.3, 2955.28, 327255, 73.12, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_1EYII', 'FA254719', 'Regular', 'Suspicious', 11.2, 6686.50, 819784, 63.31, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_X2LC5', 'FA929167', 'Bot-like', 'Medium', 28.6, 3797.59, 520538, 63.59, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_YEZ1E', 'FA564257', 'Burst', 'Suspicious', 34.0, 1501.59, 348333, 69.54, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_OULFW', 'FA483620', 'Random', 'High', 82.3, 6947.86, 305176, 74.77, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_E68DR', 'FA244890', 'Random', 'Low', 70.7, 9202.40, 531839, 94.83, NULL);
INSERT INTO sessionbehavior VALUES ('SESS_LP1GP', 'FA925303', 'Random', 'Medium', 51.5, 3732.24, 908624, 60.30, NULL);
INSERT INTO contentbehavior VALUES ('CNT_TNUTM', 'SESS_CYLMN', 18221, 58.383, 64.472, 9.19, 0.1036, 87.614, '5', 7.591, 'Normal', 2.89, 'Random', 0.401, 'SomeRate_PT6', 8.71, 0.119, 0.2106);
INSERT INTO contentbehavior VALUES ('CNT_IRXW9', 'SESS_NA3I3', 33277, 57.906, 82.631, 8.39, 0.0895, 86.333, '4', 6.895, 'Normal', 3.66, 'Random', 0.970, 'SomeRate_P6Z', 5.97, 0.427, 0.6743);
INSERT INTO contentbehavior VALUES ('CNT_3ID0K', 'SESS_M0U50', 11575, 29.042, 24.228, 2.03, 0.1797, 98.743, '4', 4.186, 'Spam', 8.14, 'Random', 0.065, 'SomeRate_E3D', 4.34, 0.127, 0.5911);
INSERT INTO contentbehavior VALUES ('CNT_LXI0T', 'SESS_RS5DK', 46445, 30.499, 23.534, 9.45, 0.1996, 14.045, '2', 3.538, 'Normal', 6.63, 'Normal', 0.902, 'SomeRate_JKG', 4.56, 0.020, 0.2763);
INSERT INTO contentbehavior VALUES ('CNT_1F01J', 'SESS_F4K1L', 47583, 12.378, 7.590, 8.73, 0.3561, 50.740, '3', 3.969, 'Spam', 1.89, 'Spam', 0.043, 'SomeRate_PN3', 7.68, 0.472, 0.2907);
INSERT INTO contentbehavior VALUES ('CNT_KPXP2', 'SESS_FFB8T', 45312, 82.886, 46.759, 0.01, 0.0412, 58.780, '5', 6.553, 'Spam', 0.19, 'Normal', 0.936, 'SomeRate_WKR', 8.02, 0.065, 0.4497);
INSERT INTO contentbehavior VALUES ('CNT_XJFKW', 'SESS_4PNCO', 32275, 67.963, 67.389, 4.19, 0.2528, 68.942, '1', 4.266, 'Spam', 3.21, 'Random', 0.932, 'SomeRate_T2H', 8.77, 0.129, 0.3419);
INSERT INTO contentbehavior VALUES ('CNT_KM5MO', 'SESS_ZOJ44', 13994, 82.952, 51.967, 7.12, 0.0240, 11.375, '3', 9.553, 'Trending', 7.36, 'Normal', 0.344, 'SomeRate_NIF', 2.92, 0.449, 0.2073);
INSERT INTO contentbehavior VALUES ('CNT_XGZ85', 'SESS_QQOE9', 37251, 29.547, 30.580, 6.21, 0.6851, 19.384, '5', 4.370, 'Trending', 7.93, 'Targeted', 0.262, 'SomeRate_0F6', 4.85, 0.881, 0.5673);
INSERT INTO contentbehavior VALUES ('CNT_D6YQ5', 'SESS_3B46T', 23608, 56.897, 64.080, 8.88, 0.5799, 93.493, '4', 0.616, 'Spam', 9.43, 'Normal', 0.519, 'SomeRate_DO8', 0.60, 0.983, 0.2022);
INSERT INTO contentbehavior VALUES ('CNT_AVXTO', 'SESS_XPE3K', 1903, 53.278, 96.367, 5.51, 0.0952, 97.226, '4', 0.076, 'Spam', 9.05, 'Random', 0.149, 'SomeRate_X1G', 0.63, 0.810, 0.8957);
INSERT INTO contentbehavior VALUES ('CNT_AFQ9I', 'SESS_XDAOQ', 2868, 56.555, 58.366, 8.09, 0.4035, 54.344, '1', 6.301, 'Normal', 8.61, 'Spam', 0.196, 'SomeRate_61N', 1.97, 0.275, 0.7155);
INSERT INTO contentbehavior VALUES ('CNT_WEJBN', 'SESS_ZQKKF', 9782, 74.422, 93.989, 3.38, 0.1299, 17.942, '1', 6.244, 'Trending', 3.83, 'Spam', 0.888, 'SomeRate_D2N', 0.52, 0.841, 0.7058);
INSERT INTO contentbehavior VALUES ('CNT_U7H1J', 'SESS_ZDPBJ', 14412, 36.810, 75.089, 3.00, 0.9313, 0.589, '4', 6.795, 'Random', 6.44, 'Spam', 0.309, 'SomeRate_R7G', 7.54, 0.968, 0.8952);
INSERT INTO contentbehavior VALUES ('CNT_ZIOXM', 'SESS_1EYII', 8605, 21.490, 63.198, 5.31, 0.3084, 42.468, '5', 9.165, 'Trending', 8.96, 'Targeted', 0.015, 'SomeRate_2RZ', 5.89, 0.591, 0.1332);
INSERT INTO contentbehavior VALUES ('CNT_ZPAN0', 'SESS_X2LC5', 5003, 5.063, 79.609, 0.02, 0.7913, 90.915, '3', 6.799, 'Spam', 3.97, 'Random', 0.757, 'SomeRate_THT', 6.20, 0.274, 0.7120);
INSERT INTO contentbehavior VALUES ('CNT_G5BVD', 'SESS_YEZ1E', 37429, 69.891, 1.518, 3.61, 0.6172, 66.464, '4', 2.811, 'Trending', 2.57, 'Targeted', 0.877, 'SomeRate_F3Z', 0.95, 0.038, 0.0393);
INSERT INTO contentbehavior VALUES ('CNT_9SWPV', 'SESS_OULFW', 48632, 51.038, 22.214, 3.77, 0.0578, 27.708, '3', 5.102, 'Random', 6.32, 'Random', 0.706, 'SomeRate_XLO', 1.89, 0.638, 0.6775);
INSERT INTO contentbehavior VALUES ('CNT_2NJ13', 'SESS_E68DR', 23502, 12.372, 95.264, 4.46, 0.8729, 20.047, '1', 0.255, 'Spam', 7.08, 'Spam', 0.331, 'SomeRate_8PL', 4.89, 0.235, 0.4301);
INSERT INTO contentbehavior VALUES ('CNT_9HPAP', 'SESS_LP1GP', 41362, 12.085, 12.196, 8.08, 0.7281, 48.577, '2', 3.500, 'Normal', 5.39, 'Random', 0.362, 'SomeRate_NP5', 3.62, 0.399, 0.3982);
INSERT INTO networkmetrics VALUES ('NET_S4RMS', 'SESS_CYLMN', '{"connection_metrics": {"follownum": 5936120, "conngrowpat": "Organic", "followratio": 114.27, "followingnum": 7583817, "connqualscore": 0.2, "followgrowrate": 5.857, "mutualconnratio": 9.0, "followinggrowrate": 8.0129}, "engagement_metrics": {"engauth": 0.8620, "engrate": 7.699, "cmtratio": 9.33, "likeratio": 5.40, "sharerate": 1.538}, "interaction_metrics": {"interactdiv": 61.89, "interactreci": 0.181, "tempinteractpat": "Periodic"}}');
INSERT INTO networkmetrics VALUES ('NET_GHPA5', 'SESS_NA3I3', '{"connection_metrics": {"follownum": 5474390, "conngrowpat": "Suspicious", "followratio": 511.43, "followingnum": 5162703, "connqualscore": 1.1, "followgrowrate": 9.753, "mutualconnratio": 5.2, "followinggrowrate": 4.1718}, "engagement_metrics": {"engauth": 0.1442, "engrate": 8.737, "cmtratio": 5.24, "likeratio": 0.95, "sharerate": 7.361}, "interaction_metrics": {"interactdiv": 85.64, "interactreci": 0.136, "tempinteractpat": "Automated"}}');
INSERT INTO networkmetrics VALUES ('NET_3TDUS', 'SESS_M0U50', '{"connection_metrics": {"follownum": 9313419, "conngrowpat": "Organic", "followratio": 568.66, "followingnum": 8178936, "connqualscore": 6.8, "followgrowrate": 3.546, "mutualconnratio": 9.3, "followinggrowrate": 4.5641}, "engagement_metrics": {"engauth": 0.6861, "engrate": 2.650, "cmtratio": 3.88, "likeratio": 5.00, "sharerate": 4.654}, "interaction_metrics": {"interactdiv": 92.64, "interactreci": 0.632, "tempinteractpat": "Random"}}');
INSERT INTO networkmetrics VALUES ('NET_U06BN', 'SESS_RS5DK', '{"connection_metrics": {"follownum": 3593778, "conngrowpat": "Burst", "followratio": 358.06, "followingnum": 5564156, "connqualscore": 7.6, "followgrowrate": 4.955, "mutualconnratio": 4.3, "followinggrowrate": 5.0485}, "engagement_metrics": {"engauth": 0.5508, "engrate": 3.303, "cmtratio": 7.51, "likeratio": 1.18, "sharerate": 6.470}, "interaction_metrics": {"interactdiv": 37.65, "interactreci": 0.754, "tempinteractpat": "Automated"}}');
INSERT INTO networkmetrics VALUES ('NET_288MR', 'SESS_F4K1L', '{"connection_metrics": {"follownum": 7376944, "conngrowpat": "Suspicious", "followratio": 596.36, "followingnum": 7567699, "connqualscore": 5.1, "followgrowrate": 9.919, "mutualconnratio": 10.0, "followinggrowrate": 1.4373}, "engagement_metrics": {"engauth": 0.6432, "engrate": 9.710, "cmtratio": 2.39, "likeratio": 0.96, "sharerate": 9.397}, "interaction_metrics": {"interactdiv": 70.71, "interactreci": 0.976, "tempinteractpat": "Automated"}}');
INSERT INTO networkmetrics VALUES ('NET_XWA4S', 'SESS_FFB8T', '{"connection_metrics": {"follownum": 2079248, "conngrowpat": "Bot-like", "followratio": 751.02, "followingnum": 6489675, "connqualscore": 9.6, "followgrowrate": 4.390, "mutualconnratio": 5.2, "followinggrowrate": 9.0527}, "engagement_metrics": {"engauth": 0.4388, "engrate": 9.196, "cmtratio": 1.99, "likeratio": 1.22, "sharerate": 5.254}, "interaction_metrics": {"interactdiv": 69.64, "interactreci": 0.818, "tempinteractpat": "Random"}}');
INSERT INTO networkmetrics VALUES ('NET_EZNDT', 'SESS_4PNCO', '{"connection_metrics": {"follownum": 2792254, "conngrowpat": "Suspicious", "followratio": 924.83, "followingnum": 907985, "connqualscore": 2.1, "followgrowrate": 4.924, "mutualconnratio": 9.3, "followinggrowrate": 3.3784}, "engagement_metrics": {"engauth": 0.6088, "engrate": 9.391, "cmtratio": 5.76, "likeratio": 4.30, "sharerate": 7.725}, "interaction_metrics": {"interactdiv": 43.37, "interactreci": 0.668, "tempinteractpat": "Periodic"}}');
INSERT INTO networkmetrics VALUES ('NET_UPTHR', 'SESS_ZOJ44', '{"connection_metrics": {"follownum": 8571412, "conngrowpat": "Suspicious", "followratio": 199.20, "followingnum": 8870999, "connqualscore": 7.3, "followgrowrate": 6.303, "mutualconnratio": 8.1, "followinggrowrate": 6.8184}, "engagement_metrics": {"engauth": 0.1188, "engrate": 4.651, "cmtratio": 6.70, "likeratio": 1.28, "sharerate": 9.883}, "interaction_metrics": {"interactdiv": 92.58, "interactreci": 0.888, "tempinteractpat": "Automated"}}');
INSERT INTO networkmetrics VALUES ('NET_ISG53', 'SESS_QQOE9', '{"connection_metrics": {"follownum": 8062148, "conngrowpat": "Organic", "followratio": 514.59, "followingnum": 3657760, "connqualscore": 4.3, "followgrowrate": 0.063, "mutualconnratio": 2.2, "followinggrowrate": 0.1451}, "engagement_metrics": {"engauth": 0.7126, "engrate": 1.460, "cmtratio": 4.94, "likeratio": 7.31, "sharerate": 9.833}, "interaction_metrics": {"interactdiv": 87.33, "interactreci": 0.331, "tempinteractpat": "Natural"}}');
INSERT INTO networkmetrics VALUES ('NET_QH6CX', 'SESS_3B46T', '{"connection_metrics": {"follownum": 9003678, "conngrowpat": "Suspicious", "followratio": 29.79, "followingnum": 9241335, "connqualscore": 1.9, "followgrowrate": 1.661, "mutualconnratio": 1.3, "followinggrowrate": 9.1052}, "engagement_metrics": {"engauth": 0.0854, "engrate": 4.949, "cmtratio": 4.37, "likeratio": 2.84, "sharerate": 5.617}, "interaction_metrics": {"interactdiv": 76.38, "interactreci": 0.320, "tempinteractpat": "Periodic"}}');
INSERT INTO networkmetrics VALUES ('NET_0EN87', 'SESS_XPE3K', '{"connection_metrics": {"follownum": 8923082, "conngrowpat": "Organic", "followratio": 826.14, "followingnum": 1111399, "connqualscore": 9.0, "followgrowrate": 2.622, "mutualconnratio": 9.7, "followinggrowrate": 9.7100}, "engagement_metrics": {"engauth": 0.3865, "engrate": 4.385, "cmtratio": 7.55, "likeratio": 9.05, "sharerate": 8.150}, "interaction_metrics": {"interactdiv": 8.37, "interactreci": 0.655, "tempinteractpat": "Random"}}');
INSERT INTO networkmetrics VALUES ('NET_RF68N', 'SESS_XDAOQ', '{"connection_metrics": {"follownum": 2938609, "conngrowpat": "Suspicious", "followratio": 530.24, "followingnum": 4572187, "connqualscore": 3.4, "followgrowrate": 5.367, "mutualconnratio": 4.7, "followinggrowrate": 7.4893}, "engagement_metrics": {"engauth": 0.2836, "engrate": 9.715, "cmtratio": 6.28, "likeratio": 0.05, "sharerate": 7.760}, "interaction_metrics": {"interactdiv": 1.40, "interactreci": 0.127, "tempinteractpat": "Random"}}');
INSERT INTO networkmetrics VALUES ('NET_DEOEE', 'SESS_ZQKKF', '{"connection_metrics": {"follownum": 9400780, "conngrowpat": "Burst", "followratio": 887.49, "followingnum": 6973446, "connqualscore": 8.0, "followgrowrate": 6.187, "mutualconnratio": 5.9, "followinggrowrate": 3.2113}, "engagement_metrics": {"engauth": 0.9866, "engrate": 6.145, "cmtratio": 8.71, "likeratio": 6.21, "sharerate": 8.237}, "interaction_metrics": {"interactdiv": 6.71, "interactreci": 0.958, "tempinteractpat": "Periodic"}}');
INSERT INTO networkmetrics VALUES ('NET_01T7B', 'SESS_ZDPBJ', '{"connection_metrics": {"follownum": 2814138, "conngrowpat": "Burst", "followratio": 181.11, "followingnum": 8259054, "connqualscore": 6.6, "followgrowrate": 9.414, "mutualconnratio": 0.4, "followinggrowrate": 4.4857}, "engagement_metrics": {"engauth": 0.9356, "engrate": 3.229, "cmtratio": 0.72, "likeratio": 0.25, "sharerate": 1.826}, "interaction_metrics": {"interactdiv": 69.13, "interactreci": 0.355, "tempinteractpat": "Periodic"}}');
INSERT INTO networkmetrics VALUES ('NET_ZEP3T', 'SESS_1EYII', '{"connection_metrics": {"follownum": 5263472, "conngrowpat": "Suspicious", "followratio": 910.56, "followingnum": 8443737, "connqualscore": 6.3, "followgrowrate": 4.204, "mutualconnratio": 8.3, "followinggrowrate": 7.6364}, "engagement_metrics": {"engauth": 0.7270, "engrate": 6.304, "cmtratio": 2.25, "likeratio": 9.87, "sharerate": 4.833}, "interaction_metrics": {"interactdiv": 41.44, "interactreci": 0.133, "tempinteractpat": "Automated"}}');
INSERT INTO networkmetrics VALUES ('NET_OT2W1', 'SESS_X2LC5', '{"connection_metrics": {"follownum": 1736861, "conngrowpat": "Organic", "followratio": 78.66, "followingnum": 6153521, "connqualscore": 4.6, "followgrowrate": 3.797, "mutualconnratio": 9.4, "followinggrowrate": 4.1697}, "engagement_metrics": {"engauth": 0.9182, "engrate": 7.311, "cmtratio": 1.81, "likeratio": 8.99, "sharerate": 0.325}, "interaction_metrics": {"interactdiv": 86.28, "interactreci": 0.074, "tempinteractpat": "Periodic"}}');
INSERT INTO networkmetrics VALUES ('NET_599Q6', 'SESS_YEZ1E', '{"connection_metrics": {"follownum": 2928319, "conngrowpat": "Suspicious", "followratio": 45.04, "followingnum": 2314370, "connqualscore": 8.9, "followgrowrate": 6.575, "mutualconnratio": 3.8, "followinggrowrate": 3.7897}, "engagement_metrics": {"engauth": 0.3037, "engrate": 5.969, "cmtratio": 5.67, "likeratio": 7.88, "sharerate": 9.758}, "interaction_metrics": {"interactdiv": 61.84, "interactreci": 0.018, "tempinteractpat": "Automated"}}');
INSERT INTO networkmetrics VALUES ('NET_RF0W6', 'SESS_E68DR', '{"connection_metrics": {"follownum": 9452857, "conngrowpat": "Burst", "followratio": 552.19, "followingnum": 7871016, "connqualscore": 9.5, "followgrowrate": 9.660, "mutualconnratio": 7.8, "followinggrowrate": 8.3413}, "engagement_metrics": {"engauth": 0.3554, "engrate": 3.371, "cmtratio": 1.82, "likeratio": 0.74, "sharerate": 3.910}, "interaction_metrics": {"interactdiv": 62.49, "interactreci": 0.935, "tempinteractpat": "Periodic"}}');
INSERT INTO networkmetrics VALUES ('NET_T0ZON', 'SESS_LP1GP', '{"connection_metrics": {"follownum": 3723741, "conngrowpat": "Organic", "followratio": 766.02, "followingnum": 9893690, "connqualscore": 6.6, "followgrowrate": 3.539, "mutualconnratio": 3.9, "followinggrowrate": 9.7385}, "engagement_metrics": {"engauth": 0.3605, "engrate": 1.514, "cmtratio": 5.42, "likeratio": 7.16, "sharerate": 0.655}, "interaction_metrics": {"interactdiv": 67.78, "interactreci": 0.252, "tempinteractpat": "Periodic"}}');
INSERT INTO messaginganalysis VALUES ('MSG_A00L8', 'CNT_TNUTM', 'NET_S4RMS', 0.753, 5082.37, 79.81, 'Natural', 0.859, 0.8071, 0.120, 0.96, 'KPM_BWL', 0.7500);
INSERT INTO messaginganalysis VALUES ('MSG_QS7ZY', 'CNT_IRXW9', 'NET_GHPA5', 0.330, 3998.80, 60.31, 'Instant', 0.173, 0.5448, 0.511, 0.82, 'KPM_MT8', 0.8685);
INSERT INTO messaginganalysis VALUES ('MSG_WHYJR', 'CNT_3ID0K', 'NET_3TDUS', 0.155, 8271.42, 29.80, 'Instant', 0.695, 0.6669, 0.463, 0.34, 'KPM_W5P', 0.0029);
INSERT INTO messaginganalysis VALUES ('MSG_W0T8D', 'CNT_LXI0T', 'NET_U06BN', 0.933, 2180.35, 20.73, 'Delayed', 0.617, 0.5324, 0.905, 0.10, 'KPM_WQR', 0.7726);
INSERT INTO messaginganalysis VALUES ('MSG_VBSFV', 'CNT_1F01J', 'NET_288MR', 0.580, 9407.99, 10.17, 'Delayed', 0.904, 0.2548, 0.642, 0.69, 'KPM_W7S', 0.0460);
INSERT INTO messaginganalysis VALUES ('MSG_QZEOO', 'CNT_KPXP2', 'NET_XWA4S', 0.584, 9596.72, 34.09, 'Random', 0.008, 0.8183, 0.887, 0.70, 'KPM_FGT', 0.3040);
INSERT INTO messaginganalysis VALUES ('MSG_KOKR8', 'CNT_XJFKW', 'NET_EZNDT', 0.575, 7356.07, 20.98, 'Random', 0.107, 0.9204, 0.489, 0.73, 'KPM_951', 0.5038);
INSERT INTO messaginganalysis VALUES ('MSG_FQV1J', 'CNT_KM5MO', 'NET_UPTHR', 0.549, 5097.15, 79.15, 'Instant', 0.959, 0.7759, 0.727, 0.05, 'KPM_7T4', 0.7777);
INSERT INTO messaginganalysis VALUES ('MSG_M2V1K', 'CNT_XGZ85', 'NET_ISG53', 0.829, 738.54, 40.62, 'Random', 0.495, 0.0015, 0.525, 0.35, 'KPM_UZT', 0.7027);
INSERT INTO messaginganalysis VALUES ('MSG_JACRZ', 'CNT_D6YQ5', 'NET_QH6CX', 0.787, 2619.45, 41.60, 'Instant', 0.071, 0.9346, 0.149, 0.63, 'KPM_0QL', 0.0716);
INSERT INTO messaginganalysis VALUES ('MSG_IXTL7', 'CNT_AVXTO', 'NET_0EN87', 0.939, 9248.11, 84.55, 'Instant', 0.679, 0.3124, 0.345, 0.88, 'KPM_BO5', 0.2059);
INSERT INTO messaginganalysis VALUES ('MSG_TW2KZ', 'CNT_AFQ9I', 'NET_RF68N', 0.281, 9058.42, 57.76, 'Instant', 0.232, 0.1742, 0.051, 0.22, 'KPM_GI9', 0.5737);
INSERT INTO messaginganalysis VALUES ('MSG_49OKX', 'CNT_WEJBN', 'NET_DEOEE', 0.215, 5941.57, 52.91, 'Natural', 0.552, 0.3290, 0.385, 0.71, 'KPM_RZB', 0.7339);
INSERT INTO messaginganalysis VALUES ('MSG_E3XAT', 'CNT_U7H1J', 'NET_01T7B', 0.228, 1499.76, 92.48, 'Instant', 0.201, 0.2612, 0.927, 0.73, 'KPM_II8', 0.4494);
INSERT INTO messaginganalysis VALUES ('MSG_PD9EO', 'CNT_ZIOXM', 'NET_ZEP3T', 0.260, 773.46, 68.96, 'Natural', 0.344, 0.6822, 0.761, 0.72, 'KPM_9SX', 0.0811);
INSERT INTO messaginganalysis VALUES ('MSG_HM9U7', 'CNT_ZPAN0', 'NET_OT2W1', 0.827, 8482.02, 26.79, 'Delayed', 0.770, 0.2815, 0.935, 0.89, 'KPM_O5L', 0.0306);
INSERT INTO messaginganalysis VALUES ('MSG_EGM44', 'CNT_G5BVD', 'NET_599Q6', 0.894, 7220.71, 39.03, 'Delayed', 0.781, 0.8576, 0.830, 0.99, 'KPM_YHS', 0.3767);
INSERT INTO messaginganalysis VALUES ('MSG_YA24E', 'CNT_2NJ13', 'NET_RF0W6', 0.275, 6380.20, 41.48, 'Natural', 0.216, 0.2002, 0.040, 0.74, 'KPM_FGV', 0.2952);
INSERT INTO messaginganalysis VALUES ('MSG_34BIH', 'CNT_9HPAP', 'NET_T0ZON', 0.649, 4487.27, 25.45, 'Random', 0.892, 0.3281, 0.823, 0.95, 'KPM_J89', 0.2160);
INSERT INTO technicalinfo VALUES ('TECH_I88JW', 'NET_S4RMS', 'MSG_A00L8', '192.168.46.130', 0.574, 18, 0.0140, 8, 'No', 20, NULL, 0.218, 0.62294);
INSERT INTO technicalinfo VALUES ('TECH_KQZVD', 'NET_GHPA5', 'MSG_QS7ZY', '192.168.201.125', 0.424, 8, 0.1238, 4, 'Suspected', 17, NULL, 0.301, 0.25721);
INSERT INTO technicalinfo VALUES ('TECH_MQOUP', 'NET_3TDUS', 'MSG_WHYJR', '192.168.113.176', 0.958, 10, 0.0837, 7, 'No', 16, NULL, 0.025, 0.59094);
INSERT INTO technicalinfo VALUES ('TECH_FTOUC', 'NET_U06BN', 'MSG_W0T8D', '192.168.48.140', 0.752, 39, 0.5217, 0, 'Suspected', 11, NULL, 0.157, 0.00917);
INSERT INTO technicalinfo VALUES ('TECH_4SONX', 'NET_288MR', 'MSG_VBSFV', '192.168.78.215', 0.858, 12, 0.0061, 5, 'No', 12, NULL, 0.523, 0.91977);
INSERT INTO technicalinfo VALUES ('TECH_XHJP9', 'NET_XWA4S', 'MSG_QZEOO', '192.168.250.252', 0.798, 31, 0.7251, 3, 'No', 15, NULL, 0.287, 0.84528);
INSERT INTO technicalinfo VALUES ('TECH_06NYC', 'NET_EZNDT', 'MSG_KOKR8', '192.168.62.145', 0.935, 7, 0.7624, 3, 'No', 1, NULL, 0.978, 0.85647);
INSERT INTO technicalinfo VALUES ('TECH_SB82V', 'NET_UPTHR', 'MSG_FQV1J', '192.168.47.200', 0.407, 7, 0.2040, 7, 'No', 6, NULL, 0.566, 0.35176);
INSERT INTO technicalinfo VALUES ('TECH_GQL3F', 'NET_ISG53', 'MSG_M2V1K', '192.168.4.193', 0.901, 11, 0.4307, 7, 'Suspected', 13, NULL, 0.949, 0.14883);
INSERT INTO technicalinfo VALUES ('TECH_KU4ZN', 'NET_QH6CX', 'MSG_JACRZ', '192.168.137.198', 0.717, 23, 0.6390, 7, 'No', 10, NULL, 0.685, 0.47658);
INSERT INTO technicalinfo VALUES ('TECH_3N7H5', 'NET_0EN87', 'MSG_IXTL7', '192.168.80.229', 0.518, 1, 0.2356, 5, 'Suspected', 2, NULL, 0.623, 0.22447);
INSERT INTO technicalinfo VALUES ('TECH_NZVNQ', 'NET_RF68N', 'MSG_TW2KZ', '192.168.221.92', 0.546, 41, 0.1098, 7, 'No', 18, NULL, 0.147, 0.08789);
INSERT INTO technicalinfo VALUES ('TECH_83X3R', 'NET_DEOEE', 'MSG_49OKX', '192.168.130.80', 0.294, 36, 0.5709, 2, 'Suspected', 6, NULL, 0.242, 0.27133);
INSERT INTO technicalinfo VALUES ('TECH_D9KJH', 'NET_01T7B', 'MSG_E3XAT', '192.168.21.166', 0.114, 20, 0.3800, 3, 'No', 15, NULL, 0.412, 0.11445);
INSERT INTO technicalinfo VALUES ('TECH_BYD7T', 'NET_ZEP3T', 'MSG_PD9EO', '192.168.153.245', 0.799, 27, 0.4355, 8, 'Yes', 7, NULL, 0.188, 0.01979);
INSERT INTO technicalinfo VALUES ('TECH_V3V4T', 'NET_OT2W1', 'MSG_HM9U7', '192.168.192.185', 0.391, 43, 0.4762, 10, 'Yes', 2, NULL, 0.291, 0.34943);
INSERT INTO technicalinfo VALUES ('TECH_Q1XJ2', 'NET_599Q6', 'MSG_EGM44', '192.168.29.125', 0.689, 21, 0.9895, 5, 'Yes', 15, NULL, 0.995, 0.33347);
INSERT INTO technicalinfo VALUES ('TECH_ALVJ2', 'NET_RF0W6', 'MSG_YA24E', '192.168.41.170', 0.179, 49, 0.3951, 3, 'Suspected', 4, NULL, 0.855, 0.96341);
INSERT INTO technicalinfo VALUES ('TECH_KE6GP', 'NET_T0ZON', 'MSG_34BIH', '192.168.160.129', 0.721, 47, 0.9193, 8, 'Suspected', 11, NULL, 0.787, 0.31961);
INSERT INTO securitydetection VALUES ('SEC_T67QD', 'TECH_I88JW', '2023-10-21 18:29:42', 'Pattern Match', '2020-12-02 16:53:12', 369, '{"overall": {"confval": 0.84893, "riskval": 6.95, "fposprob": 0.7761, "threatlvl": "Low", "detectconf": 0.88}, "pattern_scores": {"netpatscore": 0.83, "contpatscore": 0.725, "profpatscore": 0.833, "techpatscore": 0.894, "temppatscore": 3.627, "behavpatscore": 45.94}, "behavior_scores": {"botlikscore": 85.077, "commintscore": 0.8678, "autobehavscore": 0.732, "spambehavscore": 2.89}, "detection_reliability": {"featver": "FV_P6", "modelver": "MV_N6", "detmethrel": 0.772}}');
INSERT INTO securitydetection VALUES ('SEC_8MKQB', 'TECH_KQZVD', '2022-11-14 13:01:39', 'User Report', '2022-03-30 13:26:47', 651, '{"overall": {"confval": 0.12472, "riskval": 1.76, "fposprob": 0.1160, "threatlvl": "Critical", "detectconf": 0.52}, "pattern_scores": {"netpatscore": 4.01, "contpatscore": 0.695, "profpatscore": 0.506, "techpatscore": 0.927, "temppatscore": 0.670, "behavpatscore": 54.89}, "behavior_scores": {"botlikscore": 83.073, "commintscore": 0.0929, "autobehavscore": 0.961, "spambehavscore": 5.27}, "detection_reliability": {"featver": "FV_78", "modelver": "MV_B2", "detmethrel": 0.219}}');
INSERT INTO securitydetection VALUES ('SEC_GYRYR', 'TECH_MQOUP', '2022-02-15 14:25:42', 'Manual Review', '2023-08-21 07:24:30', 483, '{"overall": {"confval": 0.58778, "riskval": 2.64, "fposprob": 0.0629, "threatlvl": "Medium", "detectconf": 0.74}, "pattern_scores": {"netpatscore": 0.91, "contpatscore": 0.235, "profpatscore": 0.416, "techpatscore": 0.959, "temppatscore": 6.250, "behavpatscore": 7.23}, "behavior_scores": {"botlikscore": 76.797, "commintscore": 0.1740, "autobehavscore": 0.823, "spambehavscore": 1.20}, "detection_reliability": {"featver": "FV_OM", "modelver": "MV_ZV", "detmethrel": 0.403}}');
INSERT INTO securitydetection VALUES ('SEC_VT1FN', 'TECH_FTOUC', '2025-04-11 11:36:39', 'Pattern Match', '2020-03-20 17:05:50', 607, '{"overall": {"confval": 0.31692, "riskval": 9.43, "fposprob": 0.2205, "threatlvl": "High", "detectconf": 0.60}, "pattern_scores": {"netpatscore": 1.19, "contpatscore": 0.108, "profpatscore": 0.474, "techpatscore": 0.625, "temppatscore": 2.136, "behavpatscore": 7.76}, "behavior_scores": {"botlikscore": 67.147, "commintscore": 0.5087, "autobehavscore": 0.844, "spambehavscore": 8.79}, "detection_reliability": {"featver": "FV_EB", "modelver": "MV_L1", "detmethrel": 0.637}}');
INSERT INTO securitydetection VALUES ('SEC_0GXPB', 'TECH_4SONX', '2024-07-15 10:12:55', 'Manual Review', '2025-05-16 05:29:49', 625, '{"overall": {"confval": 0.11585, "riskval": 6.43, "fposprob": 0.3930, "threatlvl": "High", "detectconf": 0.74}, "pattern_scores": {"netpatscore": 1.61, "contpatscore": 0.733, "profpatscore": 0.498, "techpatscore": 0.970, "temppatscore": 8.460, "behavpatscore": 49.91}, "behavior_scores": {"botlikscore": 3.533, "commintscore": 0.9991, "autobehavscore": 0.234, "spambehavscore": 9.14}, "detection_reliability": {"featver": "FV_J2", "modelver": "MV_3V", "detmethrel": 0.129}}');
INSERT INTO securitydetection VALUES ('SEC_3DN6B', 'TECH_XHJP9', '2022-01-04 17:06:02', 'User Report', '2021-03-12 15:20:35', 407, '{"overall": {"confval": 0.75415, "riskval": 9.29, "fposprob": 0.7328, "threatlvl": "High", "detectconf": 0.80}, "pattern_scores": {"netpatscore": 9.21, "contpatscore": 0.112, "profpatscore": 0.609, "techpatscore": 0.849, "temppatscore": 5.457, "behavpatscore": 23.95}, "behavior_scores": {"botlikscore": 58.532, "commintscore": 0.7325, "autobehavscore": 0.225, "spambehavscore": 1.88}, "detection_reliability": {"featver": "FV_UA", "modelver": "MV_FY", "detmethrel": 0.542}}');
INSERT INTO securitydetection VALUES ('SEC_0BYWR', 'TECH_06NYC', '2022-06-03 22:02:34', 'Algorithm', '2021-01-02 19:29:47', 446, '{"overall": {"confval": 0.35394, "riskval": 2.39, "fposprob": 0.8486, "threatlvl": "Critical", "detectconf": 0.16}, "pattern_scores": {"netpatscore": 4.96, "contpatscore": 0.076, "profpatscore": 0.021, "techpatscore": 0.619, "temppatscore": 5.505, "behavpatscore": 27.08}, "behavior_scores": {"botlikscore": 42.769, "commintscore": 0.9964, "autobehavscore": 0.068, "spambehavscore": 3.81}, "detection_reliability": {"featver": "FV_G7", "modelver": "MV_YK", "detmethrel": 0.704}}');
INSERT INTO securitydetection VALUES ('SEC_F0HCK', 'TECH_SB82V', '2024-10-04 20:10:42', 'User Report', '2025-08-14 18:02:23', 659, '{"overall": {"confval": 0.92167, "riskval": 0.83, "fposprob": 0.6482, "threatlvl": "High", "detectconf": 0.17}, "pattern_scores": {"netpatscore": 2.30, "contpatscore": 0.062, "profpatscore": 0.326, "techpatscore": 0.653, "temppatscore": 8.477, "behavpatscore": 73.25}, "behavior_scores": {"botlikscore": 7.805, "commintscore": 0.2298, "autobehavscore": 0.439, "spambehavscore": 2.71}, "detection_reliability": {"featver": "FV_LR", "modelver": "MV_9R", "detmethrel": 0.272}}');
INSERT INTO securitydetection VALUES ('SEC_8ZJ1H', 'TECH_GQL3F', '2021-12-20 07:02:06', 'Pattern Match', '2024-06-08 23:30:35', 125, '{"overall": {"confval": 0.74440, "riskval": 2.99, "fposprob": 0.1071, "threatlvl": "Low", "detectconf": 0.37}, "pattern_scores": {"netpatscore": 1.18, "contpatscore": 0.981, "profpatscore": 0.490, "techpatscore": 0.590, "temppatscore": 1.071, "behavpatscore": 18.23}, "behavior_scores": {"botlikscore": 2.512, "commintscore": 0.0778, "autobehavscore": 0.963, "spambehavscore": 8.91}, "detection_reliability": {"featver": "FV_57", "modelver": "MV_6T", "detmethrel": 0.045}}');
INSERT INTO securitydetection VALUES ('SEC_QSAIU', 'TECH_KU4ZN', '2022-06-14 11:49:30', 'Algorithm', '2025-11-01 09:01:36', 527, '{"overall": {"confval": 0.62336, "riskval": 1.66, "fposprob": 0.9296, "threatlvl": "Medium", "detectconf": 0.51}, "pattern_scores": {"netpatscore": 3.29, "contpatscore": 0.835, "profpatscore": 0.541, "techpatscore": 0.953, "temppatscore": 6.939, "behavpatscore": 71.42}, "behavior_scores": {"botlikscore": 56.363, "commintscore": 0.4692, "autobehavscore": 0.386, "spambehavscore": 2.35}, "detection_reliability": {"featver": "FV_HZ", "modelver": "MV_BA", "detmethrel": 0.765}}');
INSERT INTO securitydetection VALUES ('SEC_5TZO6', 'TECH_3N7H5', '2025-08-02 04:07:01', 'Manual Review', '2024-07-16 23:05:13', 671, '{"overall": {"confval": 0.77398, "riskval": 4.32, "fposprob": 0.6377, "threatlvl": "Low", "detectconf": 0.86}, "pattern_scores": {"netpatscore": 8.38, "contpatscore": 0.465, "profpatscore": 0.630, "techpatscore": 0.441, "temppatscore": 7.125, "behavpatscore": 28.43}, "behavior_scores": {"botlikscore": 85.181, "commintscore": 0.1168, "autobehavscore": 0.484, "spambehavscore": 6.32}, "detection_reliability": {"featver": "FV_ZH", "modelver": "MV_ZQ", "detmethrel": 0.405}}');
INSERT INTO securitydetection VALUES ('SEC_WNPVJ', 'TECH_NZVNQ', '2024-05-22 21:23:44', 'Manual Review', '2020-04-07 05:20:12', 34, '{"overall": {"confval": 0.12697, "riskval": 1.68, "fposprob": 0.5448, "threatlvl": "High", "detectconf": 0.67}, "pattern_scores": {"netpatscore": 5.22, "contpatscore": 0.502, "profpatscore": 0.149, "techpatscore": 0.531, "temppatscore": 5.096, "behavpatscore": 24.14}, "behavior_scores": {"botlikscore": 36.705, "commintscore": 0.2458, "autobehavscore": 0.722, "spambehavscore": 5.96}, "detection_reliability": {"featver": "FV_39", "modelver": "MV_OJ", "detmethrel": 0.728}}');
INSERT INTO securitydetection VALUES ('SEC_EYSLJ', 'TECH_83X3R', '2023-08-08 00:04:10', 'Algorithm', '2025-07-03 21:35:41', 599, '{"overall": {"confval": 0.98715, "riskval": 3.93, "fposprob": 0.6186, "threatlvl": "High", "detectconf": 0.97}, "pattern_scores": {"netpatscore": 1.26, "contpatscore": 0.073, "profpatscore": 0.808, "techpatscore": 0.652, "temppatscore": 1.449, "behavpatscore": 36.57}, "behavior_scores": {"botlikscore": 16.786, "commintscore": 0.7693, "autobehavscore": 0.009, "spambehavscore": 3.43}, "detection_reliability": {"featver": "FV_PH", "modelver": "MV_JN", "detmethrel": 0.850}}');
INSERT INTO securitydetection VALUES ('SEC_D9PM5', 'TECH_D9KJH', '2022-07-19 03:47:00', 'Algorithm', '2021-02-25 23:29:08', 2, '{"overall": {"confval": 0.23436, "riskval": 5.89, "fposprob": 0.3757, "threatlvl": "High", "detectconf": 0.84}, "pattern_scores": {"netpatscore": 6.39, "contpatscore": 0.515, "profpatscore": 0.817, "techpatscore": 0.640, "temppatscore": 4.887, "behavpatscore": 60.93}, "behavior_scores": {"botlikscore": 66.828, "commintscore": 0.4932, "autobehavscore": 0.947, "spambehavscore": 7.38}, "detection_reliability": {"featver": "FV_5U", "modelver": "MV_RU", "detmethrel": 0.267}}');
INSERT INTO securitydetection VALUES ('SEC_479I5', 'TECH_BYD7T', '2020-10-21 19:07:15', 'Algorithm', '2024-10-05 23:54:57', 593, '{"overall": {"confval": 0.42406, "riskval": 7.73, "fposprob": 0.1453, "threatlvl": "Critical", "detectconf": 0.18}, "pattern_scores": {"netpatscore": 0.71, "contpatscore": 0.350, "profpatscore": 0.050, "techpatscore": 0.586, "temppatscore": 5.627, "behavpatscore": 67.66}, "behavior_scores": {"botlikscore": 97.755, "commintscore": 0.1348, "autobehavscore": 0.568, "spambehavscore": 9.78}, "detection_reliability": {"featver": "FV_5P", "modelver": "MV_FR", "detmethrel": 0.085}}');
INSERT INTO securitydetection VALUES ('SEC_6VA1U', 'TECH_V3V4T', '2022-10-31 11:27:11', 'Manual Review', '2022-12-11 03:29:07', 223, '{"overall": {"confval": 0.29286, "riskval": 4.18, "fposprob": 0.3429, "threatlvl": "Medium", "detectconf": 0.45}, "pattern_scores": {"netpatscore": 9.54, "contpatscore": 0.886, "profpatscore": 0.742, "techpatscore": 0.396, "temppatscore": 3.757, "behavpatscore": 19.09}, "behavior_scores": {"botlikscore": 10.514, "commintscore": 0.8723, "autobehavscore": 0.113, "spambehavscore": 0.33}, "detection_reliability": {"featver": "FV_Y0", "modelver": "MV_5Z", "detmethrel": 0.277}}');
INSERT INTO securitydetection VALUES ('SEC_1AV97', 'TECH_Q1XJ2', '2023-04-03 20:28:58', 'User Report', '2023-11-15 22:14:17', 398, '{"overall": {"confval": 0.25889, "riskval": 8.87, "fposprob": 0.8398, "threatlvl": "Medium", "detectconf": 0.44}, "pattern_scores": {"netpatscore": 2.32, "contpatscore": 0.353, "profpatscore": 0.332, "techpatscore": 0.962, "temppatscore": 5.640, "behavpatscore": 90.87}, "behavior_scores": {"botlikscore": 76.005, "commintscore": 0.5698, "autobehavscore": 0.127, "spambehavscore": 1.99}, "detection_reliability": {"featver": "FV_O4", "modelver": "MV_Q1", "detmethrel": 0.324}}');
INSERT INTO securitydetection VALUES ('SEC_JBA3V', 'TECH_ALVJ2', '2025-11-29 10:33:26', 'Pattern Match', '2020-06-12 21:17:54', 603, '{"overall": {"confval": 0.56343, "riskval": 8.76, "fposprob": 0.5614, "threatlvl": "Low", "detectconf": 0.31}, "pattern_scores": {"netpatscore": 0.77, "contpatscore": 0.200, "profpatscore": 0.645, "techpatscore": 0.697, "temppatscore": 4.796, "behavpatscore": 30.10}, "behavior_scores": {"botlikscore": 43.304, "commintscore": 0.8827, "autobehavscore": 0.888, "spambehavscore": 1.95}, "detection_reliability": {"featver": "FV_9Q", "modelver": "MV_NA", "detmethrel": 0.528}}');
INSERT INTO securitydetection VALUES ('SEC_HW8PD', 'TECH_KE6GP', '2024-05-20 00:08:03', 'Manual Review', '2020-08-06 01:47:18', 528, '{"overall": {"confval": 0.88954, "riskval": 1.08, "fposprob": 0.7944, "threatlvl": "Critical", "detectconf": 0.28}, "pattern_scores": {"netpatscore": 3.90, "contpatscore": 0.098, "profpatscore": 0.330, "techpatscore": 0.424, "temppatscore": 7.450, "behavpatscore": 95.16}, "behavior_scores": {"botlikscore": 61.106, "commintscore": 0.0257, "autobehavscore": 0.465, "spambehavscore": 7.80}, "detection_reliability": {"featver": "FV_G8", "modelver": "MV_BL", "detmethrel": 0.954}}');
INSERT INTO moderationaction VALUES ('MOD_S4Q3O', 'SEC_T67QD', 'CNT_TNUTM', 9359, NULL, '2', 465, '0', 20, 847, 'Amplifier', 62.14, 67.43, 0.374, 3.1, 0.2710, 0.96, 0.630, 'Medium', 'Completed', 'Restriction', 'Weekly', '2020-10-20', '2024-02-21');
INSERT INTO moderationaction VALUES ('MOD_2A014', 'SEC_8MKQB', 'CNT_IRXW9', 2327, NULL, '2', 504, '0', 18, 855, 'Amplifier', 31.41, 92.59, 0.708, 0.0, 0.4992, 7.20, 0.511, 'High', 'Completed', 'Restriction', 'Weekly', '2023-03-27', '2024-06-23');
INSERT INTO moderationaction VALUES ('MOD_BWJZO', 'SEC_GYRYR', 'CNT_3ID0K', 183, NULL, '3', 675, '1', 12, 180, 'Follower', 84.67, 41.69, 0.319, 0.2, 0.7705, 6.21, 0.790, 'Low', 'Pending', 'Restriction', 'Weekly', '2023-12-16', '2025-11-04');
INSERT INTO moderationaction VALUES ('MOD_88Z9Z', 'SEC_VT1FN', 'CNT_LXI0T', 1854, NULL, '3', 263, '1', 10, 205, 'Amplifier', 17.68, 52.72, 0.965, 2.8, 0.0246, 2.60, 0.354, 'Urgent', 'Completed', 'Warning', 'Daily', '2022-08-31', '2020-11-21');
INSERT INTO moderationaction VALUES ('MOD_1ZIZ2', 'SEC_0GXPB', 'CNT_1F01J', 7560, NULL, '3', 679, '1', 32, 41, 'Follower', 56.74, 58.15, 0.626, 3.8, 0.6656, 5.32, 0.176, 'Low', 'Active', 'Warning', 'Quarterly', '2025-12-24', '2022-05-10');
INSERT INTO moderationaction VALUES ('MOD_17Y76', 'SEC_3DN6B', 'CNT_KPXP2', 54, NULL, '1', 331, '0', 24, 336, 'Leader', 47.08, 31.44, 0.061, 1.3, 0.4757, 9.15, 0.185, 'High', 'Pending', 'Restriction', 'Daily', '2023-12-18', '2023-09-23');
INSERT INTO moderationaction VALUES ('MOD_NBVOY', 'SEC_0BYWR', 'CNT_XJFKW', 8809, NULL, '0', 754, '4', 7, 657, 'Amplifier', 68.53, 83.82, 0.403, 0.8, 0.1297, 2.57, 0.764, 'Urgent', 'Pending', 'Restriction', 'Monthly', '2021-08-19', '2025-12-13');
INSERT INTO moderationaction VALUES ('MOD_6S783', 'SEC_F0HCK', 'CNT_KM5MO', 2545, NULL, '2', 493, '3', 14, 212, 'Amplifier', 11.80, 92.66, 0.149, 6.5, 0.3608, 6.71, 0.366, 'Medium', 'Active', 'Warning', 'Monthly', '2022-07-08', '2021-07-17');
INSERT INTO moderationaction VALUES ('MOD_PNY97', 'SEC_8ZJ1H', 'CNT_XGZ85', 3898, NULL, '2', 257, '3', 13, 821, 'Isolated', 89.01, 28.70, 0.825, 1.4, 0.9536, 2.46, 0.719, 'Medium', 'Pending', 'Warning', 'Quarterly', '2025-07-27', '2023-09-16');
INSERT INTO moderationaction VALUES ('MOD_JVAZP', 'SEC_QSAIU', 'CNT_D6YQ5', 5093, NULL, '5', 9, '4', 5, 183, 'Amplifier', 3.70, 21.94, 0.932, 9.6, 0.8317, 1.98, 0.863, 'Urgent', 'Active', 'Suspension', 'Weekly', '2021-03-03', '2023-04-29');
INSERT INTO moderationaction VALUES ('MOD_P82RA', 'SEC_5TZO6', 'CNT_AVXTO', 4573, NULL, '4', 323, '2', 35, 3, 'Isolated', 38.80, 35.31, 0.348, 6.8, 0.8172, 1.19, 0.730, 'High', 'Active', 'Warning', 'Daily', '2025-08-25', '2024-01-03');
INSERT INTO moderationaction VALUES ('MOD_EPDBQ', 'SEC_WNPVJ', 'CNT_AFQ9I', 8038, NULL, '4', 918, '1', 47, 351, 'Isolated', 52.80, 37.30, 0.136, 4.1, 0.1625, 3.42, 0.864, 'High', 'Pending', 'Warning', 'Weekly', '2020-01-19', '2023-02-20');
INSERT INTO moderationaction VALUES ('MOD_ZV6U4', 'SEC_EYSLJ', 'CNT_WEJBN', 2, NULL, '0', 240, '5', 20, 934, 'Isolated', 89.11, 49.67, 0.987, 5.0, 0.7417, 6.56, 0.120, 'Medium', 'Completed', 'Suspension', 'Quarterly', '2024-09-05', '2021-05-01');
INSERT INTO moderationaction VALUES ('MOD_CE1CG', 'SEC_D9PM5', 'CNT_U7H1J', 3590, NULL, '0', 541, '2', 46, 953, 'Amplifier', 50.77, 60.11, 0.562, 9.5, 0.8823, 5.91, 0.961, 'Urgent', 'Active', 'Suspension', 'Weekly', '2023-09-08', '2021-05-24');
INSERT INTO moderationaction VALUES ('MOD_HWO83', 'SEC_479I5', 'CNT_ZIOXM', 7644, NULL, '5', 562, '5', 39, 658, 'Isolated', 3.56, 41.54, 0.898, 1.3, 0.0120, 3.09, 0.147, 'Low', 'Completed', 'Warning', 'Daily', '2022-02-18', '2021-10-10');
INSERT INTO moderationaction VALUES ('MOD_GAFR3', 'SEC_6VA1U', 'CNT_ZPAN0', 2776, NULL, '2', 376, '2', 17, 204, 'Amplifier', 85.07, 76.02, 0.600, 6.7, 0.0373, 7.12, 0.558, 'Urgent', 'Completed', 'Restriction', 'Monthly', '2024-11-07', '2024-02-02');
INSERT INTO moderationaction VALUES ('MOD_D16YL', 'SEC_1AV97', 'CNT_G5BVD', 2647, NULL, '0', 936, '2', 28, 574, 'Leader', 16.43, 25.94, 0.707, 3.1, 0.7243, 4.19, 0.771, 'High', 'Active', 'Restriction', 'Quarterly', '2021-12-02', '2021-11-05');
INSERT INTO moderationaction VALUES ('MOD_H26WT', 'SEC_JBA3V', 'CNT_2NJ13', 7392, NULL, '4', 484, '3', 33, 898, 'Amplifier', 71.35, 69.81, 0.136, 5.6, 0.4819, 4.88, 0.953, 'Urgent', 'Completed', 'Suspension', 'Quarterly', '2021-03-31', '2020-11-16');
INSERT INTO moderationaction VALUES ('MOD_08HZV', 'SEC_HW8PD', 'CNT_9HPAP', 7728, NULL, '1', 165, '0', 10, 830, 'Isolated', 19.55, 12.48, 0.557, 3.5, 0.5438, 9.60, 0.717, 'Medium', 'Pending', 'Suspension', 'Monthly', '2024-02-08', '2023-12-14');
