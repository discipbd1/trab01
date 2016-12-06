##Consultas das tabelas com todos os dados inseridos (Todas)<br>

    SELECT * FROM biogrid;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/biogrid-select.png) <br>

    SELECT * FROM hprd;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/hprd.png) <br>

    SELECT * FROM intact;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/intact.png) <br>

    SELECT * FROM mint;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/mint.png) <br>

    SELECT * FROM master; 
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/master.png) <br>

    SELECT * FROM contact;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/contact.png) <br>

    SELECT * FROM researcher;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/contact.png) <br>

    SELECT * FROM researcher_contact;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/researcher_contact.png) <br>

    SELECT * FROM search;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/search.png) <br>

    SELECT * FROM type;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/type.png) <br>

##Consultas das tabelas com filtros WHERE (Mínimo 3) <br>

    SELECT gene_symbol_a, gene_symbol_b FROM biogrid WHERE gene_symbol_a = 'MAP2K4';
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/biogrid-where.png) <br>

    SELECT gene_symbol_a, gene_symbol_b FROM intact WHERE gene_symbol_a = 'TP53';
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/intact-where.png) <br>

    SELECT gene_symbol_a, gene_symbol_b FROM mint WHERE gene_symbol_a = 'TP53';
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/mint-where.png) <br>

##Consultas que usam operadores lógicos, aritméticos e campos renomeados (Mínimo 2)

    SELECT gene_symbol_a AS "gene A", gene_symbol_b AS "gene B" FROM biogrid WHERE gene_symbol_a LIKE'A%' AND gene_symbol_b LIKE'A%';
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/like-biogrid.png) <br>

    SELECT gene_symbol_a AS "gene A", gene_symbol_b as "gene B" FROM mint WHERE gene_symbol_a LIKE'_____' AND gene_symbol_b LIKE'_____';
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/like-mint.png) <br>

    SELECT gene_symbol_a AS "gene A", gene_symbol_b AS "gene B" FROM intact WHERE gene_symbol_a LIKE'%A%' OR gene_symbol_b LIKE'%A%' ;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/like-intact.png) <br>

    SELECT gene_symbol_a AS "gene A", gene_symbol_b AS "gene B" FROM hprd WHERE gene_symbol_a LIKE'%A' OR gene_symbol_b LIKE'%A%';
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/like-hprd.png) <br>

    SELECT publication_first_author AS "Author",(2016 - publication_year) AS "publication time"  FROM biogrid;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/publication-time.png) <br>

##Consultas que usam operadores like (Mínimo 3)

    SELECT gene_symbol_a, gene_symbol_b FROM biogrid WHERE gene_symbol_a LIKE'A%';
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/biogrid-like.png) <br>

    SELECT gene_symbol_a, gene_symbol_b FROM mint WHERE gene_symbol_a LIKE'_____';
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/mint-like.png) <br>

    SELECT gene_symbol_a, gene_symbol_b FROM intact WHERE gene_symbol_a LIKE'%A%';
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/intact-like.png) <br>

    SELECT gene_symbol_a, gene_symbol_b FROM hprd WHERE gene_symbol_a LIKE'AOC%';
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/hprd-like.png) <br>

##Atualização e exclusão de dados (Mínimo 6)

    UPDATE biogrid SET gene_symbol_a = 'Breast Cancer' WHERE gene_symbol_a = 'BRCA1';
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/biogrid-update.png) <br>

    UPDATE mint SET interaction_detection_method = 'Molecular Interaction: 0018' WHERE interaction_detection_method = 'MI:0018';
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/mint-update.png) <br>

    UPDATE biogrid SET gene_symbol_a = 'Tumor Protein 53' WHERE gene_symbol_a = 'TP53' OR gene_symbol_b= 'TP53';
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/biogrid-update2.png) <br>

    DELETE FROM intact WHERE gene_symbol_a= 'GATA2';
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/intact-delete.png) <br>

    DELETE FROM biogrid WHERE gene_symbol_a= 'ERBB2';
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/biogrid-delete.png) <br>

    DELETE FROM mint WHERE publication_year < 1997;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/mint-delete.png) <br>

##Consultas com junção e ordenação (Todas junções)

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
    
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/all-join.png) <br>

    SELECT  name, gene_symbol_a, gene_symbol_b FROM researcher 
    INNER JOIN search ON(researcher.cod = search.cod_researcher)
    INNER JOIN master ON(search.uniprotkb_a = master.uniprotkb_a)
    ORDER BY name;

![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/researcher-join.png) <br>

##Consultas com GROUP BY (Mínimo 5)

    SELECT gene_symbol_a,COUNT(gene_symbol_b) AS qtd FROM biogrid
    GROUP BY gene_symbol_a;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/groupby-biogrid.png) <br>
    
    SELECT  uniprotkb_a,gene_symbol_a, gene_symbol_b FROM mint
    GROUP BY uniprotkb_a, gene_symbol_b, gene_symbol_a;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/groupby-mint.png) <br>

    SELECT publication_year,COUNT(publication_first_author) AS "qtd por ano" FROM intact
    GROUP BY publication_year, publication_first_author;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/groupby-intact.png) <br>

    SELECT gene_symbol_a, gene_symbol_b,publication_year,COUNT(publication_first_author) AS "qtd por ano" FROM intact
    GROUP BY publication_year,gene_symbol_a, gene_symbol_b, publication_first_author;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/groupby-intact2.png) <br>

    SELECT gene_symbol_a, gene_symbol_b,publication_year,COUNT(publication_first_author) AS "qtd por ano" FROM MINT
    GROUP BY publication_year,gene_symbol_a, gene_symbol_b, publication_first_author;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/groupby-mint2.png) <br>

    SELECT gene_symbol_a, gene_symbol_b,publication_year,COUNT(publication_first_author) AS "qtd por ano" FROM biogrid
    GROUP BY publication_year,gene_symbol_a, gene_symbol_b, publication_first_author;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/groupby-biogrid2.png) <br>


##Consultas com LEFT e RIGHT JOIN (Mínimo 4)

##Consultas com SELF JOIN e VIEW (Todas possíveis)

##Subconsultas (Mínimo 3)

    SELECT publication_first_author, publication_year FROM biogrid
    WHERE publication_year IN (SELECT publication_year FROM biogrid WHERE publication_year>1900 AND publication_year<2002) LIMIT 100;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/biogrid-sub.png) <br>

    SELECT * FROM intact  WHERE interaction_detection_method 
    IN (SELECT interaction_detection_method FROM intact WHERE interaction_detection_method > 'MI:0029' 
    AND interaction_detection_method < 'MI:1100' ) LIMIT 100;
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/intact-sub.png) <br>

    SELECT gene_symbol_a, gene_symbol_b FROM hprd WHERE gene_symbol_b 
    IN (SELECT gene_symbol_b FROM hprd WHERE gene_symbol_b<>'ERBB2'); 
![Alt text](https://github.com/annavicente/trab01/blob/desenvolvimento/Imagens/consultas/hprd-sub.png) <br>








