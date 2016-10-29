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
