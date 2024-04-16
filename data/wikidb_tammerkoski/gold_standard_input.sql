CREATE TABLE architect
(label VARCHAR(255),
description VARCHAR(255),
instance_of VARCHAR(255),
sex_or_gender VARCHAR(255),
country_of_citizenship VARCHAR(255),
date_of_birth VARCHAR(255),
date_of_death VARCHAR(255),
place_of_birth VARCHAR(255),
place_of_death VARCHAR(255),
occupation VARCHAR(255),
given_name VARCHAR(255),
commons_category VARCHAR(255),
family_name VARCHAR(255),
google_knowledge_graph_id VARCHAR(255),
kanto_id VARCHAR(255),
genicom_profile_id VARCHAR(255),
uppslagsverket_finland_id VARCHAR(255));
INSERT INTO architect VALUES('Jussi Paatela','Finnish architect','human','male','Finland','+1886-02-27T00:00:00Z','+1962-05-30T00:00:00Z','Vantaa','Helsinki','architect','Johan','Jussi Paatela','Paatela','/g/121k3hch','86636','6.000000006900674e+18','PaatelaJussi');
INSERT INTO architect VALUES('Bertel Strömmer','Finnish architect','human','male','Finland','+1890-07-11T00:00:00Z','+1962-04-18T00:00:00Z','Ikaalinen','Tampere','architect','Bertel','Bertel Strömmer','Strömmer','/g/122bxpg2','100592','nan','StroemmerBertel');
INSERT INTO architect VALUES('Frans Ludvig Calonius','Finnish architect','human','male','Grand Duchy of Finland','+1833-11-19T00:00:00Z','+1903-12-08T00:00:00Z','Helsinki','Tampere','architect','Frans','Frans Ludvig Calonius','Calonius','/g/121bv_h7','162659','6.00000000880351e+18','CaloniusFransLudvig');
INSERT INTO architect VALUES('Birger Federley','Finnish architect (1874-1935)','human','male','Finland','+1874-02-17T00:00:00Z','+1935-03-29T00:00:00Z','Helsinki','Helsinki','architect','Birger','Birger Federley','Federley','/g/120_rs2p','77527','6.000000002661182e+18','FederleyBirger');
INSERT INTO architect VALUES('Charles Bassi','Italian–Swedish–Finnish architect','human','male','Sweden','+1772-11-22T00:00:00Z','+1840-01-11T00:00:00Z','Turin','Turku','architect','Charles','Charles Bassi','Bassi','/g/120scwhd','103590','6.000000013369742e+18','BassiCharles');
INSERT INTO architect VALUES('Harry W. Schreck','Finnish architect (1904-1995)','human','male','Finland','+1904-10-25T00:00:00Z','+1995-11-13T00:00:00Z','nan','nan','architect','Harry','Harry W. Schreck','Schreck','/g/122hp8bs','81020','nan','SchreckHarry');
INSERT INTO architect VALUES('Bertel Jung','Finnish architect, urban planner, and professor','human','male','Finland','+1872-07-11T00:00:00Z','+1946-05-12T00:00:00Z','Jakobstad','Helsinki','architect','Bertel','Bertel Jung','Jung','/g/12233s92','45872','6.00000000215354e+18','JungBertel');
INSERT INTO architect VALUES('Georg Schreck','Finnish architect (1859-1925)','human','male','Finland','+1859-02-25T00:00:00Z','+1925-03-15T00:00:00Z','Hämeenlinna','Tampere','architect','Georg','Georg Schreck','Schreck','/g/120pgt5m','106965','6.000000007871949e+18','nan');
INSERT INTO architect VALUES('Hjalmar Åberg','Finnish architect (1870-1935)','human','male','Finland','+1870-10-15T00:00:00Z','+1935-08-08T00:00:00Z','Ekenäs','Vyborg','architect','Hjalmar','Hjalmar Åberg','Åberg','/g/122y06ds','109285','6.000000015554202e+18','AabergHjalmar');
INSERT INTO architect VALUES('August Krook','Finnish architect (1860-1935)','human','male','Finland','+1860-05-19T00:00:00Z','+1935-09-20T00:00:00Z','Veliky Novgorod','Turku','architect','August','August Krook','Krook','/g/15dpyy67','108930','6.000000006604057e+18','KrookAugust');
CREATE TABLE tammerkoski
(label VARCHAR(255),
description VARCHAR(255),
commons_category VARCHAR(255),
architect VARCHAR(255),
country VARCHAR(255),
located_in_the_administrative_territorial_entity VARCHAR(255),
instance_of VARCHAR(255),
coordinate_location VARCHAR(255),
image VARCHAR(255),
part_of VARCHAR(255),
google_knowledge_graph_id VARCHAR(255));
INSERT INTO tammerkoski VALUES('Tampere Market Hall','market hall in Tampere, Finland','Tampere Market Hall','Hjalmar Åberg','Finland','Tampere','market hall','61.4970398','Tampere market hall.jpg','Tammerkoski','/g/1213vcy7');
INSERT INTO tammerkoski VALUES('Tuulensuu house','building in Tampere, Finland','Tuulensuun talo','Bertel Strömmer','Finland','Tampere','building','61.49738889','Tuulensuun talo.JPG','Tammerkoski','/g/1yprtzknj');
INSERT INTO tammerkoski VALUES('Tampere Central Square','square in Tampere, Finland','Keskustori','nan','Finland','Tampere','square','61.4982','Tampere keskustori.jpg','Tammerkoski','nan');
INSERT INTO tammerkoski VALUES('Stockmann, Tampere','nan','Stockmann (Tampere)','nan','Finland','Tampere','department store','61.4986','Tampereen Stockmann Hämeenkadulta.jpg','Tammerkoski','/g/11bc6rg4b8');
INSERT INTO tammerkoski VALUES('Bank of Finland house','nan','Suomen Pankin talo (Tampere)','Harry W. Schreck','Finland','Tampere','building','61.49786','Suomen Pankin talo Tampere.jpg','Tammerkoski','/g/1yprv2wx7');
INSERT INTO tammerkoski VALUES('Tammerontalo','building in Tampere, Finland','nan','August Krook','Finland','Tampere','building','61.49768','Tammeron talo.JPG','Tammerkoski','/g/1yprv3755');
INSERT INTO tammerkoski VALUES('Kymmenenmiehen talo','building in Tampere, Finland','Kymmenenmiehen talo','Birger Federley','Finland','Tampere','building','61.49713889','Kymmenenmiehen talo Tampere.jpg','Tammerkoski','/g/1yprtyw1y');
INSERT INTO tammerkoski VALUES('Commerce Building','building in Tampere, Finland','Commercen talo','Bertel Jung','Finland','Tampere','building','61.4973329864','Commerce building Tampere.JPG','Tammerkoski','/g/1yp37czxm');
INSERT INTO tammerkoski VALUES('Palander Building','building in Tampere, Finland','Palanderin talo','Birger Federley','Finland','Tampere','building','61.4969961447','Palanderin talo.JPG','Tammerkoski','/g/121_j9jq');
INSERT INTO tammerkoski VALUES('Tuotanto House','building in Tampere, Finland','nan','nan','Finland','Tampere','building','61.49758333','Tuotannon talo.jpg','Tammerkoski','/g/11b8vf7v32');
INSERT INTO tammerkoski VALUES('Selin house','building in Tampere, Finland','Selinin talo','Frans Ludvig Calonius','Finland','Tampere','building','61.49719444','Selinin talo1.jpg','Tammerkoski','/g/1yp37jsfc');
INSERT INTO tammerkoski VALUES('Hämeensilta','bridge in Tampere, Finland','Hämeensilta','nan','Finland','Tampere','arch bridge','61.497917','Hämeensilta1.jpg','Tammerkoski','/g/120wrlmf');
INSERT INTO tammerkoski VALUES('Tempo Building','building in Tampere, Finland','Tempon talo','Bertel Strömmer','Finland','Tampere','building','61.49772222','Tempon talo.jpg','Tammerkoski','/g/1yp37g_b9');
INSERT INTO tammerkoski VALUES('Tampere Old Church','church in Tampere, Finland','Tampere Old church','Charles Bassi','Finland','Tampere','church building','61.4985783','Vanha kirkko.JPG','Tammerkoski','/g/120yrcpc');
INSERT INTO tammerkoski VALUES('Old Library Building','library building in Tampere, FInland','Vanha kirjastotalo','Jussi Paatela','Finland','Tampere','library','61.49875','Vanha kirjastotalo.JPG','Tammerkoski','/g/1hc0gvx6b');
INSERT INTO tammerkoski VALUES('Tampere Old City Hall','building in Tampere, Finland','Tampere City Hall','Georg Schreck','Finland','Tampere','hôtel de ville','61.4980193699','Tampereen kaupungintalo P-3.JPG','Tammerkoski','nan');
