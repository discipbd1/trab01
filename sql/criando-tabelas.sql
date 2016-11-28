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











