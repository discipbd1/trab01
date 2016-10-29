/*README: PARA EXECUTAR, SELECIONE O BLOCO OU LINHA QUE DESEJA E DEPOIS EXECUTE.*/


select uniprotkbid_b from master; /* Soh seleciona o uniprotkb para o gene B da master*/
select uniprotkbid_b from mint;  /* Soh seleciona o uniprotkb para o gene B do Mint */

/*------------------------------------------------------------------------------------*/
/* Esse bloco de codigo seleciona os ids do uniprotkb para o gene A e mostra 
   o gene symbol correspondente aquele id em todas as bases presentes;
   Ele ainda faz o left join, que é juntar, tendo como referencia o elemento da esquerda, 
   que no nosso caso eh a master, os dados que obedecem a condicao colocada dentro dos 
   parentes, isto eh, ON (master.uniprotkbid_a=mint.uniprotkbid_a).
*/
select master.uniprotkbid_a as codmaster, master.gene_symbol_a as mastergeneA,
mint.uniprotkbid_a as codmint, mint.gene_symbol_a as genemintA,
biogrid.uniprotkbid_a as codbio, biogrid.gene_symbol_a as genebioA,
intact.uniprotkbid_a as codintact, intact.gene_symbol_a as geneintA, 
hprd.uniprotkbid_a as codhprd, hprd.gene_symbol_a as genehprdA
from master left join mint
on (master.uniprotkbid_a=mint.uniprotkbid_a)
left join biogrid
on (master.uniprotkbid_a=biogrid.uniprotkbid_a)
left join intact
on (master.uniprotkbid_a=intact.uniprotkbid_a)
left join hprd
on (master.uniprotkbid_a=hprd.uniprotkbid_a);
/*-------------------------------------------*/

SELECT master.gene_symbol_a AS gene_A, master.gene_symbol_b AS gene_B,
mint.gene_symbol_a AS mgeneA, mint.gene_symbol_b AS mgeneB
FROM master
left join mint
on (master.gene_symbol_a=mint.gene_symbol_a);
