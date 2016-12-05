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
