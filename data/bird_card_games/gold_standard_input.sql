CREATE TABLE `cards`
(`id` BIGINT,
`artist` VARCHAR(1023),
`asciiName` VARCHAR(1023),
`availability` VARCHAR(1023),
`borderColor` VARCHAR(1023),
`cardKingdomFoilId` VARCHAR(1023),
`cardKingdomId` VARCHAR(1023),
`colorIdentity` VARCHAR(1023),
`colorIndicator` VARCHAR(1023),
`colors` VARCHAR(1023),
`convertedManaCost` DOUBLE,
`duelDeck` VARCHAR(1023),
`edhrecRank` BIGINT,
`faceConvertedManaCost` DOUBLE,
`faceName` VARCHAR(1023),
`flavorName` VARCHAR(1023),
`flavorText` VARCHAR(1023),
`frameEffects` VARCHAR(1023),
`frameVersion` VARCHAR(1023),
`hand` VARCHAR(1023),
`hasAlternativeDeckLimit` BIGINT,
`hasContentWarning` BIGINT,
`hasFoil` BIGINT,
`hasNonFoil` BIGINT,
`isAlternative` BIGINT,
`isFullArt` BIGINT,
`isOnlineOnly` BIGINT,
`isOversized` BIGINT,
`isPromo` BIGINT,
`isReprint` BIGINT,
`isReserved` BIGINT,
`isStarter` BIGINT,
`isStorySpotlight` BIGINT,
`isTextless` BIGINT,
`isTimeshifted` BIGINT,
`keywords` VARCHAR(1023),
`layout` VARCHAR(1023),
`leadershipSkills` VARCHAR(1023),
`life` VARCHAR(1023),
`loyalty` VARCHAR(1023),
`manaCost` VARCHAR(1023),
`mcmId` VARCHAR(1023),
`mcmMetaId` VARCHAR(1023),
`mtgArenaId` VARCHAR(1023),
`mtgjsonV4Id` VARCHAR(1023),
`mtgoFoilId` VARCHAR(1023),
`mtgoId` VARCHAR(1023),
`multiverseId` VARCHAR(1023),
`name` VARCHAR(1023),
`number` VARCHAR(1023),
`originalReleaseDate` VARCHAR(1023),
`originalText` VARCHAR(1023),
`originalType` VARCHAR(1023),
`otherFaceIds` VARCHAR(1023),
`power` VARCHAR(1023),
`printings` VARCHAR(1023),
`promoTypes` VARCHAR(1023),
`purchaseUrls` VARCHAR(1023),
`rarity` VARCHAR(1023),
`scryfallId` VARCHAR(1023),
`scryfallIllustrationId` VARCHAR(1023),
`scryfallOracleId` VARCHAR(1023),
`setCode` VARCHAR(1023),
`side` VARCHAR(1023),
`subtypes` VARCHAR(1023),
`supertypes` VARCHAR(1023),
`tcgplayerProductId` VARCHAR(1023),
`text` VARCHAR(1023),
`toughness` VARCHAR(1023),
`type` VARCHAR(1023),
`types` VARCHAR(1023),
`uuid` VARCHAR(1023),
`variations` VARCHAR(1023),
`watermark` VARCHAR(1023));
INSERT INTO `cards` VALUES(32089,'Jaime Jones',NULL,'mtgo,paper','black','137337','137184',NULL,NULL,NULL,2.0,NULL,4278,NULL,NULL,NULL,'For the Phyrexians, death is not an end, nor a one-time occurrence.',NULL,'2003',NULL,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,NULL,'normal',NULL,NULL,NULL,'{2}','245440','202493',NULL,'f47624e6-2b06-5e13-af94-736e9fa7ee1f','39334','39333','213734','Myr Sire','116',NULL,'When Myr Sire is put into a graveyard from the battlefield, put a 1/1 colorless Myr artifact creature token onto the battlefield.','Artifact Creature — Myr',NULL,'1','C14,CM2,DDU,JMP,MB1,MBS,TD2',NULL,'{''cardKingdom'': ''https://mtgjson.com/links/3d8155cef0c2d109'', ''cardKingdomFoil'': ''https://mtgjson.com/links/c338e1d1eb243de6'', ''cardmarket'': ''https://mtgjson.com/links/bad94071070f9202'', ''tcgplayer'': ''https://mtgjson.com/links/abd00d3c31e4badd''}','common','507979fd-5459-4933-8707-adc303750ce9','4be6b7aa-081f-45eb-83d5-7456c02fe45d','25794033-bd17-4056-b116-68d3acf52569','MBS',NULL,'Myr',NULL,'39131','When Myr Sire dies, create a 1/1 colorless Myr artifact creature token.','1','Artifact Creature — Myr','Artifact,Creature','bc856aff-f8d8-5bfb-8b6c-3d7bb25394e1',NULL,'phyrexian');
INSERT INTO `cards` VALUES(55797,'Craig J Spearing',NULL,'arena,mtgo,paper','black','214294','213991','R',NULL,'R',2.0,NULL,3453,NULL,NULL,NULL,replace('"Storm on the horizon, cap''n!"\n—Grick Doobin, last words','\n',char(10)),NULL,'2015',NULL,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,NULL,'normal',NULL,NULL,NULL,'{1}{R}','301313','208678','66263','01be7d4c-3237-5803-8d43-3d1cb616da26','65315','65314','435303','Lightning Strike','149',NULL,'Lightning Strike deals 3 damage to target creature or player.','Instant',NULL,NULL,'AJMP,GN2,M15,M19,THS,XLN',NULL,'{''cardKingdom'': ''https://mtgjson.com/links/9e366ba2db5e577f'', ''cardKingdomFoil'': ''https://mtgjson.com/links/6690d9434a245bfb'', ''cardmarket'': ''https://mtgjson.com/links/dbf729e83734cd46'', ''tcgplayer'': ''https://mtgjson.com/links/fa4cb3f893b010ff''}','uncommon','f0f55dee-7e39-4183-8e74-844d9c299bf5','0efac8d8-818d-4951-9f53-13b40eca1160','f34b9bc4-7bfe-47fd-ba23-4eeeb46026eb','XLN',NULL,NULL,NULL,'144831','Lightning Strike deals 3 damage to any target.',NULL,'Instant','Instant','ae7e8264-759e-5b87-adc5-bd8de1181384',NULL,NULL);
INSERT INTO `cards` VALUES(50149,'Yeong-Hao Han',NULL,'arena,mtgo,paper','black','231099','230779','R',NULL,'R',4.0,NULL,3852,NULL,NULL,NULL,'Distant thunder rumbled, a dread forewarning of Keranos''s displeasure.',NULL,'2015',NULL,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,NULL,'normal',NULL,NULL,NULL,'{2}{R}{R}','430354','290994','70668','c05c7536-62d9-5909-8b08-7ba72cdd493f',NULL,'79438','476408','Storm''s Wrath','157',NULL,'Storm''s Wrath deals 4 damage to each creature and each planeswalker.','Sorcery',NULL,NULL,'PTHB,THB',NULL,'{''cardKingdom'': ''https://mtgjson.com/links/000e3eb098682ea4'', ''cardKingdomFoil'': ''https://mtgjson.com/links/49af6b0242ec5f90'', ''cardmarket'': ''https://mtgjson.com/links/958d2c27af778fba'', ''tcgplayer'': ''https://mtgjson.com/links/a2ab518378065673''}','rare','4bc9ecd2-7664-471b-90f2-2d0dd1acec80','17a010d0-4cc1-4f7d-bbd7-e665bb2325f0','eeb6f5eb-0e16-468e-9dfe-6ec8d8172f86','THB',NULL,NULL,NULL,'206714','Storm''s Wrath deals 4 damage to each creature and each planeswalker.',NULL,'Sorcery','Sorcery','0f01c41a-7011-5059-a646-84396cc70fc4','225eec1e-5b98-5061-aab9-1209e70db3f1',NULL);
INSERT INTO `cards` VALUES(32647,'Xu Xiaoming',NULL,'mtgo','black',NULL,NULL,'U',NULL,'U',6.0,NULL,7794,NULL,NULL,NULL,'"One score and four he reigned, the Southland king: / A dragon coiled, a tiger poised below the mighty Yangtze."',NULL,'1997',NULL,0,0,1,1,0,0,1,0,0,1,0,0,0,0,0,NULL,'normal','{''brawl'': False, ''commander'': True, ''oathbreaker'': False}',NULL,NULL,'{4}{U}{U}',NULL,NULL,NULL,'21df7e50-ec20-5c7c-8487-8d4427a1b694','33769','33768','201302','Sun Quan, Lord of Wu','53',NULL,'Creatures you control have horsemanship.','Legendary Creature — Human Soldier',NULL,'4','ME3,PTK,V11',NULL,NULL,'rare','43c3104e-d473-484c-828e-fa9e24531e0e','698cf978-f85e-4149-99cf-c9000b514834','70503280-6bdf-431d-8213-367a9783463a','ME3',NULL,'Human,Soldier','Legendary',NULL,'Creatures you control have horsemanship. (They can''t be blocked except by creatures with horsemanship.)','4','Legendary Creature — Human Soldier','Creature','99ba552d-6b49-5d3f-ae6a-841bf3c02831',NULL,NULL);
INSERT INTO `cards` VALUES(12594,'Greg Staples',NULL,'mtgo,paper','black',NULL,'184664','W',NULL,'W',7.0,NULL,7883,NULL,NULL,NULL,NULL,NULL,'2003',NULL,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,'Flying','normal',NULL,NULL,NULL,'{5}{W}{W}','246725',NULL,NULL,'70c76ac6-0d16-5a27-a30f-74f28cfc1e16','40935','40615','228246','Archangel of Strife','7',NULL,replace('Flying\nAs Archangel of Strife enters the battlefield, each player chooses war or peace.\nCreatures controlled by players who chose war get +3/+0.\nCreatures controlled by players who chose peace get +0/+3.','\n',char(10)),'Creature — Angel',NULL,'6','CMA,CMD,V15',NULL,'{''cardKingdom'': ''https://mtgjson.com/links/f3bc8fa1c599af98'', ''tcgplayer'': ''https://mtgjson.com/links/ba539e89f7017917''}','rare','51104596-ffb3-49e3-a1d5-fa294da0d758','eb03995e-1748-44ca-890b-c36795829fa5','19e302f8-6ddb-4a43-98bc-ee71a456ac5a','CMD',NULL,'Angel',NULL,'46927',replace('Flying\nAs Archangel of Strife enters the battlefield, each player chooses war or peace.\nCreatures controlled by players who chose war get +3/+0.\nCreatures controlled by players who chose peace get +0/+3.','\n',char(10)),'6','Creature — Angel','Creature','f6720c32-c8d6-58cb-82ed-9f64b4395cbc',NULL,NULL);
INSERT INTO `cards` VALUES(41226,'John Matson',NULL,'paper','black',NULL,'23075','U',NULL,'U',4.0,NULL,15522,NULL,NULL,NULL,'At the sight of the thing the calamari vendor''s eyes went wide, but from fear or avarice none could tell.',NULL,'1997',NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,NULL,'normal',NULL,NULL,NULL,'{3}{U}','10042','2327',NULL,'51ddd004-50ba-572d-a2e6-bf171c48c620',NULL,NULL,'4263','Giant Octopus','56',NULL,NULL,'Summon - Creature',NULL,'3','7ED,8ED,9ED,POR,S00,S99',NULL,'{''cardKingdom'': ''https://mtgjson.com/links/73e2621f2179d5a5'', ''cardmarket'': ''https://mtgjson.com/links/ac81ec3b293d963d'', ''tcgplayer'': ''https://mtgjson.com/links/19a843d4b71e16a4''}','common','4528edca-cc36-4f63-9615-24ca315d672c','0d8f9a2e-b70c-4d16-866f-143e2b2ce4c7','c181d2a4-5959-4409-9bd3-ecedf8ec9516','POR',NULL,'Octopus',NULL,'683',NULL,'3','Creature — Octopus','Creature','b7c426ae-5015-5644-9273-40be2f0c202a',NULL,NULL);
INSERT INTO `cards` VALUES(30318,'Kieran Yanner',NULL,'paper','black',NULL,'228686','W',NULL,'W',1.0,NULL,7051,NULL,NULL,NULL,NULL,NULL,'2015',NULL,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,'Enchant','normal',NULL,NULL,NULL,'{W}','415571','225277',NULL,'e16bc967-7e97-5647-8c19-fddef4090f77',NULL,NULL,NULL,'Cartouche of Solidarity','45',NULL,NULL,NULL,NULL,NULL,'AKH,AKR,MB1',NULL,'{''cardKingdom'': ''https://mtgjson.com/links/8d4ba0e38708fe6c'', ''cardmarket'': ''https://mtgjson.com/links/f7bb00fcac5ca33f'', ''tcgplayer'': ''https://mtgjson.com/links/5f57b56618cc3d83''}','common','1ef605df-6dc5-4c1d-9cc3-14353ad15989','1cdd3982-d667-476b-b29a-d27c73ce9de6','b9176173-c4a1-45ae-8f34-bd6b31c141fe','MB1',NULL,'Aura,Cartouche',NULL,'202845',replace('Enchant creature you control\nWhen Cartouche of Solidarity enters the battlefield, create a 1/1 white Warrior creature token with vigilance.\nEnchanted creature gets +1/+1 and has first strike.','\n',char(10)),NULL,'Enchantment — Aura Cartouche','Enchantment','f11efc16-eb5c-5228-80a8-5fc822179bfb',NULL,NULL);
INSERT INTO `cards` VALUES(12377,'rk post',NULL,'paper','black',NULL,'212625',NULL,NULL,NULL,2.0,NULL,72,NULL,NULL,NULL,'Infinite possibilities contained in a finite space.',NULL,'2015',NULL,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,NULL,'normal',NULL,NULL,NULL,'{2}','298183','221076',NULL,'7a68cbb8-4b5f-597d-8d31-ebd0c71077ca',NULL,NULL,'430454','Thought Vessel','235',NULL,replace('You have no maximum hand size.\n{T}: Add {C} to your mana pool.','\n',char(10)),'Artifact',NULL,NULL,'C15,CM2,CMA,CMR,MB1,PLIST,PZ1',NULL,'{''cardKingdom'': ''https://mtgjson.com/links/64c98f876c904d16'', ''cardmarket'': ''https://mtgjson.com/links/18f7be10b127067c'', ''tcgplayer'': ''https://mtgjson.com/links/689fad3fd99d54c1''}','common','ac9da194-02e3-4f53-9e79-b94cc172fd3b','b0034ffb-2e2d-40e5-8165-0c8069bc8732','9965d9c5-2ebf-4a6c-930e-55c5890979be','CMA',NULL,NULL,NULL,'132192',replace('You have no maximum hand size.\n{T}: Add {C}.','\n',char(10)),NULL,'Artifact','Artifact','03df8c79-09c1-5e3f-8f63-6ce4a6230be4',NULL,NULL);
INSERT INTO `cards` VALUES(15481,'Kekai Kotaki',NULL,'paper','black',NULL,'195717','U',NULL,'U',7.0,'b',2422,NULL,NULL,NULL,NULL,NULL,'2015',NULL,0,0,0,1,0,0,0,0,0,1,0,1,0,0,0,'Flying','normal',NULL,NULL,NULL,'{5}{U}{U}','268843','203447',NULL,'343e7806-5a3a-5a53-9495-c6156f3f7d5e',NULL,NULL,'386367','Sphinx of Uthuun','59',NULL,replace('Flying\nWhen Sphinx of Uthuun enters the battlefield, reveal the top five cards of your library. An opponent separates those cards into two piles. Put one pile into your hand and the other into your graveyard.','\n',char(10)),'Creature — Sphinx',NULL,'5','C14,C18,CMR,DDI,DDN,IMA,M12,M13',NULL,'{''cardKingdom'': ''https://mtgjson.com/links/0f5dbe2ef22cc38b'', ''cardmarket'': ''https://mtgjson.com/links/b1c5b7f69886e384'', ''tcgplayer'': ''https://mtgjson.com/links/440d2943d9e036a6''}','rare','e1f69adc-81a8-4009-a958-2a0d414fc4e4','5eb4f5d3-ae53-474d-be67-ec307184bf7b','4b4f268d-34ae-416d-a412-66f4fe37659c','DDN',NULL,'Sphinx',NULL,'92874',replace('Flying\nWhen Sphinx of Uthuun enters the battlefield, reveal the top five cards of your library. An opponent separates those cards into two piles. Put one pile into your hand and the other into your graveyard.','\n',char(10)),'6','Creature — Sphinx','Creature','ff454b91-03b2-50d4-985f-4ccc6de482e2',NULL,NULL);
INSERT INTO `cards` VALUES(22361,'Ruth Thompson',NULL,'paper','black',NULL,'20000','B',NULL,'B',4.0,NULL,8296,NULL,NULL,NULL,replace('"Open the gates, and bid them enter."\n—Lim-Dûl, the Necromancer','\n',char(10)),NULL,'1993',NULL,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'Flying','normal',NULL,NULL,NULL,'{2}{B}{B}','6213','24',NULL,'9615e749-ed22-5544-b03b-cd159cf9be6e',NULL,NULL,'2437','Abyssal Specter','113',NULL,replace('Flying\nWhenever Abyssal Specter damages any player, that player chooses and discards a card from his or her hand. Ignore this ability if the player has no cards in hand.','\n',char(10)),'Summon - Specter',NULL,'2','5ED,6ED,7ED,8ED,BRB,DDC,DKM,DPA,DVD,ICE,MM3,PS11',NULL,'{''cardKingdom'': ''https://mtgjson.com/links/bf85687083bf958a'', ''cardmarket'': ''https://mtgjson.com/links/6ba7eef345ff1adc'', ''tcgplayer'': ''https://mtgjson.com/links/b8abfb742cf2c9c2''}','uncommon','fc26f19c-bcf7-4bd8-af42-4757dbe47fb1','766df90e-d820-475c-a561-a42c43b6727b','51833cff-6519-4806-8d91-0040e9a02189','ICE',NULL,'Specter',NULL,'4575',replace('Flying\nWhenever Abyssal Specter deals damage to a player, that player discards a card.','\n',char(10)),'3','Creature — Specter','Creature','2cf7a942-363c-5b65-bad8-9bcfe73dce28',NULL,NULL);
INSERT INTO `cards` VALUES(34350,'Carl Critchlow',NULL,'mtgo,paper','black','190377','190125','R',NULL,'R',4.0,NULL,16248,NULL,NULL,NULL,NULL,NULL,'2003',NULL,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,'Echo','normal',NULL,NULL,NULL,'{3}{R}','262073','8687',NULL,'28e85441-745b-5f35-aab7-655a300b912c','48627','48626','370401','Hammerheim Deadeye','119',NULL,replace('Echo {5}{R} (At the beginning of your upkeep, if this came under your control since the beginning of your last upkeep, sacrifice it unless you pay its echo cost.)\nWhen Hammerheim Deadeye enters the battlefield, destroy target creature with flying.','\n',char(10)),'Creature — Giant Warrior',NULL,'3','MMA,PLC',NULL,'{''cardKingdom'': ''https://mtgjson.com/links/262bb9a4bbc48852'', ''cardKingdomFoil'': ''https://mtgjson.com/links/5c7bbc6eadab02c1'', ''cardmarket'': ''https://mtgjson.com/links/4cbbfdeb43c57038'', ''tcgplayer'': ''https://mtgjson.com/links/4e53bf3f32d4c993''}','common','1bd39a59-688f-4465-8f00-540326c41128','24ec69f1-0edf-4b4f-a89e-04ea2fd40d7f','a6962ccc-9883-48ca-9a5f-aeb68e66fd97','MMA',NULL,'Giant,Warrior',NULL,'68381',replace('Echo {5}{R} (At the beginning of your upkeep, if this came under your control since the beginning of your last upkeep, sacrifice it unless you pay its echo cost.)\nWhen Hammerheim Deadeye enters the battlefield, destroy target creature with flying.','\n',char(10)),'3','Creature — Giant Warrior','Creature','aa923abe-e78c-528e-a35b-6bbbe9876b60',NULL,NULL);
INSERT INTO `cards` VALUES(55692,'Mark Behm',NULL,'arena,mtgo,paper','black','214257','213950','U',NULL,'U',3.0,NULL,1296,NULL,NULL,NULL,NULL,NULL,'2015',NULL,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,NULL,'normal',NULL,NULL,NULL,'{2}{U}','298490','225947','66053','110a85f8-15de-5c93-82cb-02278eae1e33','65105','65104','435198','Arcane Adaptation','46',NULL,replace('As Arcane Adaptation enters the battlefield, choose a creature type.\nCreatures you control are the chosen type in addition to their other types. The same is true for creature spells you control and creature cards you own that aren''t on the battlefield.','\n',char(10)),'Enchantment',NULL,NULL,'PXLN,XLN',NULL,'{''cardKingdom'': ''https://mtgjson.com/links/b352a91a2fd189ac'', ''cardKingdomFoil'': ''https://mtgjson.com/links/484731e3d680eac0'', ''cardmarket'': ''https://mtgjson.com/links/b83a97501925fbdb'', ''tcgplayer'': ''https://mtgjson.com/links/8c86e70f30ad4307''}','rare','bf3edaaf-cf63-4e17-94ae-9d9991d9fb5f','6dfc42e2-4352-411d-b346-082511541d1c','2188c03f-11b6-4651-914a-b4fdd59127e3','XLN',NULL,NULL,NULL,'142001',replace('As Arcane Adaptation enters the battlefield, choose a creature type.\nCreatures you control are the chosen type in addition to their other types. The same is true for creature spells you control and creature cards you own that aren''t on the battlefield.','\n',char(10)),NULL,'Enchantment','Enchantment','b60ea5bc-3ad8-55d2-a184-791ab33a244f',NULL,NULL);
INSERT INTO `cards` VALUES(36758,'Heather Hudson',NULL,'mtgo,paper','black','61313','60313','U',NULL,NULL,0.0,NULL,299,NULL,NULL,NULL,NULL,NULL,'1997',NULL,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,'Cycling','normal',NULL,NULL,NULL,NULL,'1951','3348',NULL,'9a26eeff-de4b-5554-8516-b22d371b22a9','18238','18237','41138','Lonely Sandbar','320',NULL,replace('Lonely Sandbar comes into play tapped.\nocT: Add oU to your mana pool.\nCycling oU (oU, Discard this card from your hand: Draw a card.)','\n',char(10)),'Land',NULL,NULL,'C13,C14,C18,C20,CM2,CMD,DDJ,DDT,HA2,MH1,ONS,PZ2,VMA',NULL,'{''cardKingdom'': ''https://mtgjson.com/links/8d9a1b39d3c4bd02'', ''cardKingdomFoil'': ''https://mtgjson.com/links/3e7056f72e5270bd'', ''cardmarket'': ''https://mtgjson.com/links/10431d782e7e43d5'', ''tcgplayer'': ''https://mtgjson.com/links/0af4bba1631040b4''}','common','d8ddab06-aff7-4c40-bcaa-10cbfe899dd9','756d8b95-ba41-4d18-904b-42a1bceea45d','765863c8-1be0-4bb1-9e9c-db7701cffde3','ONS',NULL,NULL,NULL,'10487',replace('Lonely Sandbar enters the battlefield tapped.\n{T}: Add {U}.\nCycling {U} ({U}, Discard this card: Draw a card.)','\n',char(10)),NULL,'Land','Land','06ab039c-0d3a-5852-b6b5-e31e65d87d85',NULL,NULL);
INSERT INTO `cards` VALUES(30131,'Adam Paquette',NULL,'arena,mtgo,paper','black','234405','234041','B,W',NULL,NULL,0.0,NULL,221,NULL,NULL,NULL,NULL,NULL,'2015',NULL,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,'Scry','normal',NULL,NULL,NULL,NULL,'468149','208685','72037','7ec804ca-9111-5a6d-b0d7-f95f9987f2c9',NULL,'81737','485578','Temple of Silence','255',NULL,replace('Temple of Silence enters the battlefield tapped.\nWhen Temple of Silence enters the battlefield, scry 1.\n{T}: Add {W} or {B}.','\n',char(10)),'Land',NULL,NULL,'M20,M21,PM20,PM21,THS',NULL,'{''cardKingdom'': ''https://mtgjson.com/links/2a88fb45ba79d26a'', ''cardKingdomFoil'': ''https://mtgjson.com/links/a2b057a8058d024a'', ''cardmarket'': ''https://mtgjson.com/links/f9671a374d875d6d'', ''tcgplayer'': ''https://mtgjson.com/links/ea30998520b72f71''}','rare','0f5b0f0a-dc16-45e2-91ab-28e0b9f66d00','54c84926-47de-42ed-a384-6f2ffa574b03','e6e6fce8-0f6a-4b84-865e-d4e4a4182f9f','M21',NULL,NULL,NULL,'215548',replace('Temple of Silence enters the battlefield tapped.\nWhen Temple of Silence enters the battlefield, scry 1.\n{T}: Add {W} or {B}.','\n',char(10)),NULL,'Land','Land','dd34648e-055c-594f-955b-5df9f11517b6','e53903c1-46e9-52ac-9453-6b48290169a5',NULL);
CREATE TABLE `foreign_data`
(`id` BIGINT,
`flavorText` VARCHAR(1023),
`language` VARCHAR(1023),
`multiverseid` BIGINT,
`name` VARCHAR(1023),
`text` VARCHAR(1023),
`type` VARCHAR(1023),
`uuid` VARCHAR(1023));
INSERT INTO `foreign_data` VALUES(192686,'악귀소환술사가 정신을 어지럽힌 신령은 쉴새 없이 분노하는 심령으로 변한다.','Korean',412235,'번개 도끼',replace('번개 도끼를 발동하기 위한 추가비용으로, 카드 한 장을 버리거나 {5}를 지불한다.\n생물을 목표로 정한다. 번개 도끼는 그 생물에게 피해 5점을 입힌다.','\n',char(10)),'순간마법','c194d6c3-6f56-5753-92cb-2f69d92b57cc');
INSERT INTO `foreign_data` VALUES(58327,'熱意は準備にしかず。','Japanese',499405,'マナ吸収','呪文１つを対象とする。それを打ち消す。あなたの次のメイン・フェイズの開始時に、その呪文の点数で見たマナ・コストに等しい点数の{C}を加える。','インスタント','ad5c9ed1-51b1-5f48-a4d4-47e4a92b5247');
INSERT INTO `foreign_data` VALUES(70171,'Un sangpyre est toujours redoutable, mais si son feu est attisé par sorcellerie, il est capable de dévaster des armées entières.','French',122820,'Sangpyre flamboyant','Tant que le Sangpyre flamboyant est enchanté, il gagne +2/+2, a le piétinement et « {R} : Le Sangpyre flamboyant gagne +1/+0 jusqu''à la fin du tour. »','Créature : élémental et guerrier','a172c415-e2ee-56bb-ad04-664dd7910343');
INSERT INTO `foreign_data` VALUES(84705,'« Un chef inspire le courage, mais ce sont les forgerons et les guérisseurs qui font vivre l''espoir. » —Thalia, cathare hérétique','French',415390,'Bouclier cathare',replace('La créature équipée gagne +0/+3 et a la vigilance.\nÉquipement {3} ({3} : Attachez à la créature ciblée que vous contrôlez. N''attachez l''équipement que lorsque vous pourriez lancer un rituel.)','\n',char(10)),'Artefact : équipement','55a8a643-a924-5c96-ad1f-8fc2f2ac1f3f');
INSERT INTO `foreign_data` VALUES(165056,'Un potente mago ha creato il trespolo per sorvegliare un portale tra le dimensioni. Il mago è scomparso da tempo, ma i draghi sono ancora di guardia.','Italian',168510,'Trespolo del Drago','{5}{R}{R}: Metti in gioco una pedina creatura Drago 5/5 rossa con volare.','Incantesimo','ab5cbeb2-4210-55e1-ab43-e1a33e274320');
INSERT INTO `foreign_data` VALUES(133779,'','Chinese Simplified',383616,'压迫射线',replace('结附于生物\n除非所结附之生物的操控者支付{3}，否则它不能进行攻击或阻挡。\n所结附之生物的起动式异能增加{3}来起动。','\n',char(10)),'结界～灵气','f02671a6-fcd4-5384-83d2-6cde763f9e10');
INSERT INTO `foreign_data` VALUES(92817,'Los prisioneros orzhov son macerados en un brebaje oscuro que les quita fuerza a sus almas. Los patriarcas beben ese brebaje para prolongar sus propias vidas.','Spanish',118706,'Remojar en abatimiento','Remojar en abatimiento hace 2 puntos de daño a la criatura objetivo y tú ganas 2 vidas.','Instantáneo','aa23243e-9291-5e49-b563-08dd6cf06a7b');
INSERT INTO `foreign_data` VALUES(34369,'','Spanish',404968,'Hidra de Oran-Rief','Arrolla.Aterrizaje — Siempre que una tierra entre al campo de batalla bajo tu control, pon un contador +1/+1 sobre la Hidra de Oran-Rief. Si esa tierra es un bosque, en vez de eso, pon dos contadores +1/+1 sobre la Hidra de Oran-Rief.','Criatura — Hidra','be4a442c-5ce0-52f6-8a97-ffc70d7bef7d');
INSERT INTO `foreign_data` VALUES(180270,'「这都是那些蠢货闯的祸。」 ～提莎娜','Chinese Simplified',441664,'醒转拼合像','醒转拼合像的力量和防御力各等同于由你操控之地中名称不同者的种数。','神器生物 ～魔像','c0cec6af-73e2-5677-a339-d778a13c4d70');
INSERT INTO `foreign_data` VALUES(209120,'','Portuguese (Brazil)',NULL,'Vidente do Jasmim','','','b15644b3-8da5-5938-a2e9-a62f28cfe257');
INSERT INTO `foreign_data` VALUES(118061,'"Ningún cuerpo puede contener tanta furia. Me recuerda a otra batalla, de mucho tiempo atrás". —Sarkhan Vol','Spanish',389289,'Aullador bélico mardu','Incursión — Cuando el Aullador bélico mardu entre al campo de batalla, si atacaste con una criatura este turno, agrega {R}{W}{B} a tu reserva de maná.','Criatura — Chamán orco','eb0c06a5-5887-5b6c-855c-79fda9301419');
INSERT INTO `foreign_data` VALUES(105689,'考慮到有狂熱軍隊、卑劣獵者和龐巨怪獸，留點心思提防天邊總是好的。','Chinese Traditional',482328,'警覺智絆人',replace('警戒\n在你的結束步驟開始時，你每操控一個具警戒異能的生物，便獲得1點生命。','\n',char(10)),'生物 ～人類／斥候','86cf4d49-4698-576b-ae97-e16fceeee184');
INSERT INTO `foreign_data` VALUES(198865,'파티의 죽음.','Korean',477863,'불협화음 피리꾼','불협화음 피리꾼이 죽을 때, 0/1 백색 염소 생물 토큰 한 개를 만든다.','생물 — 좀비 사티로스','f6a4b7f1-41fb-5422-a019-036886c84dce');
INSERT INTO `foreign_data` VALUES(33949,'"Es difícil encontrar sus puntos débiles, pero disfruto mucho buscándolos".','Spanish',404898,'Tiradora de primera de Hagra','{4}{B}: La criatura objetivo obtiene -1/-1 hasta el final del turno.','Criatura — Asesino humano aliado','83f1ff24-22b0-586a-81fa-d7baa6cebd87');
CREATE TABLE `legalities`
(`id` BIGINT,
`format` VARCHAR(1023),
`status` VARCHAR(1023),
`uuid` VARCHAR(1023));
INSERT INTO `legalities` VALUES(15134,'penny','Legal','c33226f0-f6c4-5ada-bdf2-d32373a48fed');
INSERT INTO `legalities` VALUES(248978,'vintage','Legal','e295706f-cf5e-5c5d-8af3-baeaa84eb42f');
INSERT INTO `legalities` VALUES(256284,'legacy','Legal','4578bfe7-059e-53ed-ab8d-7e1aaebb8227');
INSERT INTO `legalities` VALUES(380205,'historic','Legal','0dcd85c3-7a40-5d64-8be1-805d2c118d45');
INSERT INTO `legalities` VALUES(381285,'penny','Legal','00f6a8fe-62d8-5996-9ad6-e4e0577a3ab7');
INSERT INTO `legalities` VALUES(250815,'brawl','Legal','d54b922f-006e-59ff-bfeb-f96f3278fc7b');
INSERT INTO `legalities` VALUES(27636,'legacy','Legal','b614070c-0125-5dca-900a-446ad984c21d');
INSERT INTO `legalities` VALUES(281969,'commander','Legal','bd024eff-b3ca-5811-af4c-90cafe99ef0d');
INSERT INTO `legalities` VALUES(343502,'pioneer','Legal','916fdcad-4e88-5c7b-90b2-8bd6cc92fd39');
INSERT INTO `legalities` VALUES(197808,'vintage','Legal','1eb3ada8-f422-5524-bf92-8463cddd8051');
INSERT INTO `legalities` VALUES(127976,'vintage','Legal','ec30260a-0caf-5251-ad40-284800662638');
INSERT INTO `legalities` VALUES(37714,'historic','Legal','6acc8501-aa59-5777-a7d0-e3ef66a609ea');
INSERT INTO `legalities` VALUES(84719,'duel','Legal','d412abac-ef2c-5b10-9e4a-c7062911f9c8');
INSERT INTO `legalities` VALUES(48618,'commander','Legal','24434feb-2f7a-51bb-9a3c-4f051e0fdc7e');
CREATE TABLE `rulings`
(`id` BIGINT,
`date` DATE,
`text` VARCHAR(1023),
`uuid` VARCHAR(1023));
INSERT INTO `rulings` VALUES(67029,'2017-07-14','Once Hour of Devastation begins to resolve, no player may take actions until it’s done. Notably, players can’t try to give a creature indestructible again to save it from the damage.','7ff2d473-fddb-5a25-8f7a-fd5fc0578404');
INSERT INTO `rulings` VALUES(61650,'2015-06-22','If there are additional costs to cast an instant or sorcery spell, apply those before applying cost reductions.','a20dcbbe-28bc-5983-bb71-10b7407b39bb');
INSERT INTO `rulings` VALUES(53348,'2013-09-15','Unlike other Aura spells, an Aura spell with bestow isn’t countered if its target is illegal as it begins to resolve. Rather, the effect making it an Aura spell ends, it loses enchant creature, it returns to being an enchantment creature spell, and it res','834f3765-b24f-59c1-9309-f0bcc131255f');
INSERT INTO `rulings` VALUES(22895,'2016-08-23','A conspiracy doesn’t count as a card in your deck for purposes of meeting minimum deck size requirements. (In most drafts, the minimum deck size is 40 cards.)','2388489c-54c5-5649-b178-d1b00e4cfc5e');
INSERT INTO `rulings` VALUES(47430,'2004-10-04','If the spell being copied targets a spell on the stack, it is possible to target Fork itself since Fork is still on the stack when you pick the target(s) for the copy. Note that the copy’s target will be illegal when it resolves.','d8df45dc-4f88-5dee-88c7-7dfa8430fbac');
INSERT INTO `rulings` VALUES(50096,'2014-07-18','Circle of Flame’s ability triggers only if a creature without flying is declared as an attacker during the declare attackers step. If a creature with flying attacks you or a planeswalker you control and then loses flying, or if a creature without flying i','61d228aa-2646-5398-8bfa-77f0150b8aa2');
INSERT INTO `rulings` VALUES(286,'2004-12-01','Unless Time Stop is cast during the Ending phase, any “at the beginning of the end step”-triggered abilities don’t get the chance to trigger on the turn Time Stop is cast. These abilities will trigger at the beginning of the next end step.','81bcb781-c127-5def-8c17-ffcc2f09849a');
INSERT INTO `rulings` VALUES(84915,'2018-01-19','Once you have the city’s blessing, you have it for the rest of the game, even if you lose control of some or all of your permanents. The city’s blessing isn’t a permanent itself and can’t be removed by any effect.','d1e5524f-526b-5596-963b-b5bbf0be5037');
INSERT INTO `rulings` VALUES(8470,'2008-10-01','Unearth grants haste to the creature that’s returned to the battlefield. However, neither of the “exile” abilities is granted to that creature. If that creature loses all its abilities, it will still be exiled at the beginning of the end step, and if it w','c0a78a33-31dd-51c7-a204-3cacf2b33c91');
INSERT INTO `rulings` VALUES(15377,'2015-08-25','If the non-awaken part of the spell doesn’t require a target and you cast the spell for its awaken cost, then the spell won’t resolve if the target land you control becomes illegal before the spell resolves (such as due to being destroyed in response to t','297e421c-b653-5a33-bf1c-b40381cd05ec');
INSERT INTO `rulings` VALUES(61610,'2015-06-22','If a permanent has an {X} in its mana cost, that X is 0.','e29fbc87-b6ae-5ef2-8527-0caec7a31fa6');
INSERT INTO `rulings` VALUES(7730,'2008-10-01','In a Two-Headed Giant game, a creature “attacks alone” if it’s the only creature declared as an attacker by your entire team. If you control that attacking creature, your exalted abilities will trigger but your teammate’s exalted abilities won’t.','91ab4603-562c-59b7-8337-6c5ef922477a');
INSERT INTO `rulings` VALUES(61958,'2015-06-22','Somberwald Alpha’s first ability will give each creature you control that becomes blocked +1/+1 until end of turn. It doesn’t matter how many of your opponent’s creatures are blocking each of your creatures.','6c7ad929-2b1f-5248-ae00-e30d30209401');
INSERT INTO `rulings` VALUES(29125,'2019-10-04','Casting a card as an Adventure isn’t casting it for an alternative cost. Effects that allow you to cast a spell for an alternative cost or without paying its mana cost may allow you to apply those to the Adventure.','f5bbbeae-e0b7-50e2-8666-197c3831aa8d');
CREATE TABLE `sets`
(`id` BIGINT,
`baseSetSize` BIGINT,
`block` VARCHAR(1023),
`booster` VARCHAR(1023),
`code` VARCHAR(1023),
`isFoilOnly` BIGINT,
`isForeignOnly` BIGINT,
`isNonFoilOnly` BIGINT,
`isOnlineOnly` BIGINT,
`isPartialPreview` BIGINT,
`keyruneCode` VARCHAR(1023),
`mcmId` BIGINT,
`mcmIdExtras` BIGINT,
`mcmName` VARCHAR(1023),
`mtgoCode` VARCHAR(1023),
`name` VARCHAR(1023),
`parentCode` VARCHAR(1023),
`releaseDate` DATE,
`tcgplayerGroupId` BIGINT,
`totalSetSize` BIGINT,
`type` VARCHAR(1023));
INSERT INTO `sets` VALUES(298,156,NULL,NULL,'PCA',0,0,1,0,0,'PCA',1722,NULL,'Planechase Anthology',NULL,'Planechase Anthology',NULL,'2016-11-25',1793,156,'planechase');
INSERT INTO `sets` VALUES(421,6,NULL,NULL,'PS14',1,0,0,0,0,'DEFAULT',NULL,NULL,NULL,NULL,'San Diego Comic-Con 2014',NULL,'2014-07-08',NULL,6,'promo');
INSERT INTO `sets` VALUES(445,180,NULL,'{''default'': {''boosters'': [{''contents'': {''basic'': 2, ''common'': 5, ''rare'': 1, ''uncommon'': 2}, ''weight'': 1}], ''boostersTotalWeight'': 1, ''sheets'': {''basic'': {''cards'': {''026eba13-6231-5299-a9bb-338f2d9eeeaa'': 1, ''04db31b4-d70e-578d-a044-4a695b8c8611'': 1, ''0570','PTK',0,0,0,0,0,'PTK',30,NULL,'Portal Three Kingdoms',NULL,'Portal Three Kingdoms',NULL,'1999-07-06',88,180,'starter');
INSERT INTO `sets` VALUES(131,2,'Judge Gift Cards',NULL,'G01',1,0,0,0,0,'DCI',NULL,NULL,NULL,NULL,'Judge Gift Cards 2001',NULL,'2001-01-01',62,2,'promo');
INSERT INTO `sets` VALUES(260,6,'Magic Player Rewards',NULL,'P05',0,0,0,0,0,'DCI',NULL,NULL,NULL,NULL,'Magic Player Rewards 2005',NULL,'2005-01-01',NULL,6,'promo');
INSERT INTO `sets` VALUES(314,3,NULL,NULL,'PDP12',1,0,0,0,0,'PMTG2',NULL,NULL,NULL,NULL,'Duels of the Planeswalkers 2012 Promos',NULL,'2011-01-01',NULL,3,'promo');
INSERT INTO `sets` VALUES(492,8,NULL,NULL,'SS2',0,0,0,0,0,'SS2',2460,NULL,'Signature Spellbook: Gideon',NULL,'Signature Spellbook: Gideon',NULL,'2019-06-28',2447,8,'spellbook');
INSERT INTO `sets` VALUES(530,16,NULL,NULL,'V17',1,0,0,0,0,'V17',1819,NULL,'From the Vault: Transform','V17','From the Vault: Transform',NULL,'2017-11-24',2078,16,'from_the_vault');
INSERT INTO `sets` VALUES(170,264,'Innistrad','{''default'': {''boosters'': [{''contents'': {''basic'': 1, ''dfc'': 1, ''sfcCommon'': 9, ''sfcRareMythic'': 1, ''sfcUncommon'': 3}, ''weight'': 31}, {''contents'': {''basic'': 1, ''dfc'': 1, ''foil'': 1, ''sfcCommon'': 8, ''sfcRareMythic'': 1, ''sfcUncommon'': 3}, ''weight'': 9}], ''boost','ISD',0,0,0,0,0,'ISD',1327,NULL,'Innistrad','ISD','Innistrad',NULL,'2011-09-30',59,264,'expansion');
INSERT INTO `sets` VALUES(72,77,NULL,NULL,'DDI',0,0,0,0,0,'DDI',1350,NULL,'Duel Decks: Venser vs. Koth','DDI','Duel Decks: Venser vs. Koth',NULL,'2012-03-30',367,77,'duel_deck');
INSERT INTO `sets` VALUES(202,301,'Lorwyn','{''default'': {''boosters'': [{''contents'': {''common'': 11, ''rare'': 1, ''uncommon'': 3}, ''weight'': 31}, {''contents'': {''common'': 10, ''foil'': 1, ''rare'': 1, ''uncommon'': 3}, ''weight'': 9}], ''boostersTotalWeight'': 40, ''sheets'': {''common'': {''balanceColors'': True, ''cards','LRW',0,0,0,0,0,'LRW',84,NULL,'Lorwyn','LRW','Lorwyn',NULL,'2007-10-12',67,301,'expansion');
INSERT INTO `sets` VALUES(283,1,'Alara',NULL,'PALA',1,0,0,0,0,'ALA',NULL,NULL,NULL,NULL,'Shards of Alara Promos','ALA','2008-10-03',NULL,1,'promo');
INSERT INTO `sets` VALUES(364,2,NULL,NULL,'PLGS',1,0,0,0,0,'PMEI',NULL,NULL,NULL,NULL,'Love Your LGS',NULL,'2020-05-18',NULL,2,'promo');
INSERT INTO `sets` VALUES(35,136,NULL,NULL,'BRB',0,0,1,0,0,'BRB',NULL,NULL,NULL,NULL,'Battle Royale Box Set',NULL,'1999-11-12',15,136,'box');
CREATE TABLE `set_translations`
(`id` BIGINT,
`language` VARCHAR(1023),
`setCode` VARCHAR(1023),
`translation` VARCHAR(1023));
INSERT INTO `set_translations` VALUES(62,'Chinese Traditional','8ED','核心系列第八版');
INSERT INTO `set_translations` VALUES(607,'Korean','FRF','재창조된 운명');
INSERT INTO `set_translations` VALUES(745,'Italian','M14','Set Base Magic 2014');
INSERT INTO `set_translations` VALUES(766,'Japanese','M20',NULL);
INSERT INTO `set_translations` VALUES(391,'Chinese Simplified','DDH','Ajani vs. Nicol Bolas');
INSERT INTO `set_translations` VALUES(125,'Italian','ARB','Rinascita di Alara');
INSERT INTO `set_translations` VALUES(719,'Russian','LGN',NULL);
INSERT INTO `set_translations` VALUES(357,'Korean','DDD','Garruk vs. Liliana');
INSERT INTO `set_translations` VALUES(538,'Portuguese (Brazil)','DST','Darksteel');
INSERT INTO `set_translations` VALUES(931,'Chinese Simplified','RAV','拉尼卡公会城');
INSERT INTO `set_translations` VALUES(457,'Korean','DDN','Speed vs. Cunning');
INSERT INTO `set_translations` VALUES(207,'Korean','C14','Commander (2014 Edition)');
INSERT INTO `set_translations` VALUES(927,'Korean','PLC','차원의 혼돈');
INSERT INTO `set_translations` VALUES(13,'French','4ED','Quatrième édition');
CREATE TABLE `rulings_dg_tmp`
(`id` BIGINT,
`date` DATE,
`text` VARCHAR(1023),
`uuid` VARCHAR(1023));
INSERT INTO `rulings_dg_tmp` VALUES(46738,'2014-09-20','Kheru Lich Lord grants flying, trample, and haste to the creature that’s returned to the battlefield. However, neither of the “exile” abilities is granted to that creature. If that creature loses all its abilities, it will still be exiled at the beginning','cd110822-4eb9-52a3-a959-9e7ff0c9a8f5');
INSERT INTO `rulings_dg_tmp` VALUES(34131,'2014-11-24','You choose which opponent or opposing planeswalker the token is attacking as you put it onto the battlefield. It doesn’t have to be the same player or planeswalker Flamerush Rider is attacking.','e62a42f9-3358-5738-8d82-334d00bc50e7');
INSERT INTO `rulings_dg_tmp` VALUES(65625,'2019-10-04','An adventurer card is a creature card in every zone except the stack, as well as while on the stack if not cast as an Adventure. Ignore its alternative characteristics in those cases. For example, while it’s in your graveyard, Giant Killer is a white crea','21710295-d437-5b12-a1b0-56094ecc1b58');
INSERT INTO `rulings_dg_tmp` VALUES(81605,'2015-11-04','Seal of the Guildpact’s last ability can’t reduce the amount of colored mana you pay for a spell. It reduces only the generic component of that cost.','a654883e-3c62-58af-84f6-741a122dd832');
INSERT INTO `rulings_dg_tmp` VALUES(32268,'2008-08-01','Figure of Destiny’s abilities overwrite its power, toughness, and creature types. Typically, those abilities are activated in the order they appear on the card. However, if Figure of Destiny is an 8/8 Kithkin Spirit Warrior Avatar with flying and first st','6283ee8c-c13e-504d-9a55-ef5bce05fa83');
INSERT INTO `rulings_dg_tmp` VALUES(14441,'2013-04-15','You may pay {W/B} a maximum of one time for each extort triggered ability. You decide whether to pay when the ability resolves.','9a01e6be-e956-5754-bf04-adc1b23da9f5');
INSERT INTO `rulings_dg_tmp` VALUES(18500,'2009-10-01','Gabriel Angelfire will have the ability it gains through your next untap step, but will no longer have it during your next upkeep step.','8a601624-9e4a-55b4-9559-29c4b8162a44');
INSERT INTO `rulings_dg_tmp` VALUES(57984,'2013-04-15','The subtype Gate has no special rules significance, but other spells and abilities may refer to it.','8687707c-6f80-5972-b34b-cd0d089c026d');
INSERT INTO `rulings_dg_tmp` VALUES(61145,'2009-10-01','A plane card is treated as if its text box included “When you roll {PW}, put this card on the bottom of its owner’s planar deck face down, then move the top card of your planar deck off that planar deck and turn it face up.” This is called the “planeswalk','202e6df5-33d8-5706-afcf-1db90ae22137');
INSERT INTO `rulings_dg_tmp` VALUES(85652,'2010-06-15','Rebound will have no effect on copies of spells because you don’t cast them from your hand.','826cbf1f-0bc2-5fbd-922e-d0af8f9f5687');
INSERT INTO `rulings_dg_tmp` VALUES(71144,'2011-06-01','Although creature tokens go to the graveyard before ceasing to exist, they never count as creature cards and won’t increase the bonus granted by Bonehoard, however briefly.','828e071b-ca89-51d9-8fde-9b02e5878f10');
INSERT INTO `rulings_dg_tmp` VALUES(70441,'2017-07-14','Once you’ve activated an embalm ability, the card is immediately exiled. Opponents can’t try to stop the ability by exiling the card with an effect such as that of Crook of Condemnatnion.','bfdbca72-a1fd-5686-af3f-b6bd154fe856');
INSERT INTO `rulings_dg_tmp` VALUES(46247,'2014-09-20','If the chosen permanent is a copy of something else (for example, if the chosen permanent is another Clever Impersonator), then your Clever Impersonator enters the battlefield as whatever the chosen permanent copied.','e502db19-a246-5e79-ab37-640acc996e03');
INSERT INTO `rulings_dg_tmp` VALUES(8136,'2009-05-01','You gain 4 life whether or not the targeted spell’s controller pays {4} and whether or not the targeted spell is countered.','937ea00a-f4ab-5bd6-8bda-750fc653ff1b');
