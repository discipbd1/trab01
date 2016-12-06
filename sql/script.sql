CREATE TABLE MASTER(
   uniprotkb_B varchar(100),
   uniprotkb_A varchar(100),
   gene_symbol_A varchar(100),
   gene_symbol_B varchar(100),
   PRIMARY KEY (uniprotkb_A)
);

CREATE TABLE HPRD (
  HPRD_A INT,
  protein_accession_A VARCHAR(100),
  HPRD_B INT,
  protein_accession_B VARCHAR(100),
  cod SERIAL,
  PRIMARY KEY(cod)
) INHERITS (MASTER);

CREATE TABLE BioGrid(
  biogrid_A INT,
  biogrid_B INT,
  interaction_detection_method VARCHAR(50),
  publication_first_author VARCHAR(100),
  publication_year INT,
  interaction_type VARCHAR(50),
  publication_identifier INT,	
  interaction_identifier INT,
  cod SERIAL,
  PRIMARY KEY (cod)
)INHERITS (MASTER);

CREATE TABLE MINT(
 interaction_detection_method VARCHAR(50),
 publication_first_author VARCHAR(100),
 publication_year INT,
 interaction_type VARCHAR(50),
 publication_identifier INT,
 interaction_identifier VARCHAR(50),
 cod SERIAL,
 PRIMARY KEY (cod)
)INHERITS (MASTER);

CREATE TABLE INTACT(
 interaction_detection_method VARCHAR(50),
 publication_first_author VARCHAR(100),
 publication_year INT,
 interaction_type VARCHAR(50),
 publication_identifier INT,
 interaction_identifier VARCHAR(50),
 cod SERIAL,
 PRIMARY KEY(cod)
)INHERITS (MASTER);

CREATE TABLE RESEARCHER (
cod INT,
name VARCHAR(200),
purpose VARCHAR(200),
country VARCHAR(100),
institution VARCHAR(200),
state VARCHAR(100),
email VARCHAR(200),
PRIMARY KEY(cod));

CREATE TABLE TYPE (
cod INT PRIMARY KEY,
description VARCHAR(200));

CREATE TABLE CONTACT (
cod INT PRIMARY KEY,
cod_type INTEGER,
description VARCHAR(200));

CREATE TABLE SEARCH (
cod_researcher INTEGER,
uniprotkb_a VARCHAR(10),
FOREIGN KEY(cod_researcher) REFERENCES RESEARCHER (cod));

CREATE TABLE RESEARCHER_CONTACT (
cod_researcher INTEGER,
cod_contact INTEGER,
FOREIGN KEY(cod_contact) REFERENCES CONTACT (cod));

ALTER TABLE CONTACT ADD FOREIGN KEY(cod_type) REFERENCES TYPE (cod);
ALTER TABLE RESEARCHER_CONTACT ADD FOREIGN KEY(cod_researcher) REFERENCES RESEACHER (cod);

/* ---------------------------------------- */


INSERT INTO biogrid(uniprotkb_A,uniprotkb_B,biogridid_A,gene_symbol_A,biogrid_B,gene_symbol_B,interaction_detection_method,publication_first_author,publication_year,publication_identifier,interaction_identifier)
VALUES('P45985','Q14315',112315,'MAP2K4',108607,'FLNC','MI:0018','MartiA',1997,9006895,103),
('Q86TC9','P35609',124185,'MYPN',106603,'ACTN2','MI:0018','BangML',2001,11309420,117),
('Q04771','P49354',106605,'ACVR1',108625,'FNTA','MI:0018','Wang T',1996,8599089,183),
('P23769','P29590',108894,'GATA2',111384,'PML','MI:0018','Tsuzuki S',2000,10938104,278),
('P15927','P40763',112038,'RPA2',112651,'STAT3','MI:0018','Kim J' ,2000,10875894,418);


INSERT INTO mint(uniprotkb_A,uniprotkb_B,gene_symbol_A,gene_symbol_B,interaction_detection_method,publication_first_author,publication_year, publication_identifier, interaction_identifier)
VALUES('P55036','P54725','PSMD4','RAD23A','MI:0007','Hamazaki et al.' ,2006,9006895,103),
('P54727','P55036','RAD23B','PSMD4','MI:0007','Hamazaki et al.' ,2006,9006895,103),
('P60900','Q16186','PMSMA6','ADRM1','MI:0007','Hamazaki et al.',2006,9006895,103),
('Q13200','Q16186','PSMD2','ADRM1','MI:0007','Hamazaki et al.' ,2006,9006895,103),
('Q16186','P55036','ADRM1','PSMD4','MI:0007','Hamazaki et al.',2006,9006895,103);


INSERT INTO intact(uniprotkb_A,uniprotkb_B,gene_symbol_A,gene_symbol_B,interaction_detection_method,publication_first_author,publication_year, publication_identifier, interaction_identifier)
VALUES('P55036','P54725','PSMD4','RAD23A','MI:0007','Hamazaki et al.' ,2006,'EBI-1606211',103),
('P54727','P55036','RAD23B','PSMD4','MI:0007','Hamazaki et al.' ,2006,'EBI-1606211',103),
('P60900','Q16186','PMSMA6','ADRM1','MI:0007','Hamazaki et al.',2006,'EBI-1606211',103),
('Q13200','Q16186','PSMD2','ADRM1','MI:0007','Hamazaki et al.' ,2006,'EBI-1606211',103),
('Q16186','P55036','ADRM1','PSMD4','MI:0007','Hamazaki et al.',2006,'EBI-1606211',103);


INSERT INTO hprd(uniprotkb_a,uniprotkb_b,gene_symbol_A,hprd_A,protein_accession_A,gene_symbol_B,hprd_B,protein_accession_B)
VALUES ('P00352','P00352','ALDH1A1',1,'NP_000680.2','ALDH1A1',1,'NP_000680.2'),
('Q13683','P02708','ITGA7',2761,'NP_001138468.1','CHRNA1',7,'NP_001034612.1'),
('Q9ULJ8','P63261','PPP1R9A',16000,'NP_060120.2','ACTG1',17,'NP_001605.1'),
('P10124','P16070','SRGN',1513,'NP_002718.2','CD44',115,'NP_000601.3'),
('Q14451','P04626','GRB7',3311,'NP_005301.2','ERBB2',1281,'NP_004439.2');


INSERT INTO type(description)
VALUES ('email'),
('fone'),
('cellfone');


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
(3,'4444-4444');

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




