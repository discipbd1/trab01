select * from informacoes_comuns where uniprotkb = ' codigo uniprotkb' 


select pubmedid from biogrid where id in (
	select id from informacoes_comuns 
	where uniprotkb = ' codigo uniprotkb' 
	)

select info from mint where id in (
	select id from informacoes_comuns 
	where uniprotkb = ' codigo uniprotkb'
	)




select * from biogrid full join mint 
on(biogrid.uniprotkb=mint.uniprotkb)



select * from biogrid full join mint 
where uniprotkb = ' codigo uniprotkb' 



where uniprotkb = ' codigo uniprotkb' 
select info from mint where uniprotkb = ' codigo uniprotkb' 





select informacoes_comuns.uniprotkb from informacoes_comuns where informacoes_comuns.uniprotkb = ' codigo uniprotkb'

select * from biogrid union mint

delete from mint

create table informacoes_comuns(
         id int,
         nome varchar (150),
         uniprotkb varchar(40),
         primary key(id)
);
insert into biogrid values (1,'nome do gene',' codigo uniprotkb', 1245, 'dado pubmidid');

insert into biogrid values (2,'nome do gene 2',' codigo uniprotkb02', 45677, 'dado pubmidid');

insert into mint values (3,'nome do gene mint',' codigo uniprotkb', 789, 'info mint');

insert into mint values (4,'nome do gene mint',' codigo uniprotkb01', 25478, 'info mint');

insert into mint values (5,'nome do gene mint',' codigo uniprotkb', 789, 'info mint5');

insert into mint values (6,'nome do gene mint',' codigo uniprotkb01', 25478, 'info mint6');


create table biogrid(
         id_biogrid int,
         pubmedid varchar(50)
) inherits (informacoes_comuns);

create table mint(
         id_mint int,
         info varchar(50)
)inherits (informacoes_comuns);


SELECT pg_inherits.*, c.relname AS child, p.relname AS parent
FROM
    pg_inherits JOIN pg_class AS c ON (inhrelid=c.oid)
    JOIN pg_class as p ON (inhparent=p.oid);