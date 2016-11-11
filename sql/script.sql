CREATE TABLE MASTER(
   uniprotkb_id_B varchar(100),
   uniprotkb_id_A varchar(100),
   gene_symbol_A varchar(100),
   gene_symbol_B varchar(100),
   PRIMARY KEY (uniprotkb_id_A)
);

CREATE TABLE HPRD (
  HPRD_id_A INT,
  protein_accession_A VARCHAR(100),
  HPRD_id_B INT,
  protein_accession_B VARCHAR(100),
  PRIMARY KEY (HPRD_id_A)
) INHERITS (MASTER);

CREATE TABLE BioGrid(
  entrezgene_id_A INT,
  entrezgene_id_B INT,
  biogrid_id_A INT,
  biogrid_id_B INT,
  interaction_detection_method VARCHAR(50),
  publication_first_author VARCHAR(100),
  publication_year INT,
  publication_identifier INT,
  taxid_interactor_A INT,
  taxid_interactor_B INT,	
  interaction_identifier INT,
  PRIMARY KEY (biogrid_id_A)
)INHERITS (MASTER);

CREATE TABLE MINT(
 interaction_detection_method VARCHAR(50),
 publication_first_author VARCHAR(100),
 publication_year INT,
 taxid_interactor_A INT,
 taxid_interactor_B INT,
 intact_miscore FLOAT,
 curation_deph VARCHAR(100),
 mint_id_A INT,
 mint_id_B INT,
 PRIMARY KEY (mint_id_A)
)INHERITS (MASTER);

CREATE TABLE INTACT(
 interaction_detection_method VARCHAR(50),
 publication_first_author VARCHAR(100),
 publication_year INT,
 publication_identifier INT,
 taxid_interactor_A INT,
 taxid_interactor_B INT, 
 interaction_identifier VARCHAR(50),
 confidence_value FLOAT,
 intactid_A INT,
 intactid_B INT,
 PRIMARY KEY(intactid_A)
)INHERITS (MASTER);


INSERT INTO biogrid(uniprotkb_id_A,uniprotkb_id_B,entrezgene_id_A,entrezgene_id_B,biogrid_id_A,gene_symbol_A,biogrid_id_B,gene_symbol_B,interaction_detection_method,publication_first_author,publication_year,publication_identifier,taxid_interactor_A,taxid_interactor_B,interaction_identifier)
VALUES('P45985','Q14315',6416,2318,112315,'MAP2K4',108607,'FLNC','MI:0018','MartiA',1997,9006895,9606,9606,103),
('Q86TC9','P35609',84665,88,124185,'MYPN',106603,'ACTN2','MI:0018','BangML',2001,11309420,9606,9606,117),
('Q04771','P49354',90,2339,106605,'ACVR1',108625,'FNTA','MI:0018','Wang T',1996,8599089,9606,9606,183),
('P23769','P29590',2624,5371,108894,'GATA2',111384,'PML','MI:0018','Tsuzuki S',2000,10938104,9606,9606,278),
('P15927','P40763',6118,6774,112038,'RPA2',112651,'STAT3','MI:0018','Kim J' ,2000,10875894,9606,9606,418);



INSERT INTO mint(uniprotkb_id_A,uniprotkb_id_B,gene_symbol_A,gene_symbol_B,interaction_detection_method,publication_first_author,publication_year,taxid_interactor_A,taxid_interactor_B,intact_miscore)
VALUES('P55036','P54725','PSMD4','RAD23A','MI:0007','Hamazaki et al.' ,2006,9606,9606,0.78),
('P54727','P55036','RAD23B','PSMD4','MI:0007','Hamazaki et al.' ,2006,9606,9606,0.79),
('P60900','Q16186','PMSMA6','ADRM1','MI:0007','Hamazaki et al.',2006,9606,9606,0.40),
('Q13200','Q16186','PSMD2','ADRM1','MI:0007','Hamazaki et al.' ,2006,9606,9606,0.46),
('Q16186','P55036','ADRM1','PSMD4','MI:0007','Hamazaki et al.',2006,9606,9606,0.56);


INSERT INTO intact(uniprotkb_id_A,uniprotkb_id_B,gene_symbol_A,gene_symbol_B,interaction_detection_method,publication_first_author,publication_year,publication_identifier,taxid_interactor_A,taxid_interactor_B,interaction_identifier,confidence_value)
VALUES ('P20263','P52480','Pou5f1','pkm','MI:0096','Lee et al.',2007,18191611,10090,10090,'EBI-1606211',0.42),
('P20263','P52480','Pou5f1','pkm','MI:0096','Lee et al.' ,2007,18191611,10090,10090,'EBI-1606295',0.42),
('P20263','P52480','Pou5f1','pkm','MI:0096','Lee et al.',2007,18191611,10090,10090,'EBI-1606256',0.42),
('P52480','P20263','pkm','Pou5f1','MI:0007','Lee et al.' ,2007,18191611,10090,10090,'EBI-1606279',0.42),
('P20263','P52480','Pou5f1','pkm','MI:0096','Lee et al.' ,2007,18191611,10090,10090,'EBI-1606607',0.42);



INSERT INTO hprd(uniprotkb_id_a,uniprotkb_id_b,gene_symbol_A,hprd_id_A,protein_accession_A,gene_symbol_B,hprd_id_B,protein_accession_B)
VALUES ('P00352','P00352','ALDH1A1',1,'NP_000680.2','ALDH1A1',1,'NP_000680.2'),
('Q13683',' P02708','ITGA7',2761,'NP_001138468.1','CHRNA1',7,'NP_001034612.1'),
('Q9ULJ8','P63261','PPP1R9A',16000,'NP_060120.2','ACTG1',17,'NP_001605.1'),
('P10124','P16070','SRGN',1513,'NP_002718.2','CD44',115,'NP_000601.3'),
('Q14451','P04626','GRB7',3311,'NP_005301.2','ERBB2',1281,'NP_004439.2');

