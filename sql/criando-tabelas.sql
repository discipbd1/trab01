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
