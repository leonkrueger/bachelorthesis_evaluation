CREATE TABLE `expressed_in`
(`label` VARCHAR(1023),
`description` VARCHAR(1023),
`instance_of` VARCHAR(1023),
`uberon_id` VARCHAR(1023),
`subclass_of` VARCHAR(1023),
`microsoft_academic_id` VARCHAR(1023),
`foundational_model_of_anatomy_id` VARCHAR(1023),
`openalex_id` VARCHAR(1023));
INSERT INTO `expressed_in` VALUES('spleen','internal organ in all vertebrates','organ type','2106.0','animal organ','2780931953.0','7196.0','C2780931953');
INSERT INTO `expressed_in` VALUES('ascending aorta','part of the heart','artery','1496.0','segment of thoracic aorta','2778249958.0','3736.0','C2993369777');
INSERT INTO `expressed_in` VALUES('egg cell','haploid female reproductive cell or gamete','cell type','nan','gamete','2777095108.0','67343.0','C2777095108');
INSERT INTO `expressed_in` VALUES('monocyte','sub-type of white blood cells','cell type','nan','agranulocytes','2781184567.0','62864.0','C2781184567');
INSERT INTO `expressed_in` VALUES('quadriceps femoris muscle','human leg muscle','muscle organ','1377.0','muscle of anterior compartment of thigh','2778886780.0','22428.0','C2778886780');
INSERT INTO `expressed_in` VALUES('anterior pituitary','glandular, anterior lobe that, together with the posterior lobe, makes up the pituitary gland','anatomical structure','2196.0','lobe','2779029589.0','74627.0','C2779029589');
INSERT INTO `expressed_in` VALUES('ovary','ovum-producing reproductive organ, often found in pairs as part of the vertebrate female reproductive system','organ type','992.0','gonad','2778324911.0','7209.0','C2778324911');
INSERT INTO `expressed_in` VALUES('bone marrow','cells and soft materials in the hollow space of long bones','tissue','2371.0','tissue','2780007613.0','9608.0','C2909801294');
INSERT INTO `expressed_in` VALUES('spermatocyte','Sperm precursor cell that undergoes meiosis','cell type','nan','gametocyte','2776053789.0','84049.0','C2776053789');
INSERT INTO `expressed_in` VALUES('skeletal muscle tissue','nan','class of anatomical entity','1134.0','striated muscle tissue','nan','14069.0','nan');
INSERT INTO `expressed_in` VALUES('blastula','sphere of cells formed during early embryonic development in animals','embryogenesis','307.0','embryo','6047887.0','nan','C6047887');
INSERT INTO `expressed_in` VALUES('material anatomical entity','anatomical entity with mass','class of anatomical entity','465.0','physical anatomical entity','nan','67165.0','nan');
INSERT INTO `expressed_in` VALUES('invertebrate nurse cell','cell type in some invertebrates','nan','nan','Nurse cell','nan','nan','nan');
INSERT INTO `expressed_in` VALUES('secondary oocyte','cell type','cell type','nan','oocyte','nan','18646.0','nan');
CREATE TABLE `molecular_function`
(`label` VARCHAR(1023),
`description` VARCHAR(1023),
`subclass_of` VARCHAR(1023),
`gene_ontology_id` VARCHAR(1023),
`exact_match` VARCHAR(1023),
`instance_of` VARCHAR(1023));
INSERT INTO `molecular_function` VALUES('molecular function','Elemental activities, such as catalysis or binding, describing the actions of a gene product at the molecular level. A given gene product may exhibit one or more molecular functions.','biological function','GO:0003674','http://purl.obolibrary.org/obo/GO_0003674','nan');
INSERT INTO `molecular_function` VALUES('DNA binding','Any molecular function by which a gene product interacts selectively and non-covalently with DNA (deoxyribonucleic acid).','nucleic acid binding','GO:0003677','http://purl.obolibrary.org/obo/GO_0003677','molecular function');
INSERT INTO `molecular_function` VALUES('protein domain specific binding','Interacting selectively and non-covalently with a specific domain of a protein.','protein binding','GO:0019904','http://purl.obolibrary.org/obo/GO_0019904','molecular function');
INSERT INTO `molecular_function` VALUES('double-stranded RNA binding','Interacting selectively and non-covalently with double-stranded RNA.','RNA binding','GO:0003725','http://purl.obolibrary.org/obo/GO_0003725','molecular function');
INSERT INTO `molecular_function` VALUES('RNA polymerase II complex binding','Interacting selectively and non-covalently with RNA polymerase II core enzyme, a multisubunit eukaryotic nuclear RNA polymerase typically composed of twelve subunits.','RNA polymerase core enzyme binding','GO:0000993','http://purl.obolibrary.org/obo/GO_0000993','molecular function');
INSERT INTO `molecular_function` VALUES('endoribonuclease activity, cleaving siRNA-paired mRNA','Catalysis of the endonucleolytic cleavage of the mRNA in a double-stranded RNA molecule formed by the base pairing of an mRNA with an siRNA, yielding 5''-phosphomonoesters.','endoribonuclease activity, producing 5''-phosphomonoesters','GO:0070551','http://purl.obolibrary.org/obo/GO_0070551','molecular function');
INSERT INTO `molecular_function` VALUES('protein binding','Interacting selectively and non-covalently with any protein or protein complex (a complex of two or more proteins that may include other nonprotein molecules).','binding','GO:0005515','http://purl.obolibrary.org/obo/GO_0005515','molecular function');
INSERT INTO `molecular_function` VALUES('nucleotide binding','Interacting selectively and non-covalently with a nucleotide, any compound consisting of a nucleoside that is esterified with (ortho)phosphate or an oligophosphate at any hydroxyl group on the ribose or deoxyribose.','nucleoside phosphate binding','GO:0000166','http://purl.obolibrary.org/obo/GO_0000166','molecular function');
INSERT INTO `molecular_function` VALUES('miRNA binding','Interacting selectively and non-covalently with a microRNA, a 21-23 nucleotide RNA that is processed from a stem-loop RNA precursor (pre-miRNA) that is encoded within plant and animal genomes.','regulatory RNA binding','GO:0035198','http://purl.obolibrary.org/obo/GO_0035198','molecular function');
INSERT INTO `molecular_function` VALUES('nucleic acid binding','Interacting selectively and non-covalently with any nucleic acid.','heterocyclic compound binding','GO:0003676','http://purl.obolibrary.org/obo/GO_0003676','molecular function');
INSERT INTO `molecular_function` VALUES('protein kinase binding','Interacting selectively and non-covalently with a protein kinase, any enzyme that catalyzes the transfer of a phosphate group, usually from ATP, to a protein substrate.','kinase binding','GO:0019901','http://purl.obolibrary.org/obo/GO_0019901','molecular function');
INSERT INTO `molecular_function` VALUES('RNA 7-methylguanosine cap binding','Interacting selectively and non-covalently with the 7-methylguanosine group added cotranscriptionally to the 5'' end of RNA molecules transcribed by polymerase II.','RNA cap binding','GO:0000340','http://purl.obolibrary.org/obo/GO_0000340','molecular function');
INSERT INTO `molecular_function` VALUES('RNA polymerase II cis-regulatory region sequence-specific DNA binding','Interacting selectively and non-covalently with a specific upstream regulatory DNA sequence located in cis relative to the transcription start site of a gene transcribed by RNA polymerase II.','RNA polymerase II transcription regulatory region sequence-specific DNA binding','GO:0000978','http://purl.obolibrary.org/obo/GO_0000978','molecular function');
INSERT INTO `molecular_function` VALUES('RNA binding','interacting selectively and non-covalently with an RNA molecule or a portion thereof','nucleic acid binding','GO:0003723','http://purl.obolibrary.org/obo/GO_0003723','molecular function');
CREATE TABLE `biological_process`
(`label` VARCHAR(1023),
`description` VARCHAR(1023),
`gene_ontology_id` VARCHAR(1023),
`exact_match` VARCHAR(1023),
`instance_of` VARCHAR(1023),
`subclass_of` VARCHAR(1023));
INSERT INTO `biological_process` VALUES('mRNA destabilization-mediated gene silencing by siRNA','The process in which small interfering RNAs (siRNAs) direct the cleavage of target mRNAs. Once incorporated into a RNA-induced silencing complex (RISC), a siRNA will typically direct cleavage by base pairing with perfect or near-perfect complementari','GO:0090625','http://purl.obolibrary.org/obo/GO_0090625','biological process','mRNA destabilization');
INSERT INTO `biological_process` VALUES('multicellular organism development','biological process whose specific outcome is the progression of a multicellular organism over time from an initial condition (e.g. a zygote or a young adult) to a later condition (e.g. a multicellular animal or an aged adult)','GO:0007275','http://purl.obolibrary.org/obo/GO_0007275','biological process','anatomical structure development');
INSERT INTO `biological_process` VALUES('male gonad development','The process whose specific outcome is the progression of the male gonad over time, from its formation to the mature structure.','GO:0008584','http://purl.obolibrary.org/obo/GO_0008584','biological process','gonad development');
INSERT INTO `biological_process` VALUES('germ cell development','The process whose specific outcome is the progression of an immature germ cell over time, from its formation to the mature structure (gamete). A germ cell is any reproductive cell in a multicellular organism.','GO:0007281','http://purl.obolibrary.org/obo/GO_0007281','biological process','developmental process involved in reproduction');
INSERT INTO `biological_process` VALUES('reproduction','production of new individuals that contain some portion of genetic material inherited from one or more parent organisms','GO:0000003','http://purl.obolibrary.org/obo/GO_0000003','biological process','biological process');
INSERT INTO `biological_process` VALUES('transmembrane transport','The process in which a solute is transported across a lipid bilayer, from one side of a membrane to the other','GO:0055085','http://purl.obolibrary.org/obo/GO_0055085','biological process','transport');
INSERT INTO `biological_process` VALUES('regulation of transcription, DNA-templated','Any process that modulates the frequency, rate or extent of cellular DNA-templated transcription.','GO:0006355','http://purl.obolibrary.org/obo/GO_0006355','biological process','regulation of gene expression');
INSERT INTO `biological_process` VALUES('RNA import into nucleus','The import of RNA from the cytoplasm to the nucleus.','GO:0006404','http://purl.obolibrary.org/obo/GO_0006404','biological process','RNA transport');
INSERT INTO `biological_process` VALUES('regulation of protein phosphorylation','Any process that modulates the frequency, rate or extent of addition of phosphate groups into an amino acid in a protein.','GO:0001932','http://purl.obolibrary.org/obo/GO_0001932','biological process','regulation of protein modification process');
INSERT INTO `biological_process` VALUES('gene silencing','process that prevents the expression of a gene','GO:0031047','http://purl.obolibrary.org/obo/GO_0031047','biological process','negative regulation of gene expression');
INSERT INTO `biological_process` VALUES('mRNA catabolic process','The chemical reactions and pathways resulting in the breakdown of mRNA, messenger RNA, which is responsible for carrying the coded genetic ''message'', transcribed from DNA, to sites of protein assembly at the ribosomes.','GO:0006402','http://purl.obolibrary.org/obo/GO_0006402','biological process','RNA catabolic process');
INSERT INTO `biological_process` VALUES('miRNA-mediated gene silencing by inhibition of translation','The process in which microRNAs (miRNAs) block the translation of target mRNAs into proteins. Once incorporated into a RNA-induced silencing complex (RISC), a miRNA will typically mediate repression of translation if the miRNA imperfectly base-pairs w','GO:0035278','http://purl.obolibrary.org/obo/GO_0035278','biological process','negative regulation of translation');
INSERT INTO `biological_process` VALUES('spermatogenesis','process of formation of spermatozoa germ cells','GO:0007283','http://purl.obolibrary.org/obo/GO_0007283','biological process','male gamete generation');
INSERT INTO `biological_process` VALUES('nuclear-transcribed mRNA catabolic process','The chemical reactions and pathways resulting in the breakdown of nuclear-transcribed mRNAs in eukaryotic cells.','GO:0000956','http://purl.obolibrary.org/obo/GO_0000956','biological process','mRNA catabolic process');
CREATE TABLE `encodes`
(`label` VARCHAR(1023),
`description` VARCHAR(1023),
`ensembl_protein_id` VARCHAR(1023),
`encoded_by` VARCHAR(1023),
`uniprot_protein_id` VARCHAR(1023),
`biological_process` VARCHAR(1023),
`molecular_function` VARCHAR(1023),
`has_parts` VARCHAR(1023),
`found_in_taxon` VARCHAR(1023),
`refseq_protein_id` VARCHAR(1023),
`instance_of` VARCHAR(1023),
`part_of` VARCHAR(1023));
INSERT INTO `encodes` VALUES('Piwi-like RNA-mediated gene silencing 1','mammalian protein found in Rattus norvegicus','ENSRNOP00000001238','Piwil1','D3ZTP9','spermatogenesis','nucleic acid binding','Piwi domain','brown rat','NP_001102323','protein','Ribonuclease H superfamily');
INSERT INTO `encodes` VALUES('Hypothetical protein CELE_Y71A12B.3','protein found in Caenorhabditis elegans','nan','Y71A12B.3','nan','nan','nan','PAZ domain','Caenorhabditis elegans','NP_493428','protein','PAZ domain superfamily');
INSERT INTO `encodes` VALUES('Argonaute RISC component 1','mammalian protein found in Rattus norvegicus','nan','Ago1','D4AC38','nuclear-transcribed mRNA catabolic process','RNA polymerase II cis-regulatory region sequence-specific DNA binding','Protein argonaute, N-terminal','brown rat','NP_001178694','protein','Ribonuclease H superfamily');
INSERT INTO `encodes` VALUES('Dicer-1 Dmel_CG4792','Protein found in Drosophila melanogaster','FBpp0083717','Dcr-1','Q9VCU9','apoptotic DNA fragmentation','nucleotide binding','Double-stranded RNA-binding domain','Drosophila melanogaster','NP_524453','protein','PAZ domain superfamily');
INSERT INTO `encodes` VALUES('Piwi like RNA-mediated gene silencing 3','mammalian protein found in Homo sapiens','ENSP00000330031','PIWIL3','Q7Z3Z3','multicellular organism development','RNA binding','Piwi domain','Homo sapiens','NP_001008496','protein','Ribonuclease H superfamily');
INSERT INTO `encodes` VALUES('Argonaute RISC catalytic component 3','mammalian protein found in Homo sapiens','ENSP00000246314','AGO3','Q9H9G7','mRNA destabilization-mediated gene silencing by siRNA','protein binding','Argonaute linker 2 domain','Homo sapiens','NP_079128','protein','Ribonuclease H superfamily');
INSERT INTO `encodes` VALUES('Argonaute RISC catalytic subunit 1','mammalian protein found in Mus musculus','ENSMUSP00000095498','Ago1','Q8CJG1','regulation of transcription, DNA-templated','RNA polymerase II complex binding','Argonaute, linker 1 domain','house mouse','NP_001304102','protein','Ribonuclease H superfamily');
INSERT INTO `encodes` VALUES('Argonaute 3 Dmel_CG40300','Protein found in Drosophila melanogaster','FBpp0289160','AGO3','Q7PLK0','multicellular organism development','nucleic acid binding','PAZ domain','Drosophila melanogaster','NP_001036627','protein','Ribonuclease H superfamily');
INSERT INTO `encodes` VALUES('Protein argonaute CELE_T23D8.7','protein found in Caenorhabditis elegans','T23D8.7','alg-5','Q9XVI3','gene silencing','nucleic acid binding','Protein argonaute, Mid domain','Caenorhabditis elegans','NP_492643','protein','Ribonuclease H superfamily');
INSERT INTO `encodes` VALUES('Heritable RNAi Deficient CELE_C16C10.3','protein found in Caenorhabditis elegans','C16C10.3','hrde-1','Q09249','germ cell development','nucleic acid binding','PAZ domain','Caenorhabditis elegans','NP_497834','protein','Ribonuclease H superfamily');
INSERT INTO `encodes` VALUES('Hypothetical protein CELE_C35D6.3','protein found in Caenorhabditis elegans','C35D6.3','C35D6.3','O45288','gene silencing','nan','PAZ domain','Caenorhabditis elegans','NP_502948','protein','PAZ domain superfamily');
INSERT INTO `encodes` VALUES('Hypothetical protein CELE_K08H10.7','protein found in Caenorhabditis elegans','K08H10.7','rde-1','G5EEH0','RNA interference','nucleic acid binding','Piwi domain','Caenorhabditis elegans','NP_741611','protein','Ribonuclease H superfamily');
INSERT INTO `encodes` VALUES('Argonaute 2 Dmel_CG7439','Protein found in Drosophila melanogaster','FBpp0304266','AGO2','Q9VUQ5','nan','nan','Protein argonaute, Mid domain','Drosophila melanogaster','NP_001261882','protein','Ribonuclease H superfamily');
INSERT INTO `encodes` VALUES('Hypothetical protein CELE_F55C9.3','protein found in Caenorhabditis elegans','F55C9.3','F55C9.3','Q9XUY9','nan','nan','nan','Caenorhabditis elegans','NP_507752','protein','PAZ domain superfamily');
CREATE TABLE `chromosome`
(`label` VARCHAR(1023),
`description` VARCHAR(1023),
`refseq_genome_id` VARCHAR(1023),
`found_in_taxon` VARCHAR(1023),
`instance_of` VARCHAR(1023));
INSERT INTO `chromosome` VALUES('human chromosome 22','human chromosome','NC_000022.11','Homo sapiens','chromosome');
INSERT INTO `chromosome` VALUES('human chromosome 1','human chromosome','NC_000001.11','Homo sapiens','chromosome');
INSERT INTO `chromosome` VALUES('Drosophila melanogaster chromosome 3R','chromosome','NT_033777','Drosophila melanogaster','chromosome');
INSERT INTO `chromosome` VALUES('Rattus norvegicus chromosome 15','mammalian chromosome','NC_051350','brown rat','chromosome');
INSERT INTO `chromosome` VALUES('Rattus norvegicus chromosome 5','mammalian chromosome','NC_051340','brown rat','chromosome');
INSERT INTO `chromosome` VALUES('Danio rerio chromosome 5','chromosome','NC_007116','Danio rerio','chromosome');
INSERT INTO `chromosome` VALUES('mouse chromosome 12','Mus musculus chromosome','NC_000078','house mouse','chromosome');
INSERT INTO `chromosome` VALUES('Drosophila melanogaster chromosome 2L','chromosome','NT_033779','Drosophila melanogaster','chromosome');
INSERT INTO `chromosome` VALUES('mouse chromosome 5','Mus musculus chromosome','NC_000071','house mouse','chromosome');
INSERT INTO `chromosome` VALUES('Caenorhabditis elegans chromosome III','None chromosome','NC_003281','Caenorhabditis elegans','chromosome');
INSERT INTO `chromosome` VALUES('human chromosome 8','human chromosome','NC_000008.11','Homo sapiens','chromosome');
INSERT INTO `chromosome` VALUES('Rattus norvegicus chromosome 12','mammalian chromosome','NC_051347','brown rat','chromosome');
INSERT INTO `chromosome` VALUES('human chromosome 12','chromosome 12 in Homo sapiens','NC_000012.12','Homo sapiens','chromosome');
INSERT INTO `chromosome` VALUES('human chromosome 14','human chromosome','NC_000014.9','Homo sapiens','chromosome');
CREATE TABLE `encoded_by`
(`label` VARCHAR(1023),
`description` VARCHAR(1023),
`entrez_gene_id` VARCHAR(1023),
`ensembl_gene_id` VARCHAR(1023),
`homologene_id` VARCHAR(1023),
`refseq_rna_id` VARCHAR(1023),
`ensembl_transcript_id` VARCHAR(1023),
`encodes` VARCHAR(1023),
`found_in_taxon` VARCHAR(1023),
`strand_orientation` VARCHAR(1023),
`genomic_end` VARCHAR(1023),
`genomic_start` VARCHAR(1023),
`chromosome` VARCHAR(1023),
`instance_of` VARCHAR(1023),
`expressed_in` VARCHAR(1023));
INSERT INTO `encoded_by` VALUES('Ago3','protein-coding gene in the species Rattus norvegicus','313593','ENSRNOG00000034269','49799.0','NM_001271193','ENSRNOT00000042371','Argonaute RISC catalytic component 3','brown rat','reverse strand','144436509.0','144364269.0','rat chromosome 5','gene','stomach');
INSERT INTO `encoded_by` VALUES('ago4','protein-coding gene in the species Danio rerio','100535764','ENSDARG00000100854','41184.0','NM_001252559','ENSDART00000170988','Argonaute RISC component 4','Danio rerio','reverse strand','47832853.0','47800550.0','Danio rerio chromosome 19','gene','blastula');
INSERT INTO `encoded_by` VALUES('piwi','protein-coding gene in the species Drosophila melanogaster','34521','FBgn0004872','70885.0','NM_001298896','FBtr0080166','P-element induced wimpy testis Dmel_CG6122','Drosophila melanogaster','reverse strand','10987420.0','10982205.0','Drosophila melanogaster chromosome 2L','gene','ovary');
INSERT INTO `encoded_by` VALUES('Ago1','protein-coding gene in the species Rattus norvegicus','313594','ENSRNOG00000055915','81826.0','NM_001191765','ENSRNOT00000087697','Argonaute RISC component 1','brown rat','reverse strand','138773546.0','138722111.0','Rattus norvegicus chromosome 5','gene','spleen');
INSERT INTO `encoded_by` VALUES('aub','protein-coding gene in the species Drosophila melanogaster','34524','FBgn0000146','37963.0','NM_001103674','FBtr0080165','Aubergine Dmel_CG6137','Drosophila melanogaster','reverse strand','11001476.0','10997819.0','Drosophila melanogaster chromosome 2L','gene','invertebrate nurse cell');
INSERT INTO `encoded_by` VALUES('nrde-3','protein-coding gene in the species Caenorhabditis elegans','180392','WBGene00019862','119257.0','NM_075691','R04A9.2.1','Nuclear RNAi defective-3 protein CELE_R04A9.2','Caenorhabditis elegans','forward strand','376900.0','372235.0','Caenorhabditis elegans chromosome X','gene','embryo');
INSERT INTO `encoded_by` VALUES('sago-1','protein-coding gene in the species Caenorhabditis elegans','179016','WBGene00019666','43260.0','NM_072209','K12B6.1.1','Piwi-like protein CELE_K12B6.1','Caenorhabditis elegans','forward strand','6308337.0','6303771.0','Caenorhabditis elegans chromosome V','gene','material anatomical entity');
INSERT INTO `encoded_by` VALUES('PIWIL3','protein-coding gene in the species Homo sapiens','440822','ENSG00000184571','70885.0','NR_045649','ENST00000616349','Piwi like RNA-mediated gene silencing 3','Homo sapiens','reverse strand','24774720.0','24719034.0','human chromosome 22','gene','testicle');
INSERT INTO `encoded_by` VALUES('ago3b','protein-coding gene in the species Danio rerio','568159','ENSDARG00000063079','49799.0','NM_001160028','ENSDART00000091813','Argonaute RISC catalytic component 3b','Danio rerio','forward strand','10686713.0','10661520.0','Danio rerio chromosome 19','gene','blastula');
INSERT INTO `encoded_by` VALUES('ergo-1','protein-coding gene in the species Caenorhabditis elegans','178602','WBGene00019971','nan','NM_001313235','R09A1.1b.1','Piwi-like protein ergo-1 CELE_R09A1.1','Caenorhabditis elegans','forward strand','1018350.0','1008803.0','Caenorhabditis elegans chromosome V','gene','embryo');
INSERT INTO `encoded_by` VALUES('AGO4','protein-coding gene in the species Homo sapiens','192670','ENSG00000134698','41184.0','XR_946567','ENST00000496257','Argonaute RISC component 4','Homo sapiens','forward strand','35857890.0','36273773.0','human chromosome 1','gene','monocyte');
INSERT INTO `encoded_by` VALUES('AGO3','protein-coding gene in the species Homo sapiens','192669','ENSG00000126070','49799.0','NM_024852','ENST00000246314','Argonaute RISC catalytic component 3','Homo sapiens','forward strand','36072500.0','35930718.0','human chromosome 1','gene','caput epididymis');
INSERT INTO `encoded_by` VALUES('rde-1','protein-coding gene in the species Caenorhabditis elegans','179393','WBGene00004323','nan','NM_171525','K08H10.7.1','Hypothetical protein CELE_K08H10.7','Caenorhabditis elegans','reverse strand','9991642.0','9987916.0','Caenorhabditis elegans chromosome V','gene','embryo');
INSERT INTO `encoded_by` VALUES('acriflavin resistance protein B FN0474','microbial gene found in Fusobacterium nucleatum subsp. nucleatum ATCC 25586','992910','nan','nan','nan','nan','Acriflavin resistance protein B FN0474','Fusobacterium nucleatum subsp. nucleatum ATCC 25586','forward strand','1122116.0','1119078.0','nan','gene','nan');
CREATE TABLE `paz_domain_superfamily`
(`label` VARCHAR(1023),
`description` VARCHAR(1023),
`encoded_by` VARCHAR(1023),
`uniprot_protein_id` VARCHAR(1023),
`biological_process` VARCHAR(1023),
`molecular_function` VARCHAR(1023),
`has_parts` VARCHAR(1023),
`found_in_taxon` VARCHAR(1023),
`refseq_protein_id` VARCHAR(1023),
`instance_of` VARCHAR(1023),
`part_of` VARCHAR(1023));
INSERT INTO `paz_domain_superfamily` VALUES('Piwi-like protein CELE_Y49F6A.1','protein found in Caenorhabditis elegans','wago-11','nan','nan','nan','PAZ domain','Caenorhabditis elegans','NP_494593','protein','Ribonuclease H superfamily');
INSERT INTO `paz_domain_superfamily` VALUES('Piwi-like RNA-mediated gene silencing 4','mammalian protein found in Mus musculus','Piwil4','Q8CGT6','multicellular organism development','piRNA binding','Piwi domain','house mouse','XP_006510496','protein','Ribonuclease H superfamily');
INSERT INTO `paz_domain_superfamily` VALUES('Piwi-like RNA-mediated gene silencing 2','Protein found in Danio rerio','piwil2','A2CEI6','nan','nan','PAZ domain','Danio rerio','NP_001073668','protein','Ribonuclease H superfamily');
INSERT INTO `paz_domain_superfamily` VALUES('Hypothetical protein aq_1447','microbial protein found in Aquifex aeolicus VF5','hypothetical protein aq_1447','O67434','nan','nucleic acid binding','Piwi domain','Aquifex aeolicus VF5','NP_213999','protein','Ribonuclease H superfamily');
INSERT INTO `paz_domain_superfamily` VALUES('Hypothetical protein CELE_Y71A12B.3','protein found in Caenorhabditis elegans','Y71A12B.3','nan','nan','nan','PAZ domain','Caenorhabditis elegans','NP_493428','protein','PAZ domain superfamily');
INSERT INTO `paz_domain_superfamily` VALUES('Argonaute RISC catalytic component 2','Protein found in Danio rerio','ago2','K4I874','nan','nan','Protein argonaute, Mid domain','Danio rerio','NP_001289151','protein','Ribonuclease H superfamily');
INSERT INTO `paz_domain_superfamily` VALUES('Argonaute RISC catalytic subunit 2','mammalian protein found in Mus musculus','Ago2','Q8CJG0','mRNA destabilization-mediated gene silencing by siRNA','endoribonuclease activity, cleaving siRNA-paired mRNA','Argonaute, linker 1 domain','house mouse','NP_694818','protein','Ribonuclease H superfamily');
INSERT INTO `paz_domain_superfamily` VALUES('Piwi-like protein 1','human protein (annotated by UniProtKB/TrEMBL F5H3U6)','PIWIL1','F5H3U6','spermatid development','piRNA binding','GAGE','Homo sapiens','nan','protein','PAZ domain superfamily');
INSERT INTO `paz_domain_superfamily` VALUES('Protein argonaute CELE_T23D8.7','protein found in Caenorhabditis elegans','alg-5','Q9XVI3','gene silencing','nucleic acid binding','Protein argonaute, Mid domain','Caenorhabditis elegans','NP_492643','protein','Ribonuclease H superfamily');
INSERT INTO `paz_domain_superfamily` VALUES('Piwi-like protein CELE_F58G1.1','protein found in Caenorhabditis elegans','wago-4','O62275','gene silencing','nucleic acid binding','PAZ domain','Caenorhabditis elegans','NP_496751','protein','Ribonuclease H superfamily');
INSERT INTO `paz_domain_superfamily` VALUES('Argonaute RISC component 1','mammalian protein found in Rattus norvegicus','Ago1','D4AC38','nuclear-transcribed mRNA catabolic process','RNA polymerase II cis-regulatory region sequence-specific DNA binding','Protein argonaute, N-terminal','brown rat','NP_001178694','protein','Ribonuclease H superfamily');
INSERT INTO `paz_domain_superfamily` VALUES('Argonaute RISC component 4','Protein found in Danio rerio','ago4','K4IAH1','regulation of translation','nucleic acid binding','Protein argonaute, Mid domain','Danio rerio','NP_001239488','protein','Ribonuclease H superfamily');
INSERT INTO `paz_domain_superfamily` VALUES('Dicer 1, ribonuclease type III','protein found in Danio rerio','dicer1','Q6TV19','nan','nan','Helicase, C-terminal','Danio rerio','NP_001154925','protein','PAZ domain superfamily');
INSERT INTO `paz_domain_superfamily` VALUES('Piwi-like RNA-mediated gene silencing 2','mammalian protein found in Rattus norvegicus','Piwil2','D3ZRE1','RNA 5''-end processing','nucleic acid binding','Piwi domain','brown rat','NP_001100746','protein','Ribonuclease H superfamily');
