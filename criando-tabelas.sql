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
  PRIMARY KEY (HPRD_A)
) INHERITS (MASTER);

CREATE TABLE BioGrid(
  biogrid_A INT,
  biogrid_B INT,
  interaction_detection_method VARCHAR(50),
  publication_first_author VARCHAR(100),
  publication_year INT,
  publication_identifier INT,	
  interaction_identifier INT,
  PRIMARY KEY (biogrid_A)
)INHERITS (MASTER);

CREATE TABLE MINT(
 interaction_detection_method VARCHAR(50),
 publication_first_author VARCHAR(100),
 publication_year INT,
 intact_miscore FLOAT,
 mint_A SERIAL,
 PRIMARY KEY (mint_A)
)INHERITS (MASTER);

CREATE TABLE INTACT(
 interaction_detection_method VARCHAR(50),
 publication_first_author VARCHAR(100),
 publication_year INT,
 publication_identifier INT,
 interaction_identifier VARCHAR(50),
 confidence_value FLOAT,
 intact_A SERIAL,
 PRIMARY KEY(intact_A)
)INHERITS (MASTER);
