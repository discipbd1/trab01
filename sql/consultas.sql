/* JOIN */
SELECT  name, gene_symbol_a, gene_symbol_b FROM researcher 
INNER JOIN search ON(researcher.cod = search.cod_researcher)
INNER JOIN master ON(search.uniprotkb_a = master.uniprotkb_a)
ORDER BY name;

/* SUBCONSULTAS */

SELECT publication_first_author, publication_year FROM biogrid
WHERE publication_year IN (SELECT publication_year FROM biogrid WHERE publication_year>1900 AND publication_year<2002) LIMIT 100;

SELECT * FROM intact  WHERE interaction_detection_method 
IN (SELECT interaction_detection_method FROM intact WHERE interaction_detection_method > 'MI:0029' AND interaction_detection_method < 'MI:1100' ) LIMIT 100;

SELECT gene_symbol_a, gene_symbol_b FROM hprd WHERE gene_symbol_b 
IN (SELECT gene_symbol_b FROM hprd WHERE gene_symbol_b<>'ERBB2'); 

/* GROUP BY */

SELECT gene_symbol_a,COUNT(gene_symbol_b) AS qtd FROM biogrid
GROUP BY gene_symbol_a;

SELECT  uniprotkb_a,gene_symbol_a, gene_symbol_b FROM mint
GROUP BY uniprotkb_a, gene_symbol_b, gene_symbol_a;

SELECT publication_year,COUNT(publication_first_author) AS "qtd por ano" FROM intact
GROUP BY publication_year, publication_first_author;

SELECT gene_symbol_a, gene_symbol_b,publication_year,COUNT(publication_first_author) AS "qtd por ano" FROM intact
GROUP BY publication_year,gene_symbol_a, gene_symbol_b, publication_first_author;

SELECT gene_symbol_a, gene_symbol_b,publication_year,COUNT(publication_first_author) AS "qtd por ano" FROM MINT
GROUP BY publication_year,gene_symbol_a, gene_symbol_b, publication_first_author;

SELECT gene_symbol_a, gene_symbol_b,publication_year,COUNT(publication_first_author) AS "qtd por ano" FROM biogrid
GROUP BY publication_year,gene_symbol_a, gene_symbol_b, publication_first_author;


/* Atualizacao e Exclusao de dados */

UPDATE biogrid SET gene_symbol_a = 'Breast Cancer'
WHERE gene_symbol_a = 'BRCA1';

UPDATE mint SET interaction_detection_method = 'Molecular Interaction: 0018'
WHERE interaction_detection_method = 'MI:0018';

UPDATE biogrid SET gene_symbol_a = 'Tumor Protein 53'
WHERE gene_symbol_a = 'TP53' OR gene_symbol_b= 'TP53';

DELETE FROM intact WHERE gene_symbol_a= 'GATA2';

DELETE FROM biogrid WHERE gene_symbol_a= 'ERBB2';

DELETE FROM mint WHERE publication_year < 1997;

/* JUNCOES(TODAS) */
SELECT master.gene_symbol_a AS mA, master.gene_symbol_b AS mB,
mint.gene_symbol_a AS miA, mint.gene_symbol_b AS miB, intact.gene_symbol_a AS
intA, intact.gene_symbol_b AS intB, biogrid.gene_symbol_a AS bioA, biogrid.gene_symbol_b AS bioB,
hprd.gene_symbol_a AS hA, hprd.gene_symbol_b AS hB 
FROM master
LEFT JOIN mint ON(master.uniprotkb_a = mint.uniprotkb_a)
LEFT JOIN biogrid ON(master.uniprotkb_a = biogrid.uniprotkb_a)
LEFT JOIN HPRD ON(master.uniprotkb_a = HPRD.uniprotkb_a)
LEFT JOIN intact ON(master.uniprotkb_a = intact.uniprotkb_a)
ORDER BY master.gene_symbol_a LIMIT 10;

 
/* OPERADOR LIKE */

SELECT gene_symbol_a, gene_symbol_b FROM biogrid WHERE gene_symbol_a LIKE'A%';

SELECT gene_symbol_a, gene_symbol_b FROM mint WHERE gene_symbol_a LIKE'_____';

SELECT gene_symbol_a, gene_symbol_b FROM intact WHERE gene_symbol_a LIKE'%A%';

SELECT gene_symbol_a, gene_symbol_b FROM hprd WHERE gene_symbol_a LIKE'%A';

/* OPERADORES LOGICOS E ARITMETICOS */


SELECT gene_symbol_a, gene_symbol_b FROM biogrid WHERE gene_symbol_a LIKE'A%' AND gene_symbol_b LIKE'A%';

SELECT gene_symbol_a, gene_symbol_b FROM mint WHERE gene_symbol_a LIKE'_____' AND gene_symbol_b LIKE'_____';

SELECT gene_symbol_a, gene_symbol_b FROM intact WHERE gene_symbol_a LIKE'%A%' OR gene_symbol_b LIKE'%A%' ;

SELECT gene_symbol_a, gene_symbol_b FROM hprd WHERE gene_symbol_a LIKE'%A' OR gene_symbol_b LIKE'%A%';

SELECT publication_first_author,(2016 - publication_year) AS "qtd anos"  FROM biogrid;













