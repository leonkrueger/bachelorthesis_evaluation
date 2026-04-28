CREATE TABLE `problem`
(`name` VARCHAR(1023),
`path` VARCHAR(1023),
`type` VARCHAR(1023),
`target` VARCHAR(1023));
INSERT INTO `problem` VALUES('Hospital Mortality Prediction','https://www.kaggle.com/datasets/saurabhshahane/in-hospital-mortality-prediction','classification','outcome');
INSERT INTO `problem` VALUES('iris','https://www.kaggle.com/datasets/uciml/iris','classification','variety');
INSERT INTO `problem` VALUES('Franck-Hertz','https://www.kaggle.com/datasets/raktim711/franckhertz-experiment','regression','I');
INSERT INTO `problem` VALUES('lithium ion batteries','https://www.kaggle.com/datasets/divyansh22/crystal-system-properties-for-liion-batteries','classification','Crystal System');
INSERT INTO `problem` VALUES('Tunnel diode','https://www.kaggle.com/datasets/raktim711/experimental-data-on-tunnel-diode','regression','I');
INSERT INTO `problem` VALUES('Delaney solubility','https://www.kaggle.com/datasets/prashanthbairu/delaney-solubility-with-descriptors','regression','logS');
INSERT INTO `problem` VALUES('water quality 2','https://www.kaggle.com/datasets/saraharsh/water-quality','classification','Water_Quality');
INSERT INTO `problem` VALUES('concrete','https://www.kaggle.com/datasets/prathamtripathi/regression-with-neural-networking','regression','Concrete compressive strength(MPa, megapascals) ');
INSERT INTO `problem` VALUES('oil spill','https://www.kaggle.com/datasets/sudhanshu2198/oil-spill-detection','classification','target');
INSERT INTO `problem` VALUES('Solar Power Generation','https://www.kaggle.com/datasets/vipulgote4/solar-power-generation','regression','Power Generated');
INSERT INTO `problem` VALUES('PSS3E5','https://www.kaggle.com/competitions/playground-series-s3e5','classification','quality');
INSERT INTO `problem` VALUES('survey lung cancer','https://www.kaggle.com/datasets/mysarahmadbhat/lung-cancer','classification','LUNG_CANCER');
INSERT INTO `problem` VALUES('Pumpkin Seeds','https://www.kaggle.com/datasets/muratkokludataset/pumpkin-seeds-dataset','classification','Class');
INSERT INTO `problem` VALUES('water quality','https://www.kaggle.com/datasets/mssmartypants/water-quality','classification','is_safe');
CREATE TABLE `eda`
(`name` VARCHAR(1023),
`version` BIGINT,
`feature` VARCHAR(1023),
`type` VARCHAR(1023),
`range` BLOB,
`drop_user` BIGINT,
`drop_correlation` BIGINT,
`target` BIGINT);
INSERT INTO `eda` VALUES('iris',2,'variety',NULL,NULL,0,0,1);
INSERT INTO `eda` VALUES('oil spill',2,'f_18',NULL,NULL,1,0,0);
INSERT INTO `eda` VALUES('survey lung cancer',4,'GENDER','cat','[''M'', ''F'']',0,0,0);
INSERT INTO `eda` VALUES('lithium ion batteries',1,'Density (gm/cc)','num','[2.2, 4.201]',0,0,0);
INSERT INTO `eda` VALUES('oil spill',4,'f_24','num','[0.17, 1.33]',0,1,0);
INSERT INTO `eda` VALUES('oil spill',2,'f_44',NULL,NULL,1,0,0);
INSERT INTO `eda` VALUES('oil spill',4,'f_1','num','[1, 352]',0,0,0);
INSERT INTO `eda` VALUES('oil spill',5,'f_14','num','[0.05, 1.23]',0,1,0);
INSERT INTO `eda` VALUES('Franck-Hertz',1,'V','num','[0.7, 67.0]',0,0,0);
INSERT INTO `eda` VALUES('Pumpkin Seeds',1,'Eccentricity','num','[0.4921, 0.9481]',0,0,0);
INSERT INTO `eda` VALUES('Delaney solubility',5,'MolLogP','num','[-7.571399999999989, 10.388599999999991]',0,0,0);
INSERT INTO `eda` VALUES('smoke detection iot',1,'NC0.5',NULL,NULL,1,0,0);
INSERT INTO `eda` VALUES('oil spill',4,'f_38','num','[5.05, 441.23]',0,1,0);
INSERT INTO `eda` VALUES('water quality 2',3,'Conductivity','num','[0.0, 9272.0]',0,0,0);
CREATE TABLE `feature_importance`
(`name` VARCHAR(1023),
`version` BIGINT,
`step` BIGINT,
`feature` VARCHAR(1023),
`importance` DOUBLE);
INSERT INTO `feature_importance` VALUES('survey lung cancer',4,1,'ANXIETY',0.07465135356849873783);
INSERT INTO `feature_importance` VALUES('Solar Power Generation',1,1,'Day of Year',0.07144670305480893546);
INSERT INTO `feature_importance` VALUES('Liver disease prediction',2,2,'Albumin_and_Globulin_Ratio',-0.02580645161290293089);
INSERT INTO `feature_importance` VALUES('Solar Power Generation',4,1,'Visibility',0.0003392706801962686362);
INSERT INTO `feature_importance` VALUES('oil spill',5,1,'f_31',0.00728862973760934299);
INSERT INTO `feature_importance` VALUES('PCOS',3,2,'Weight gain(Y/N)',0.05146198830409351443);
INSERT INTO `feature_importance` VALUES('Pumpkin Seeds',4,2,'Equiv_Diameter',0);
INSERT INTO `feature_importance` VALUES('Solar Power Generation',4,2,'Average Wind Direction (Day)',0.02454504080962766413);
INSERT INTO `feature_importance` VALUES('survey lung cancer',3,2,'CHRONIC DISEASE',0.10270270270270275);
INSERT INTO `feature_importance` VALUES('Critical Heat Flux',3,3,'D_e [mm]',0.06934892591549482454);
INSERT INTO `feature_importance` VALUES('oil spill',2,1,'f_7',0.00590841949778435696);
INSERT INTO `feature_importance` VALUES('PCOS',2,1,'Weight gain(Y/N)',0.0939759036144573317);
INSERT INTO `feature_importance` VALUES('oil spill',5,1,'f_24',0);
INSERT INTO `feature_importance` VALUES('Hospital Mortality Prediction',5,2,'Respiratory rate',0.0403071017274472393);
CREATE TABLE `solution`
(`name` VARCHAR(1023),
`version` BIGINT,
`correlation` DOUBLE,
`nb_model` BIGINT,
`nb_feature` BIGINT,
`score` DOUBLE,
`test_size` DOUBLE,
`resampling` BIGINT);
INSERT INTO `solution` VALUES('diabetes',2,0.75,5,5,0.6999999999999999556,0.3300000000000000155,0);
INSERT INTO `solution` VALUES('kindey stone urine analysis',5,0.75,5,5,0.6999999999999999556,0.3300000000000000155,1);
INSERT INTO `solution` VALUES('oil spill',4,0.75,5,5,0.6999999999999999556,0.2899999999999999801,1);
INSERT INTO `solution` VALUES('kindey stone urine analysis',3,0.75,7,5,0.8499999999999999778,0.3300000000000000155,1);
INSERT INTO `solution` VALUES('PSS3E5',3,0.75,5,5,0.5500000000000000444,0.3300000000000000155,0);
INSERT INTO `solution` VALUES('kindey stone urine analysis',8,0.75,5,5,0.6999999999999999556,0.3300000000000000155,0);
INSERT INTO `solution` VALUES('Pumpkin Seeds',2,0.75,3,5,0.6999999999999999556,0.3300000000000000155,0);
INSERT INTO `solution` VALUES('lithium ion batteries',2,0.75,3,5,0.9000000000000000222,0.3300000000000000155,0);
INSERT INTO `solution` VALUES('Critical Heat Flux',5,0.75,6,4,0.8000000000000000444,0.3300000000000000155,0);
INSERT INTO `solution` VALUES('Franck-Hertz',5,0.75,3,5,0.4500000000000000111,0.3300000000000000155,0);
INSERT INTO `solution` VALUES('iris',5,0.75,2,5,0.6999999999999999556,0.3300000000000000155,0);
INSERT INTO `solution` VALUES('Hospital Mortality Prediction',1,0.75,5,5,0.75,0.3300000000000000155,1);
INSERT INTO `solution` VALUES('water quality',2,0.75,5,8,0.6999999999999999556,0.3300000000000000155,0);
INSERT INTO `solution` VALUES('survey lung cancer',4,0.75,5,6,0.6999999999999999556,0.2899999999999999801,1);
CREATE TABLE `model_score`
(`name` VARCHAR(1023),
`version` BIGINT,
`step` BIGINT,
`model` VARCHAR(1023),
`train_score` DOUBLE,
`test_score` DOUBLE);
INSERT INTO `model_score` VALUES('Tunnel diode',4,1,'KERR',-6.936638838475498226,-11.4692884210526298);
INSERT INTO `model_score` VALUES('Solar Power Generation',4,3,'DTRP',0.990774352226722277,0.8763856997710741669);
INSERT INTO `model_score` VALUES('Solar Power Generation',6,1,'ABR',0.6639483858567619689,0.6385333449038029797);
INSERT INTO `model_score` VALUES('iris',5,2,'Stack',0.959999999999999965,0.7199999999999999734);
INSERT INTO `model_score` VALUES('survey lung cancer',1,1,'LOGRS',0.94647887323943658,0.924137931034482718);
INSERT INTO `model_score` VALUES('Tunnel diode',4,1,'DTRP',0.959412014134275571,0.865381611374407611);
INSERT INTO `model_score` VALUES('Solar Power Generation',2,1,'RFRA',0.961248425477474355,0.8758678002735560409);
INSERT INTO `model_score` VALUES('Solar Power Generation',2,2,'RFRS',0.987037641295608004,0.9155963308763193088);
INSERT INTO `model_score` VALUES('iris',3,1,'RFCE',0.959999999999999965,0.7399999999999999912);
INSERT INTO `model_score` VALUES('oil spill',5,1,'Stack',1,0.993103448275862055);
INSERT INTO `model_score` VALUES('Hospital Mortality Prediction',2,1,'GNB',0.6388059701492537767,0.5939393939393939891);
INSERT INTO `model_score` VALUES('Solar Power Generation',2,1,'KNRU',0.7062134737400946882,0.4938933955174342749);
INSERT INTO `model_score` VALUES('kindey stone urine analysis',8,1,'DTCG',1,0.7037037037037037202);
INSERT INTO `model_score` VALUES('Solar Power Generation',3,1,'DTRF',1,0.8518099287404606867);
CREATE TABLE `model_importance`
(`name` VARCHAR(1023),
`version` BIGINT,
`step` BIGINT,
`model` VARCHAR(1023),
`importance` DOUBLE);
INSERT INTO `model_importance` VALUES('Tunnel diode',5,2,'RFRA',0.1974122306607551392);
INSERT INTO `model_importance` VALUES('Tunnel diode',2,1,'KNRD',0.002993894857595962976);
INSERT INTO `model_importance` VALUES('Franck-Hertz',5,1,'GPRQ',0.08218302254857065558);
INSERT INTO `model_importance` VALUES('diabetes',1,1,'GPCL',0.05648991013761221757);
INSERT INTO `model_importance` VALUES('Franck-Hertz',3,3,'ELNECV',0.007574044913692941014);
INSERT INTO `model_importance` VALUES('smoke detection iot',1,1,'SGDCH',0.001680386820397809007);
INSERT INTO `model_importance` VALUES('Delaney solubility',4,2,'HGBR',0.1929496112293459519);
INSERT INTO `model_importance` VALUES('Solar Power Generation',7,3,'HGBR',0.002286207347193983369);
INSERT INTO `model_importance` VALUES('Hospital Mortality Prediction',2,1,'GPCR',0.04617222801361783174);
INSERT INTO `model_importance` VALUES('Critical Heat Flux',3,1,'ABR',0.002777503320368098545);
INSERT INTO `model_importance` VALUES('Franck-Hertz',2,3,'GPRL',0.1106608958138691756);
INSERT INTO `model_importance` VALUES('Pumpkin Seeds',1,1,'LOGRSCV',0.03050799602693845398);
INSERT INTO `model_importance` VALUES('oil spill',1,3,'GPCR',0.1334759712364703977);
INSERT INTO `model_importance` VALUES('kindey stone urine analysis',7,2,'KNCD',0);
CREATE TABLE `model`
(`name` VARCHAR(1023),
`version` BIGINT,
`step` BIGINT,
`L1_model` VARCHAR(1023));
INSERT INTO `model` VALUES('oil spill',4,1,'tree');
INSERT INTO `model` VALUES('kindey stone urine analysis',6,1,'tree');
INSERT INTO `model` VALUES('PSS3E5',3,2,'regression');
INSERT INTO `model` VALUES('Critical Heat Flux',1,2,'regression');
INSERT INTO `model` VALUES('survey lung cancer',2,2,'regression');
INSERT INTO `model` VALUES('PSS3E5',4,1,'regression');
INSERT INTO `model` VALUES('iris',5,3,'tree');
INSERT INTO `model` VALUES('Delaney solubility',1,2,'regression');
INSERT INTO `model` VALUES('Critical Heat Flux',3,2,'tree');
INSERT INTO `model` VALUES('Solar Power Generation',2,3,'regression');
INSERT INTO `model` VALUES('survey lung cancer',4,2,'regression');
INSERT INTO `model` VALUES('Franck-Hertz',4,3,'tree');
INSERT INTO `model` VALUES('Critical Heat Flux',4,2,'tree');
INSERT INTO `model` VALUES('kindey stone urine analysis',7,1,'tree');
