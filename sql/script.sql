CREATE TABLE CONTACT (
contactid SERIAL PRIMARY KEY,
typeid INTEGER,
description VARCHAR(200));

CREATE TABLE RESEARCHER_CONTACT (
id_researcher INTEGER,
contactid INTEGER,
FOREIGN KEY(contactid) REFERENCES CONTACT (contactid));

CREATE TABLE TYPE (
typeid SERIAL PRIMARY KEY,
description VARCHAR(200));

CREATE TABLE RESEARCHER (
id_researcher SERIAL PRIMARY KEY,
name VARCHAR(200),
purpose VARCHAR(200),
country VARCHAR(100),
institution VARCHAR(200),
state VARCHAR(100),
email VARCHAR(200));

CREATE TABLE INTACT (
intactid_A SERIAL PRIMARY KEY,
interaction_detection_method VARCHAR(30),
publication_first_author VARCHAR(30),
publication_year INTEGER,
publication_identifier INTEGER,
taxid_interactor_A INTEGER,
taxid_interactor_B INTEGER,
interaction_identifier VARCHAR(30),
confidence_value FLOAT
)INHERITS (MASTER);


CREATE TABLE SEARCH (
id_researcher INTEGER,
uniprotkbid_A VARCHAR(10),
FOREIGN KEY(id_researcher) REFERENCES RESEACHER (id_researcher));

CREATE TABLE MASTER (
gene_symbol_A VARCHAR(30),
gene_symbol_B VARCHAR(30),
uniprotkbid_A VARCHAR(50) PRIMARY KEY,
uniprotkbid_B VARCHAR(50));

CREATE TABLE MINT (
mintid_A SERIAL PRIMARY KEY,
interaction_detection_method VARCHAR(10),
publication_first_author VARCHAR(30),
publication_year INTEGER,
taxid_interactor_A INTEGER,
taxid_interactor_B INTEGER,
intact_miscore FLOAT
)INHERITS (MASTER);

CREATE TABLE BIOGRID (
biogridid_A INTEGER PRIMARY KEY,
biogridid_B INTEGER,
entrezgeneid_A INTEGER,
entrezgeneid_B INTEGER,
interaction_detection_method VARCHAR(30),
publication_first_author VARCHAR(30),
publication_year INTEGER,
publication_identifier INTEGER,
taxid_interactor_A INTEGER,
taxid_interactor_B INTEGER,
interaction_identifier INTEGER
)INHERITS (MASTER);



CREATE TABLE HPRD (
  HPRDid_A INT,
  protein_accession_A VARCHAR(100),
  HPRDid_B INT,
  protein_accession_B VARCHAR(100),
  PRIMARY KEY (HPRDid_A)
) INHERITS (MASTER);


/* ERRADO */
CREATE TABLE HPRD (
hprdid_A INTEGER PRIMARY KEY,
hprdid_B INTEGER,
entrezgeneid INTEGER,
nucleotide_acession VARCHAR(30),
omimid INTEGER,
swissprotid VARCHAR(30),
main_name VARCHAR(100),
protein_accession VARCHAR(10)
)INHERITS (MASTER);


ALTER TABLE CONTACT ADD FOREIGN KEY(typeid) REFERENCES TYPE (typeid);
ALTER TABLE RESEARCHER_CONTACT ADD FOREIGN KEY(id_researcher) REFERENCES RESEACHER (id_researcher);







/* ---------------------------------------- */


INSERT INTO biogrid(uniprotkbid_A,uniprotkbid_B,entrezgeneid_A,entrezgeneid_B,biogridid_A,gene_symbol_A,biogridid_B,gene_symbol_B,interaction_detection_method,publication_first_author,publication_year,publication_identifier,taxid_interactor_A,taxid_interactor_B,interaction_identifier)
VALUES('P45985','Q14315',6416,2318,112315,'MAP2K4',108607,'FLNC','MI:0018','MartiA',1997,9006895,9606,9606,103),
('Q86TC9','P35609',84665,88,124185,'MYPN',106603,'ACTN2','MI:0018','BangML',2001,11309420,9606,9606,117),
('Q04771','P49354',90,2339,106605,'ACVR1',108625,'FNTA','MI:0018','Wang T',1996,8599089,9606,9606,183),
('P23769','P29590',2624,5371,108894,'GATA2',111384,'PML','MI:0018','Tsuzuki S',2000,10938104,9606,9606,278),
('P15927','P40763',6118,6774,112038,'RPA2',112651,'STAT3','MI:0018','Kim J' ,2000,10875894,9606,9606,418);


INSERT INTO mint(uniprotkbid_A,uniprotkbid_B,gene_symbol_A,gene_symbol_B,interaction_detection_method,publication_first_author,publication_year,taxid_interactor_A,taxid_interactor_B,intact_miscore)
VALUES('P55036','P54725','PSMD4','RAD23A','MI:0007','Hamazaki et al.' ,2006,9606,9606,0.78),
('P54727','P55036','RAD23B','PSMD4','MI:0007','Hamazaki et al.' ,2006,9606,9606,0.79),
('P60900','Q16186','PMSMA6','ADRM1','MI:0007','Hamazaki et al.',2006,9606,9606,0.40),
('Q13200','Q16186','PSMD2','ADRM1','MI:0007','Hamazaki et al.' ,2006,9606,9606,0.46),
('Q16186','P55036','ADRM1','PSMD4','MI:0007','Hamazaki et al.',2006,9606,9606,0.56);


INSERT INTO intact(uniprotkbid_A,uniprotkbid_B,gene_symbol_A,gene_symbol_B,interaction_detection_method,publication_first_author,publication_year,publication_identifier,taxid_interactor_A,taxid_interactor_B,interaction_identifier,confidence_value)
VALUES ('P20263','P52480','Pou5f1','pkm','MI:0096','Lee et al.',2007,18191611,10090,10090,'EBI-1606211',0.42),
('P20263','P52480','Pou5f1','pkm','MI:0096','Lee et al.' ,2007,18191611,10090,10090,'EBI-1606295',0.42),
('P20263','P52480','Pou5f1','pkm','MI:0096','Lee et al.',2007,18191611,10090,10090,'EBI-1606256',0.42),
('P52480','P20263','pkm','Pou5f1','MI:0007','Lee et al.' ,2007,18191611,10090,10090,'EBI-1606279',0.42),
('P20263','P52480','Pou5f1','pkm','MI:0096','Lee et al.' ,2007,18191611,10090,10090,'EBI-1606607',0.42);


INSERT INTO hprd(uniprotkbid_a,uniprotkbid_b,gene_symbol_A,hprdid_A,protein_accession_A,gene_symbol_B,hprdid_B,protein_accession_B)
VALUES ('P00352','P00352','ALDH1A1',1,'NP_000680.2','ALDH1A1',1,'NP_000680.2'),
('Q13683','P02708','ITGA7',2761,'NP_001138468.1','CHRNA1',7,'NP_001034612.1'),
('Q9ULJ8','P63261','PPP1R9A',16000,'NP_060120.2','ACTG1',17,'NP_001605.1'),
('P10124','P16070','SRGN',1513,'NP_002718.2','CD44',115,'NP_000601.3'),
('Q14451','P04626','GRB7',3311,'NP_005301.2','ERBB2',1281,'NP_004439.2');


INSERT INTO type(description)
VALUES ('email'),
('fone'),
('cellfone'),
('fax');


INSERT INTO RESEARCHER(name, purpose, country, institution, state, email)
VALUES ('Ana','trabalho de bd', 'Brasil','ifes','es','email@email.com'),
('Cristian', 'cobaia de teste', 'Lua', 'ifes', 'solido','email@mail.com'),
('Danilo', 'cobaia de teste 2 ', 'Marte', 'ifes', 'quase vapor','email@mail.com'),
('Jennifer','trabalho de bd', 'Brasil','ifes','es','email@email.com');


INSERT INTO contact(typeid, description)
VALUES (1,'email@mail.com'),
(3,'99999-9999'),
(2,'3333-3333'),
(1,'email@mail.com'),
(4,'4444-4444');

INSERT INTO researcher_contact(id_researcher,contactid)
VALUES (1,1),
(1,5),
(2,3),
(3,2),
(4,4);


INSERT INTO search(id_researcher, uniprotkbid_a)
VALUES (1, 'P20263'),
(1,'P52480'),
(4,'Q13200'),
(3,'P45985');




